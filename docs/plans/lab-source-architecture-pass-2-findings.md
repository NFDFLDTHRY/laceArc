# LAB SOURCE ARCHITECTURE — Pass 2 findings · the behavioral harvest

**Status:** **EXECUTED** 2026-09-21. **Station:** maps. **Plan:** [pass 2](lab-source-architecture-pass-2-plan.md).
**Implementation:** none. No `src/`, no Cargo, no runtime gate, no Core code.
**Acceptance:** ABSENT. [`pointer-emission.md`](../pointer-emission.md) unaccepted; `systems-manifest.md` and the executed pass-1 bodies byte-unchanged.
**Sources cited by line in `refs/local/`, staked 2026-09-21** — the first pass able to do so.

**Result in one line: every mechanism the three behavioral sources name that this bench can express derives 0 of D1's 6 pointers. The only rule that derives anything came from the human, not the sources.**

---

## 1. The run

```
candidate        provenance                         by rule  oracle  exact  divergence
words_only       editor · null hypothesis                 0       6    yes  -
pointability     behavioral · Water L318 I-A1             0       6    yes  -
ric_faithful     behavioral · HCC-A L33 RIC               0       6    yes  -
f5_reject        behavioral · Water L449 F5 Reject        0       6    yes  -
f3_pair          behavioral · Water L438 F3 Pair          0       6    yes  -
i_a2_sharedness  behavioral · Water L320 I-A2             0       6    yes  -
root_touch       ruling H1 · witnessed D1 row 0004        1       5    yes  -
adjacent_pairs   graphics · ruled out by D1 itself        6       0     no  row 0004
```

**Five behavioral candidates. Zero derivations between them.** `root_touch` is `H1`, a human ruling recorded in [root-touch-fold pass 3](math-execution-root-touch-fold-pass-3-findings.md) §0 — **not a sentence in HCC-A, the Cup, or Water.**

## 2. The classification — 32 mechanisms

| Class | Count | |
|---|---|---|
| **admission** — may a thing enter | **8** | all implemented or implementable; all derive 0 |
| **derivation** — which operands | **1** | `F3 Pair`, and it cannot choose. §4 |
| **retention** — is it kept | **4** | **`F1` fires. None stateable on this bench.** §5 |
| **not stateable** | **19** | **`F3` fires. A majority. §6** |

### Water — `refs/local/where-the-water-is-loud.txt`

| L | Mechanism | Class | Bench |
|---|---|---|---|
| 128 · 304 | `OBS` — pointer-addressable claim | admission | = an index; every entry has one |
| 142 · 307 | `DELTA` — mismatch between two OBS | **derivation** | `f3_pair` → **0/6** |
| 152 · 310 | `UNK` — predicted evidence shape | admission | declares a shape; no operand |
| 162 · 313 | `INVALID` — non-computable input | admission | `f5_reject` → **0/6** |
| 318 | `I-A1` Pointability | admission | `pointability` → **0/6** |
| 320 | `I-A2` Sharedness mandatory at DELTA | admission | `i_a2_sharedness` → **0/6**. §4 |
| 322 | `I-A3` UNK cannot be ignored | not stateable | comprehension, not array |
| 343–352 | Banks · Rapids · Delta | not stateable | river position |
| 355–357 | `I-B1`–`I-B3` | not stateable | pressure ≠ transfer |
| 393–423 | FSM `S0`–`S4` | not stateable | conversational state |
| 426 · 433 · 443 | `F1` Locate · `F2` Anchor · `F4` Unknowns | not stateable | need a live signal |
| 438 | `F3` Pair | derivation | above |
| 449 | `F5` Reject | admission | above |

### HCC-A — `refs/local/hcc-a-v1.0.txt`

