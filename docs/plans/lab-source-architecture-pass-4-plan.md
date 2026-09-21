# LAB SOURCE ARCHITECTURE — Pass 4 PLAN · harvest the source of record, and join the two instruments

**Status:** **`PAUSED` by human 2026-09-21. Manifest Reconciliation Pass 2 now certifies the foundation as `FOUNDATION SOUND WITH DATED ARTIFACTS`, but this experiment remains unexecuted and does not auto-resume.** Its premise has been corrected against the Pass-32 catalog/contract foundation; resumption requires an explicit post-foundation replan. **Station:** maps. **Base:** `6d7ceb2`.
**Prior:** [pass 1](lab-source-architecture-pass-1-plan.md) · [findings](lab-source-architecture-pass-1-findings.md) — the families and their fences.
[pass 2](lab-source-architecture-pass-2-plan.md) · [findings](lab-source-architecture-pass-2-findings.md) — the behavioral harvest.
[pass 3](lab-source-architecture-pass-3-plan.md) · [findings](lab-source-architecture-pass-3-findings.md) — the harness, and the cheat it first failed to catch.
**Implementation:** none. No `src/`, no Cargo, no build, no Core code. Layer III instruments only.
**Acceptance:** not sought. `docs/pointer-emission.md` stays unaccepted; the emission rule stays `[GAP]`.

**In one line, corrected by Manifest Reconciliation:** the only current candidates that do anything are `RootTouch` (**human ruling H1 with bounded D1 witness**) and `WeightByRepetition` (**an editor-derived replay proxy motivated by A5 repetition/pass accumulation**). Earlier prefix-device and relationship-evidence campaigns already performed bounded retention-adjacent readings of A10/B8/C7/D6; what has **not** been done is one exhaustive current-law 45-panel source-first harvest that consistently separates persistence, re-entry, discovery, retention, and materialization.

---

## 0. What pass 3 handed over, and the correction it needs

Pass 3 §8 left two directions and they are not equal.

> **item 1** — *"If a retention rule exists in this project it is in the research or platform families, or it is the human's to write."*
> **item 2** — *"Whether the graphics carry more retention machinery than the machine does is now a live question."*

**Item 1 names a place pass 1 already fenced.** The platform family's authority line in
[pass 1 findings §2](lab-source-architecture-pass-1-findings.md) reads, verbatim:

```
Authority:    executable primitives, target/toolchain facts, resource ceilings, physical feasibility.
Not granted:  missing Lace semantics or retention/materialization.
```

The platform family is **explicitly fenced off from exactly this question.** Wasm, WebGPU, WGSL, WebNN,
rustc and Cargo can say what a machine can execute; pass 1 ruled they cannot say what Lace keeps.
So item 1's "research or platform" is one family, not two. **That correction belongs in pass 4's record
whatever else the pass finds.**

**Item 2 names the source of record.** The graphics are not a clipboard family at all — they are the thing
the clipboards are clipboards *of*. `CLAUDE.md`: *"Source of record: `docs/graphics/` (four PNGs), then
`docs/systems-manifest.md`."* Nothing fences them, because they are not downstream of anything.

### The premise, available before any new work

| candidate | result in the instruments | provenance as the tools record it |
|---|---|---|
| `RootTouch` | retains 1 · scores 1/6 on D1 | ruling H1 · **witnessed D1 row `0004`** |
| `WeightByRepetition` | holds a replayable editor-derived count proxy | **A5 source fact: repetition strengthens/adds passage; integer weight is a test representation, not a PNG-defined field/rule** |
| `AftermathRecirculation` | discovers 34 · retains **0** | Coffee Cup L124 / L147 |
| `pointability` | 0/6 | Water L318 I-A1 |
| `ric_faithful` | 0/6 | HCC-A L33 RIC |
| `f5_reject` | 0/6 | Water L449 F5 |
| `f3_pair` | 0/6 | Water L438 F3 |
| `i_a2_sharedness` | 0/6 | Water L320 I-A2 |

**Five behavioral candidates from three machine sources produce nothing. One produces 34 discoveries and
keeps none. The only two candidates in the whole campaign that currently do anything are `RootTouch`
(**human H1; D1 row `0004` is a bounded witness**) and `WeightByRepetition` (**editor-derived proxy from
A5 repetition/pass accumulation**). Earlier graphics/prefix-device and relationship-evidence work already
examined retention-adjacent source surfaces, especially A10/B8/C7/D6, and explicitly kept the emit/retain
`when` open. **The missing work is narrower:** no single exhaustive current-law 45-panel harvest has tested
the source while keeping persistence, re-entry, discovery, retention, and materialization separate.

