# LAB SOURCE ARCHITECTURE — Pass 3 findings · the harness, and what it heard

**Status:** **EXECUTED** 2026-09-21. **Station:** maps. **Plan:** [pass 3](lab-source-architecture-pass-3-plan.md).
**Implementation:** none. No `src/`, no Cargo, no runtime gate, no Core code. **Product is a Layer III instrument.**
**Acceptance:** ABSENT. `pointer-emission.md`, `systems-manifest.md` and every executed pass body byte-unchanged.
**Product:** [`tools/lace-retention-harness.py`](tools/lace-retention-harness.py). The pass-2 bench is untouched and still runs.

**Result in one line: the Coffee Cup, expressed faithfully, discovers 34 ephemeral structures and retains none — because it names that recirculation happens and never which passage recirculates.**

---

## 1. The run

```
candidate               provenance                          disc  retain   replay
RootTouch               ruling H1 · D1 row 0004                1       1            PASS
WeightByRepetition      graphics · A5 repetition               0       0            PASS
AftermathRecirculation  behavioral · Cup L124/L147            34       0            PASS
CheatingMemory          editor · deliberate second store       0       0  FAIL dete@0000
```

`disc` — ephemeral structure discovered · `retain` — what the candidate keeps as a row · `replay` — state rebuilt from the strand alone at every index.

## 2. `F2` FIRED, and the first version of this harness was the thing it caught

The plan demanded the check be **proven** rather than trusted: *"A check that cannot fail has measured nothing."*

**The first replay check passed the deliberate cheat.** `CheatingMemory` smuggles state into a module-level accumulator that outlives the instance — an unambiguous second store — and the harness returned `PASS`.

**Why.** The check compared a forward instance against a fresh instance **at the same moment**. Both read the same smuggled list, so the comparison was trivially equal. **The check could not fail, and I would have reported a clean run.**

**Repaired with two tests instead of one:**

| | |
|---|---|
| **A · determinism** | run the whole forward pass **twice from scratch** and compare the state sequences. State depending on anything outside the prefix diverges on the second run |
| **B · prefix purity** | **snapshot every forward state first**, then replay each prefix and compare against the snapshot — taken before the replay can contaminate what it is compared against |

**The repaired check catches the cheat at index `0000` on determinism.** The teeth are demonstrated, not asserted.

**This is the pass's most important line.** An instrument built to detect second stores shipped, in its first version, unable to detect the one deliberately placed in front of it.

## 3. The harness holds time, state and weight

```
observe(lace, i)              accumulate derived state
discover(lace, i)   -> [(a,b)]    ephemeral candidate structure
retain(lace, i, d)  -> (a,b)|None which, if any, becomes a row
state()             -> hashable   MUST survive replay
```

**The discovery/retention split is the gate's own distinction**, not an invention: the `[GAP]` asks *"when discovered structure becomes a retained POINTER."* The interface now has a place for each half, so the question can be asked mechanically for the first time.

**Time needed no round counter.** The Cup's *"narrative rewrites conditions"* is later entries participating in earlier ones — B8's *touch participates later*. A candidate seeing the whole prefix sees its own earlier output. **Recirculation is accretion**, and the prefix already holds it.

**`WeightByRepetition` is present only to prove the harness can hold a weight and replay it.** It discovers nothing; a weight is not a pointer. Its rule comes from **Graphic A5** — *"Repetition strengthens stars"* — **not from HCC-A**, which says weights exist and never how they are computed.

## 4. `F1` did not fire — and the thesis holds

> *Every retention mechanism the behavioral family names can be expressed as a candidate whose state is a pure function of the strand prefix — so no retention mechanism requires a second store.*

**Every legitimate candidate passes replay.** `RootTouch`'s root map, `WeightByRepetition`'s counts and `AftermathRecirculation`'s joined-set are all rebuilt from the strand alone at every index. **Nothing in the behavioral family needed a second store to hold its retention state.**

On the one axis the gate is still open on, **machine and substrate are compatible.**

## 5. The finding that outranks the thesis: fixing the instrument did not unblock the sources

Pass 2's `F3` said 19 of 32 mechanisms were unstateable and that this **indicts the instrument**. Pass 3 repaired the instrument. **Two of the four retention mechanisms still cannot be expressed — and now for a different reason.**

| Retention mechanism | Pass 2 | Pass 3, with time/state/weight available |
|---|---|---|
| **Cup L124 · L147** Aftermath / the Loop | not stateable | **expressible. Discovers 34, retains 0** — the source names *that* recirculation happens, never *which* passage does |
| **HCC-A L71** Meaning Engine weights | not stateable | **harness can hold a weight** — and HCC-A never says how one is computed. The weight that runs is **Graphic A5's**, not HCC-A's |
| **HCC-A L229** Pruning, three sites | not stateable | **still not expressible.** §4.3 names loss *sites* (`S0`/`S1`/`S3`–`S5`) and *levels* (low/medium/high). **Sites and levels are not a predicate** |
| **HCC-A L58** Story Ledger deletion | not stateable | **not expressible, and forbidden** — Lace does not delete |

**So the blocker was never only the instrument.** For two of four, **the source is silent on the rule itself.** That is a different failure from pass 2's, and it could not have been seen until the harness was good enough to fail for the other reason.

## 6. 34 discovered, 0 retained — the gap, measured

`AftermathRecirculation` is the most retention-shaped mechanism in the family, expressed faithfully:

- it **discovers** every join from the newest entry back to an entry that has itself been joined — **34 of them across eleven rows**;
- it **retains none**, because the Cup gives no predicate for which.

**That is the `[GAP]`, with a number on it.** Discovery is abundant and cheap. Retention is the whole question, and the source that comes closest to answering it does not.

**`F4` did not fire, and this is where it would have.** Supplying a retention predicate — *keep the most recent*, *keep above a weight* — would have produced a candidate that retained something and taught nothing. `retain()` returns `None` with the reason recorded in the code. **A harness expresses; it must not decide.**

## 7. Falsifiers

| | Result |
|---|---|
| **`F1`** a retention mechanism needs unrebuildable state | **did not fire.** All three legitimate candidates pass replay |
| **`F2`** the replay check never fails | **FIRED.** The first version passed the deliberate cheat. Repaired with two tests; now catches it at `0000` |
| **`F3`** signature fixed and mechanisms still unstateable | **FIRED, partly** — 2 of 4 remain unstateable, but **for source silence, not harness narrowness.** Pass 2's verdict was right about the instrument and incomplete about the cause |
| **`F4`** the harness supplies what the sources do not | **did not fire.** `retain()` returns `None` where the source names no predicate, and says so |

## 8. What pass 4 inherits

1. **The retention predicate is not in the behavioral family.** Three sources, and the closest thing to an answer discovers 34 and keeps none. **If a retention rule exists in this project it is in the research or platform families, or it is the human's to write.**
2. **`WeightByRepetition` runs on a graphics rule, not a machine rule.** The one working weight came from Graphic A5. Whether the graphics carry more retention machinery than the machine does is now a live question.
3. **Every future instrument pass must ship a cheat and catch it.** `F2` is not a one-off; it is the standing acceptance test for anything in `tools/`.

**Verdict: PASS 3 EXECUTED.** The harness holds time, state and weight; the replay check is proven against a deliberate second store it initially failed to catch; three candidates pass replay and one is caught; the thesis holds and is outranked by the discovery that two mechanisms are blocked by source silence rather than instrument narrowness. No `[GAP]` closed, no ruling taken, no `src/`, emission `[GAP]`.
