#!/usr/bin/env python3
"""Retention harness: candidates that hold time, state and weight -- and a
replay check that refuses any state the strand cannot rebuild.

Host-side only. No network. No src/. Exit 0 if the run completes, 1 on a
fixture fault. Not Core and cannot become Core.

WHY THIS EXISTS. lace-candidate-run.py accepts rule(i, lace, roots) and has
no time, no state, no weight. Pass 2 found 19 of 32 behavioral mechanisms
unstateable in that signature and ruled that it indicts the instrument.

THE TRAP. A harness that lets candidates accumulate is one step from a
second store, and it would be the instrument-builder's step, taken inside
the tool meant to test for exactly that.

THE CHECK. The human's rule, 2026-09-21, recorded in law-why-these-documents:
"Compression is losing the evidence chain. A derived structure is permitted
when it can be discarded and rebuilt from the strand alone." That is
executable. The harness runs every candidate FORWARD, then REPLAYS from zero
at each index with a fresh instance, and compares state(). A mismatch is a
hard failure -- the candidate holds evidence the strand does not.

THE SHAPE. The gate's open [GAP] distinguishes discovered structure from
RETAINED structure. So does this interface:

    observe(lace, i)              accumulate derived state
    discover(lace, i)   -> [(a,b)]  ephemeral candidate structure
    retain(lace, i, d)  -> (a,b)|None   which, if any, becomes a row
    state()             -> hashable     MUST survive replay

WHAT THIS DOES NOT DO. It does not answer the retention gap, supply a
threshold, or elect a rule. A harness expresses; it must not decide.
"""
import json, sys, pathlib

FIX = pathlib.Path(__file__).resolve().parents[1] / "fixtures" / "d1-golden-v0.1.0.json"

# A module-level accumulator, here ONLY so the cheating candidate can reach
# for it and be caught. Nothing else touches it.
_SMUGGLED = []


class Candidate:
    """Default: stateless, discovers nothing, retains nothing."""
    provenance = "unset"
    def observe(self, lace, i): pass
    def discover(self, lace, i): return []
    def retain(self, lace, i, discovered): return None
    def state(self): return ()


# ---- candidates -------------------------------------------------------
class RootTouch(Candidate):
    """Ruling H1, witnessed D1 row 0004. Discovers one join, retains it."""
    provenance = "ruling H1 · D1 row 0004"
    def __init__(self): self.roots = {}
    def observe(self, lace, i):
        if i and lace[i-1]["type"] == "WORD":
            self.roots.setdefault(lace[i-1]["value"], lace[i-1]["index"])
    def discover(self, lace, i):
        if not i: return []
        p = lace[i-1]
        if p["type"] == "WORD":
            r = self.roots.get(p["value"])
            if r is not None and r != p["index"]: return [(p["index"], r)]
        return []
    def retain(self, lace, i, d): return d[0] if d else None
    def state(self): return tuple(sorted(self.roots.items()))


class WeightByRepetition(Candidate):
    """EDITOR-DERIVED TEST PROXY motivated by Graphic A5.

    A5 states that repetition strengthens/adds passage through a star. It does
    not define an integer weight field or counting rule. This candidate uses
    prefix occurrence count only to test whether the harness can hold and
    replay a derived accumulated-state proxy. It discovers nothing: a count is
    not a pointer and supplies no retention/materialization predicate."""
    provenance = "editor proxy · A5 repetition/pass accumulation"
    def __init__(self): self.w = {}
    def observe(self, lace, i):
        if i and lace[i-1]["type"] == "WORD":
            v = lace[i-1]["value"]; self.w[v] = self.w.get(v, 0) + 1
    def state(self): return tuple(sorted(self.w.items()))


class AftermathRecirculation(Candidate):
    """Coffee Cup L124/L147: 'Aftermath is causal. Narrative rewrites
    conditions.' Under append-only that is later entries participating in
    earlier ones -- B8's touch participates later. Recirculation is
    accretion, so it needs no round counter: the prefix already holds it.

    DISCOVERS every join from the newest entry back to an entry that has
    itself been joined. RETAINS none: the Cup names that recirculation
    happens and never which passage recirculates. The predicate is not in
    the source."""
    provenance = "behavioral · Cup L124/L147"
    def __init__(self): self.joined = set()
    def observe(self, lace, i):
        if i and lace[i-1]["type"] == "POINTER":
            self.joined.add(lace[i-1]["ref_A"]); self.joined.add(lace[i-1]["ref_B"])
    def discover(self, lace, i):
        return [(i-1, j) for j in sorted(self.joined)] if i else []
    def retain(self, lace, i, d): return None       # source names no predicate
    def state(self): return tuple(sorted(self.joined))