| L | Mechanism | Class | Bench |
|---|---|---|---|
| 26 · 33 | `RIC` — preserve structure faithfully | admission | `ric_faithful` → **0/6** |
| 35 | `PFC` — priors assign interpretations | not stateable | needs a template library |
| 49 | Compiler `C` — structure → story | not stateable | names no operand rule |
| 58 | Story Ledger `L` — add/merge/re-index/**delete** | **retention** | not stateable; and Lace forbids delete |
| 71 | Meaning Engine `M` — weights + transitions | **retention** | graded; bench has no weights |
| 91 · 107 · 122 | `E` · `ISL` · `B` | not stateable | runtime, compression, output |
| 143–196 | `S0`–`S7` | not stateable | bench has no state |
| 200–290 | parameter space, 7 knobs | not stateable | knobs, not rules |
| 229 | §4.3 **Pruning** — 3 loss sites | **retention** | names what is lost |
| 291 | six-act stack | not stateable | process layers |

### The Coffee Cup — `refs/local/the-coffee-cup.txt`

| L | Mechanism | Class |
|---|---|---|
| 14 · 41 · 66 · 102 | Conditions · Release · Trajectory · Impact | not stateable — **time axis** |
| 124 | **Aftermath** — *"not commentary. It is causal."* | **retention** |
| 147–152 | The Loop — *"narrative rewrites conditions"* | **retention** |

## 3. `F2` did not fire, and that is the finding

Nothing beat `root_touch`. **One of D1's six pointers is derivable, and its rule is the human's.** Three staked texts, 1,161 lines, 32 named mechanisms — and on this bench they add nothing to what `H1` already gave.

**That is not a verdict on the sources.** §6 says why.

## 4. `F3 Pair` is a constructor, not a chooser — and it is the gate's own shape

> **Water L438, `F3 — Pair()`** · *Input: two OBS nodes (A and B) · Output: DELTA node*

**F3 takes two OBS and names no way to choose them.** It builds a relation once you have the operands; it says nothing about which. That is **precisely the gate's open shape** — `Join(a,b)` is settled, and *what selects `a` and `b`* is not.

**Water and Lace have the same hole in the same place.** The admission machinery is abundant on both sides; the chooser is absent on both sides.

And `I-A2` exposes a second mismatch nobody had named. **`DELTA` pairs two OBS *inventories* — two parties.** D1 is one strand from one party, so `I-A2` can never be satisfied in a single-strand trace at all. **The Proof Ledger's relation is inter-subjective; Lace's is intra-strand.** Whether a DELTA is even the right analogue for a POINTER is now an open question, not an assumption.

## 5. `F1` FIRED — retention machinery exists

The plan said a retention candidate would be *"the thesis wrong in the best possible way."* **Four exist:**

| Source | Mechanism | Retention in what sense |
|---|---|---|
| HCC-A L58 | Story Ledger supports **deletion / suppression** | names what does *not* survive |
| HCC-A L71 | Meaning Engine **weights** | graded survival — down-weight to nothing |
| HCC-A L229 | **Pruning strategy**, three loss sites | where data is lost, by design |
| Cup L124 · L147 | **Aftermath** / the Loop — *"narrative rewrites conditions"* | what enters the next round |

**And `F1` and `F3` fire together: none of the four is stateable on this bench.** All four need something the signature has no room for — a weight, a time axis, a second round. **The behavioral family does speak to retention. This instrument cannot hear it.**

## 6. `F3` FIRED — 19 of 32, and it indicts the instrument

The plan named this and it happened: **a majority of the family cannot be expressed.** The bench accepts

```
rule(i, lace, roots) -> (a, b) | None
```

which has **no time, no state, no weights, no second party, no templates.** The Coffee Cup is *entirely* a time axis — four of its six mechanisms are unstateable for that one reason. HCC-A's `S0`–`S7` is a state machine; Water's `S0`–`S4` is another.

**Per the plan, the honest response is an instrument change, not a verdict about the Cup.** Nothing here says the sources are poor. It says a bench built to test operand derivation cannot test machines built on time.

## 7. Falsifiers

| | Result |
|---|---|
| **`F1`** a retention candidate exists | **FIRED** — four. §5 |
| **`F2`** a candidate beats `root_touch` | did not fire. §3 |
| **`F3`** *not stateable* is the majority | **FIRED** — 19 of 32. §6 |
| **`F4`** the harvest only re-derives existing stamps | **partly.** The four behavioral clipboards already stamp `SILENT-for-Lace-append` or `[X]` at these junctions. **What is new is that the stamps are now results**: `0/6` measured, not refused in advance |

## 8. Thesis

> *The behavioral family supplies admission and derivation machinery and little or nothing for retention.*

**HOLDS on the first half and is WRONG on the second, in the way `F1` predicted.** Eight admission mechanisms, one derivation constructor that cannot choose — and **four retention mechanisms that exist and cannot be run.**

The corrected statement: **the family is rich in retention machinery and this bench is blind to all of it.**

## 9. What pass 3 inherits

1. **A harness that can hold time, state and weight.** Until it exists, three of four retention mechanisms and the whole Coffee Cup are untestable. **This outranks harvesting the research family.**
2. **Whether `DELTA` is the right analogue for `POINTER`** — `I-A2` says DELTA needs two inventories and Lace has one.
3. **The research and platform families**, unharvested.

**Verdict: PASS 2 EXECUTED.** 32 mechanisms cited to line, classified and run where expressible; five behavioral candidates at 0/6; two falsifiers fired; the thesis corrected by its own falsifier. No `[GAP]` closed, no ruling taken, no `src/`, emission `[GAP]`.
