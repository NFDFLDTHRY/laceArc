#!/usr/bin/env python3
"""Retention harness for bounded SM-GAP-RM experiments.

Host-side only. No network. No src/. Not Core and cannot become Core.

Manifest Reconciliation Pass 4 changes the reporting contract:
- candidate authority is separate from score;
- RM-A retain / RM-B materialize / RM-C role-order coverage is explicit;
- replay legality is separate from D1 oracle independence;
- D1 scoring counts TP/FN/FP plus pair/order and event/index mismatches;
- a perfect expected-row score cannot hide invented retention events;
- SidecarMemory is a permanent ORACLE-CHEAT adversarial control.

The harness still does NOT answer SM-GAP-RM, supply a threshold, or elect a
rule. A harness expresses and refutes; architectural adoption is elsewhere.
"""
import json, sys, pathlib

FIX = pathlib.Path(__file__).resolve().parents[1] / "fixtures" / "d1-golden-v0.1.0.json"

# Deliberate second-store surface used only by CheatingMemory.
_SMUGGLED = []

class Candidate:
    provenance = "unset"
    authority = "[LAB-PROXY]"
    rm_a = "-"
    rm_b = "-"
    rm_c = "-"
    oracle_class = "D1-BLIND"
    admission = "CANDIDATE"

    def observe(self, lace, i):
        pass

    def discover(self, lace, i):
        return []

    def retain(self, lace, i, discovered):
        return None

    def state(self):
        return ()


class RootTouch(Candidate):
    """Human-ruled closed special case, witnessed by D1 row 0004.

    It is calibration for the instrument, not a general SM-GAP-RM candidate.
    H1/H4 fix both the trigger (seen occurrence) and operand roles
    (new occurrence, existing root). Operands are already addressable WORDs.
    """
    provenance = "H1/H4 · bounded D1 witness row 0004"
    authority = "[HUMAN]"
    rm_a = "special"
    rm_b = "-"
    rm_c = "special"
    oracle_class = "D1-WITNESSED"
    admission = "CALIBRATION"

    def __init__(self):
        self.roots = {}

    def observe(self, lace, i):
        if i and lace[i - 1]["type"] == "WORD":
            p = lace[i - 1]
            self.roots.setdefault(p["value"], p["index"])

    def discover(self, lace, i):
        if not i:
            return []
        p = lace[i - 1]
        if p["type"] == "WORD":
            r = self.roots.get(p["value"])
            if r is not None and r != p["index"]:
                return [(p["index"], r)]
        return []

    def retain(self, lace, i, discovered):
        return discovered[0] if discovered else None

    def state(self):
        return tuple(sorted(self.roots.items()))


class WeightByRepetition(Candidate):
    """Editor-derived replay proxy motivated by Graphic A5.

    A5 states repetition strengthens/adds passage through a star. It does not
    define an integer weight or a retention predicate. Counting occurrences
    exists only to test replayable accumulated working state.
    """
    provenance = "editor proxy · A5 repetition/pass accumulation"
    authority = "[LAB-PROXY]"
    rm_a = "-"
    rm_b = "-"
    rm_c = "-"
    oracle_class = "D1-SCHEMA-ONLY"
    admission = "INSTRUMENT-PROXY"

    def __init__(self):
        self.w = {}

    def observe(self, lace, i):
        if i and lace[i - 1]["type"] == "WORD":
            v = lace[i - 1]["value"]
            self.w[v] = self.w.get(v, 0) + 1

    def state(self):
        return tuple(sorted(self.w.items()))