---

## Pause correction — Manifest Reconciliation Passes 1–2

This plan is **not executable as originally written** until it is replanned from the certified foundation.

Pass-32 distinctions are binding on any future replan:

```
persistence      != retention
re-entry         != materialization
Graphic-C 2D     != H7-H12 2D sampling
D1 state witness != universal selection/materialization rule
```

B8 strongly says an existing touch remains and may participate later. That is **SM-C12 persistence/re-entry**, not by itself SM-GAP-RM's missing sampled-evidence → retained POINTER rule.

Any future candidate must identify whether its executable representation is:
- directly SOURCE-stated;
- HUMAN-ruled;
- DERIVED from those authorities; or
- merely an editor/LAB proxy used to test an idea.

The latter may be useful, but it must not be reported as “the graphic's rule.”

---

## 1. Subject

**Read all 45 panels of the source of record for retention machinery, express what is stateable as
candidates, and judge them with both instruments at once.**

Panels in scope: **A1–A13** (13) · **B1–B12** (12) · **C1–C12** (12) · **D1–D6 + footer + key props** (8).

---

## 2. Thesis, stated so it can lose

> **Beyond source-established persistence/re-entry, the source of record carries at least one general
> retention/materialization condition that can be stated without importing an editor predicate: the
> resulting candidate can be expressed as `retain()`, survives replay, and agrees with the D1 oracle on
> more rows than `RootTouch`'s one.**

Three ways to lose: it retains nothing; it retains and fails replay; it retains, replays clean, and still
scores at most 1 on D1.

---

## 3. The instrument join — a column, not a new tool

The two instruments have never been run against one another.

```
   docs/plans/tools/lace-candidate-run.py        docs/plans/tools/lace-retention-harness.py
   the BENCH                                      the HARNESS
   rule(i, lace, roots) -> (a,b)|None             observe / discover / retain / state
   asks: does this rule reproduce D1's            asks: can this candidate's state be rebuilt
         six pointers?                                  from the strand alone?
                    \                            /
                     \                          /
                      +--  a retention rule  --+
                          must pass BOTH
```

Pass 4 adds an **oracle column** to the harness, reusing `docs/plans/fixtures/d1-golden-v0.1.0.json`.
Each candidate then reports:

```
candidate   provenance   disc   retain   replay   oracle
```

**No new fixture.** A second golden file would be a second store of the evidence, and the compression rule
does not stop applying because the thing being stored is a test.

---

## 4. The PNG check — no candidate from a transcription alone

The point of going to the graphics is to get **above** the clipboard layer. A rule read off
`graphic-a-ascii.md` is a rule read off a transcription, which is a clipboard of the source, not the source.

**Every panel that yields a candidate is checked against its PNG before the candidate runs.**

| letter | file | title as `docs/systems-manifest.md` names it |
|---|---|---|
| A | `docs/graphics/from-words-to-worlds.png` | The Lace Model in 3D: From Words to Worlds |
| B | `docs/graphics/mechanisms-in-3d.png` | Lace Mechanisms in 3D: How the Wire Actually Behaves |
| C | `docs/graphics/n-dimensional-relationships.png` | N-Dimensional Relationships in Lace |
| D | `docs/graphics/data-structure-1d-array.png` | Lace Data Structure: One 1D Array, Everything is Lace |

If the PNG does not show what the transcription says, **the candidate does not run and the disagreement is
the finding** — see `F4`. Neither reading is quietly preferred.

---

## 5. The new cheat — and why pass 3's cannot be reused

Pass 3 §8 item 3 made this standing: *"Every future instrument pass must ship a cheat and catch it."*

**Re-running `CheatingMemory` would prove nothing.** The repaired check was built against that exact shape —
a module-level accumulator, caught by **test A, determinism**, at index `0000`. A check that catches the one
cheat it was written for has been fitted, not tested.

**The obvious second cheat cannot be written, and that is itself a result.** A clairvoyant candidate reading
`lace[j]` for `j > i` would be deterministic and impure, so only **test B, prefix purity**, could catch it.
But `build()` and `sequence()` both call `observe(lace, i)` **before** appending entry `i`, so `lace` holds
exactly `i` entries and there is nothing after `i` to read. **Clairvoyance is prevented by construction
rather than detected.** Pass 4 states this and moves on; it does not count as a caught cheat.