class CheatingMemory(Candidate):
    """DELIBERATE CHEAT. Accumulates into a module-level list that outlives
    the instance, so its state depends on how often the module has run and
    not on the prefix. The replay check must catch this. If it does not,
    the harness is the finding."""
    provenance = "editor · deliberate second store"
    def observe(self, lace, i): _SMUGGLED.append(i)
    def state(self): return tuple(_SMUGGLED)


CANDIDATES = [RootTouch, WeightByRepetition, AftermathRecirculation, CheatingMemory]


# ---- harness ----------------------------------------------------------
def build(cls, golden, words, upto=None):
    """Append-only build to index `upto` (or the whole golden)."""
    c = cls(); lace = []; wi = 0
    disc_total = ret_total = 0
    limit = len(golden) if upto is None else upto
    gi = {r["index"]: r for r in golden}
    while len(lace) < limit:
        i = len(lace)
        c.observe(lace, i)
        d = c.discover(lace, i); disc_total += len(d)
        if c.retain(lace, i, d) is not None: ret_total += 1
        want = gi[i]
        if want["type"] == "WORD":
            lace.append({"index": i, "type": "WORD", "value": words[wi]}); wi += 1
        else:
            lace.append({"index": i, "type": "POINTER",
                         "ref_A": want["ref_A"], "ref_B": want["ref_B"]})
    return c, disc_total, ret_total


def replay_check(cls, golden, words):
    """Two checks. The first version of this function had neither and passed
    a deliberate cheat -- recorded as F2 in the pass 3 findings.

    WHY THE FIRST VERSION FAILED. It compared a forward instance against a
    fresh instance AT THE SAME MOMENT. A candidate smuggling state into a
    shared module global has both instances reading the same list, so the
    comparison is trivially equal. The check could not fail.

    A. DETERMINISM. Run the whole forward pass twice from scratch and compare
       the state sequences. A candidate whose state depends on anything
       outside the prefix -- a shared accumulator, a call count across runs --
       gives a different sequence the second time.

    B. PREFIX PURITY. Snapshot every forward state FIRST, then replay each
       prefix and compare against the snapshot. The snapshot is taken before
       the replay can contaminate what it is compared to.
    """
    def sequence():
        c = cls(); lace = []; wi = 0; out = []
        gi = {r["index"]: r for r in golden}
        for i in range(len(golden)):
            c.observe(lace, i)
            out.append(c.state())
            want = gi[i]
            if want["type"] == "WORD":
                lace.append({"index": i, "type": "WORD", "value": words[wi]}); wi += 1
            else:
                lace.append({"index": i, "type": "POINTER",
                             "ref_A": want["ref_A"], "ref_B": want["ref_B"]})
        return out

    first = sequence()
    second = sequence()
    for i, (a, b) in enumerate(zip(first, second)):
        if a != b:
            return False, i, "determinism"

    for i in range(len(golden)):
        fresh, _, _ = build(cls, golden, words, upto=i)
        lace_i = []; wi = 0
        gi = {r["index"]: r for r in golden}
        for k in range(i):
            want = gi[k]
            if want["type"] == "WORD":
                lace_i.append({"index": k, "type": "WORD", "value": words[wi]}); wi += 1
            else:
                lace_i.append({"index": k, "type": "POINTER",
                               "ref_A": want["ref_A"], "ref_B": want["ref_B"]})
        fresh.observe(lace_i, i)
        if fresh.state() != first[i]:
            return False, i, "prefix purity"
    return True, None, None


def main():
    if not FIX.exists():
        print(f"FIXTURE MISSING: {FIX}", file=sys.stderr); return 1
    fx = json.loads(FIX.read_text())
    golden, words = fx["rows"], fx["word_stream"]

    print(f"fixture : {fx['fixture']} v{fx['version']}")
    print(f"stream  : {' '.join(words)}\n")
    print(f"{'candidate':<24}{'provenance':<34}{'disc':>6}{'retain':>8}{'replay':>9}")
    print("-" * 90)
    caught = []
    for cls in CANDIDATES:
        _SMUGGLED.clear()
        ok, at, why = replay_check(cls, golden, words)
        _SMUGGLED.clear()
        _, d, r = build(cls, golden, words)
        verdict = "PASS" if ok else f"FAIL {why[:4]}@{at:04d}"
        if not ok: caught.append(cls.__name__)
        print(f"{cls.__name__:<24}{cls.provenance:<34}{d:>6}{r:>8}{verdict:>16}")
    print("-" * 90)
    print(f"\nreplay failures: {len(caught)}  {caught if caught else ''}")
    print("disc   = ephemeral structure discovered")
    print("retain = discovered structure the candidate keeps as a row")
    print("replay = state rebuilt from the strand alone at every index")
    return 0


if __name__ == "__main__":
    sys.exit(main())