class AftermathRecirculation(Candidate):
    """Behavioral candidate from Coffee Cup L124/L147.

    The source supports later causal recirculation/participation, so this
    candidate discovers possible joins from the newest entry back to entries
    already involved in joins. It retains none because the source supplies no
    RM-A predicate saying which discovered passage must become Lace.
    """
    provenance = "behavioral · Coffee Cup L124/L147"
    authority = "[EXTERNAL-CANDIDATE]"
    rm_a = "silent"
    rm_b = "-"
    rm_c = "-"
    oracle_class = "D1-BLIND"
    admission = "CANDIDATE"

    def __init__(self):
        self.joined = set()

    def observe(self, lace, i):
        if i and lace[i - 1]["type"] == "POINTER":
            p = lace[i - 1]
            self.joined.add(p["ref_A"])
            self.joined.add(p["ref_B"])

    def discover(self, lace, i):
        return [(i - 1, j) for j in sorted(self.joined)] if i else []

    def retain(self, lace, i, discovered):
        return None

    def state(self):
        return tuple(sorted(self.joined))


class CheatingMemory(Candidate):
    """Deliberate second-store control. Replay MUST catch this."""

    provenance = "editor · deliberate module-global second store"
    authority = "[ADVERSARIAL-CONTROL]"
    oracle_class = "D1-BLIND"
    admission = "REJECT"

    def observe(self, lace, i):
        _SMUGGLED.append(i)

    def state(self):
        return tuple(_SMUGGLED)


class SidecarMemory(Candidate):
    """Permanent oracle-cheat control.

    The six D1 answers are embedded directly in candidate code. The candidate
    is deterministic and prefix-pure because retain(i) is a pure lookup. It
    should therefore pass replay and score perfectly, while remaining
    inadmissible because its evidence provenance is ORACLE-CHEAT.
    """

    provenance = "editor · embedded D1 answer sidecar"
    authority = "[ADVERSARIAL-CONTROL]"
    oracle_class = "ORACLE-CHEAT"
    admission = "REJECT"

    ANSWERS = {
        2: (0, 1),
        4: (3, 0),
        6: (3, 5),
        7: (6, 4),
        9: (8, 7),
        10: (9, 2),
    }

    def retain(self, lace, i, discovered):
        return self.ANSWERS.get(i)


CANDIDATES = [
    RootTouch,
    WeightByRepetition,
    AftermathRecirculation,
    CheatingMemory,
    SidecarMemory,
]


def run_candidate(cls, golden, words, upto=None):
    """Run against the existing D1 prefix while recording candidate proposals.

    Golden rows supply the bounded environment so indices remain comparable;
    candidate proposals never modify the golden fixture and never become Core.
    """
    c = cls()
    lace = []
    wi = 0
    disc_total = 0
    proposals = {}
    limit = len(golden) if upto is None else upto
    gi = {r["index"]: r for r in golden}

    while len(lace) < limit:
        i = len(lace)
        c.observe(lace, i)
        discovered = c.discover(lace, i)
        disc_total += len(discovered)
        retained = c.retain(lace, i, discovered)
        if retained is not None:
            proposals[i] = tuple(retained)

        want = gi[i]
        if want["type"] == "WORD":
            lace.append({"index": i, "type": "WORD", "value": words[wi]})
            wi += 1
        else:
            lace.append({
                "index": i,
                "type": "POINTER",
                "ref_A": want["ref_A"],
                "ref_B": want["ref_B"],
            })

    return c, disc_total, proposals


def replay_check(cls, golden, words):
    """Determinism + prefix-purity check for derived candidate state."""

    def sequence():
        c = cls()
        lace = []
        wi = 0
        out = []
        gi = {r["index"]: r for r in golden}
        for i in range(len(golden)):
            c.observe(lace, i)
            out.append(c.state())
            want = gi[i]
            if want["type"] == "WORD":
                lace.append({"index": i, "type": "WORD", "value": words[wi]})
                wi += 1
            else:
                lace.append({
                    "index": i,
                    "type": "POINTER",
                    "ref_A": want["ref_A"],
                    "ref_B": want["ref_B"],
                })
        return out

    first = sequence()
    second = sequence()

    for i, (a, b) in enumerate(zip(first, second)):
        if a != b:
            return False, i, "determinism"

    gi = {r["index"]: r for r in golden}
    for i in range(len(golden)):
        fresh, _, _ = run_candidate(cls, golden, words, upto=i)

        lace_i = []
        wi = 0
        for k in range(i):
            want = gi[k]
            if want["type"] == "WORD":
                lace_i.append({"index": k, "type": "WORD", "value": words[wi]})
                wi += 1
            else:
                lace_i.append({
                    "index": k,
                    "type": "POINTER",
                    "ref_A": want["ref_A"],
                    "ref_B": want["ref_B"],
                })

        fresh.observe(lace_i, i)
        if fresh.state() != first[i]:
            return False, i, "prefix purity"

    return True, None, None