### `SidecarMemory` — the cheat the oracle column creates

Adding the oracle column creates a **brand-new way to cheat that neither test can see**: a candidate that
retains rows by looking them up in something the strand did not produce.

- **Test A passes.** The lookup is constant, so both runs give identical state sequences.
- **Test B passes.** State at index `i` is a pure function of `i`, so every replayed prefix matches.
- **The oracle column reads 6/6.** A perfect score, obtained by reading the answers.

**If `SidecarMemory` scores 6/6 with a clean replay, the joined instrument cannot tell a rule from a lookup
table**, and that is pass 4's most important sentence — because the compression rule, as the campaign has
operationalised it, checks only that state is rebuildable *given the candidate's code*. **A candidate whose
code embeds the answers is invisible to it.**

**Pass 4 reports that hole. Pass 4 does not close it.** Inventing a code-inspection rule would be `F5`
firing inside the instrument built to prevent `F5`.

---

## 6. Falsifiers

| | fires when |
|---|---|
| **`F1`** | **The graphics carry no retention rule either.** Every graphics candidate discovers and retains nothing, or retains only through a predicate I supplied. Then the predicate is in neither the machine nor the source of record, and **it is the human's to write.** Report it as the result; **do not invent one** |
| **`F2`** | **The new cheat is not caught.** `SidecarMemory` passes replay and scores on the oracle. Then replay purity is **not** a sufficient executable form of the compression rule, and **the instrument is the finding** — as it was in pass 3 |
| **`F3`** | **The harvest returns only A5 and the D-row-`0004` touch.** The graphics are no richer than what the campaign already holds; pass 3 §8 item 2 is answered **no**, and the two working candidates were the whole graphics contribution |
| **`F4`** | **A transcription and its PNG disagree** on a panel carrying retention language. Then a graphics-derived claim in this tree rests on a reading the source does not support. Stop, mark it, report it, and prefer neither |
| **`F5`** | **I supply a threshold, weight or predicate the graphics do not name.** Pass 3's `F4`, standing. A harvest expresses; it must not decide. This is the risk of every pass that wants a non-zero number badly enough |

**`F5` is the one to watch.** Pass 4 goes looking for a retention rule with two instruments and a thesis that
wants one found. The pressure to round a silence up into a predicate has never been higher than it is here.

---

## 7. This pass must not

- **Not close the retention `[GAP]`.** `graphic-b-ascii.md:27` and `graphic-c-ascii.md:10` both record it open
  in the graphics' own voice: *"the exact condition that retains/materializes a sampled relation remains `[GAP]`."*
  A pass reporting it closed has invented.
- **Not add a second store — including a second fixture.** Reuse `d1-golden-v0.1.0.json`.
- **Not take the research family.** It is the one family left standing after §0's correction, and it is pass 5's.
- **Not take the platform family at all.** Pass 1 fenced it from retention/materialization; pass 4 records the
  fence, it does not test it.
- **Not add `src/`, run a build, install anything, or take a ruling.**
- **Not write math through an unquoted heredoc.** Pass 1's `\boxed{` became a literal backspace byte; this
  campaign writes math through a quoted delimiter or not at all.
- **Not re-report pass 3.** The four-row run is the baseline, not the product.

---

## 8. Accept pass 4 when

1. **All 45 panels** are read and published as a harvest table — panel ID → the text → stateable / not → reason.
2. **Every candidate's panel is checked against its PNG**, and the check is published per candidate.
3. The harness carries an **oracle column** and every candidate, old and new, reports `disc / retain / replay / oracle`.
4. **`SidecarMemory` is shipped and its result published** — caught or not caught, with the consequence stated.
5. **All five falsifiers are reported**, including the ones that did not fire.
6. §0's correction to pass 3 item 1 is on the record: **the platform family was already fenced.**
7. `pointer-emission.md`, `systems-manifest.md`, and every executed pass body are **byte-unchanged**.

---

## 9. Not this pass

The research family. The platform family. Cross-family comparison. **Answering the retention `[GAP]`** — pass 3
built the instrument that can ask; pass 4 asks the source of record; answering remains the human's.

---

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

**The dangerous pass is the one that goes looking for an answer with a scoreboard attached.** Pass 3's harness
could only report a zero. Pass 4 adds a column that can report a six — and the first thing that will score six
is a candidate that read the answers off a card in its pocket. **Ship that candidate first. If the instrument
cannot catch a lace that was tied in advance, it cannot tell you anything about a lace that was tied by a rule.**