def score(proposals, golden):
    """Count exact expected events, misses, inventions and mismatches.

    Wrong ordered pair at an expected POINTER index is a pair mismatch.
    A proposal at a non-POINTER index is both an FP and an event/index
    mismatch. Missing expected event is an FN.
    """
    expected = {
        r["index"]: (r["ref_A"], r["ref_B"])
        for r in golden
        if r["type"] == "POINTER"
    }

    tp = fn = fp = pair = event = 0

    for i in range(len(golden)):
        e = expected.get(i)
        p = proposals.get(i)

        if e is None and p is None:
            continue
        if e is None and p is not None:
            fp += 1
            event += 1
            continue
        if e is not None and p is None:
            fn += 1
            continue
        if p == e:
            tp += 1
        else:
            pair += 1

    return {
        "tp": tp,
        "fn": fn,
        "fp": fp,
        "pair": pair,
        "event": event,
    }


def main():
    if not FIX.exists():
        print(f"FIXTURE MISSING: {FIX}", file=sys.stderr)
        return 1

    fx = json.loads(FIX.read_text())
    golden, words = fx["rows"], fx["word_stream"]

    print(f"fixture : {fx['fixture']} v{fx['version']}")
    print(f"stream  : {' '.join(words)}")
    print("metric  : TP/FN/FP + pair/order + event/index; score never changes authority\n")

    header = (
        f"{'candidate':<23}"
        f"{'authority':<22}"
        f"{'RM-A':<9}{'RM-B':<9}{'RM-C':<9}"
        f"{'oracle':<16}"
        f"{'disc':>6}{'ret':>6}"
        f"{'TP':>4}{'FN':>4}{'FP':>4}{'pair':>6}{'event':>7}"
        f"{'replay':>18}{'admission':>14}"
    )
    print(header)
    print("-" * len(header))

    for cls in CANDIDATES:
        _SMUGGLED.clear()
        ok, at, why = replay_check(cls, golden, words)

        _SMUGGLED.clear()
        _, disc, proposals = run_candidate(cls, golden, words)
        sc = score(proposals, golden)

        replay = "PASS" if ok else f"FAIL {why[:4]}@{at:04d}"

        print(
            f"{cls.__name__:<23}"
            f"{cls.authority:<22}"
            f"{cls.rm_a:<9}{cls.rm_b:<9}{cls.rm_c:<9}"
            f"{cls.oracle_class:<16}"
            f"{disc:>6}{len(proposals):>6}"
            f"{sc['tp']:>4}{sc['fn']:>4}{sc['fp']:>4}"
            f"{sc['pair']:>6}{sc['event']:>7}"
            f"{replay:>18}{cls.admission:>14}"
        )

    print("-" * len(header))
    print("\nTP    = expected retained event with exact ordered pair at exact D1 index")
    print("FN    = expected D1 retained event missing")
    print("FP    = candidate retained at a D1 index with no expected POINTER")
    print("pair  = event index matches but ordered pair differs")
    print("event = retained event occurred at a non-POINTER D1 index")
    print("replay tests derived-state legality; oracle class reports evidence independence")
    return 0


if __name__ == "__main__":
    sys.exit(main())
