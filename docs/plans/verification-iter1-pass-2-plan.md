# Verification iteration 1, pass 2 — citations against the source

**Status:** `[PLAN]`. **2a EXECUTED**; 2b–2d NOT_RUN. **Station:** maps (for this file and its record only).
**Emission:** `[GAP]`. No `src/`.
**Iteration:** [verification iteration 1](verification-iteration-1-plan.md), pass 2 of six. Pass 1 is EXECUTED.

## 0. What pass 1 hands this pass

**Nothing mechanical.** Pass 1 measured the grep-visible surface at `810d200` and found zero genuine out-of-range panel cites — the one it had reported turned out to be the instrument's error. Every token a range check can flag has an owner.

What is left is the class pass 1 could not see: **both panels exist, both are in range, the sentence reads correctly, and the wrong one is named.** No script finds that. Only reading the picture does.

## 1. Feasibility, probed before it was planned

Pass 1's lesson was that a method nobody wrote down produces numbers nobody can defend. So the method here was tested before it was scoped. Two of the four PNGs were opened during planning:

- **Graphic D** (1536×1024) — all six panels legible, including the eleven-row table in D1: index, type, content/references and explanation, every row from `0000` to `0010`.
- **Graphic C** (1672×941) — all twelve panels legible, including every bullet under every panel.

**The source of record can be read directly.** That settles the one question that decides whether this pass is possible, and it fixes what "against the source" means: pass 2 checks documents **against the picture**, not against another document. Checking the manifest against the manifest proves nothing, and the manifest is one of the four documents under check.

## 2. The unit and the size

The adjudication unit is a **cite-bearing line**: one line of prose or one table row that names a panel and says something about it. Measured at `28bcaae`:

| Graphic | manifest | close reading | atomic map | reason model | **total** |
|---|---|---|---|---|---|
| **A** | 21 | 3 | 14 | 19 | **57** |
| **B** | 20 | 5 | 21 | 0 | **46** |
| **C** | 23 | 14 | 21 | 0 | **58** |
| **D** | 17 | 32 | 30 | 0 | **79** |
| | | | | | **240** |

All **43** panels that exist are cited by at least one of the four.

```bash
grep -cE '\b(A[1-9]|A1[0-3])\b' docs/systems-manifest.md   # and so on per graphic, per file
```

**On the number 241.** Four-document lines total 240, one off the first board's `241 panel cites in unambiguous context` — the figure pass 1 dropped as unreproducible. **This is a coincidence, not a recovery.** The 241 was tree-wide across 97 documents; the tree-wide count by this method is 1464. Written down so that the near-miss is not later mistaken for a found method.

## 3. Order of work: by graphic, not by document

Opening a PNG is the expensive step and a cite is cheap, so the pass is cut the other way from how the documents are filed. Four sub-passes, each opening one graphic and checking every cite to it across all four documents at once.

| Sub-pass | Graphic | Lines | Note |
|---|---|---|---|
| **2a** | D — the 1D array | 79 | **EXECUTED** — 79 of 79, both D1 transcriptions exact, three findings, no wrong-panel cite. [Record](verification-iter1-pass-2-findings.md) |
| **2b** | C — n-dimensional relationships | 58 | Already read once in planning |
| **2c** | A — from words to worlds | 57 | Not yet opened |
| **2d** | B — mechanisms in 3D | 46 | Not yet opened |

One commit per sub-pass. A sub-pass that runs long stops at a line boundary and says where it stopped; a half-read graphic reported as whole is the failure this iteration exists to catch.

## 4. Pass 2 writes nothing it reads

Measured, not assumed — `coord.sh which` on each of the four:

- `systems-manifest.md`, `graphics-close-reading.md` → **law**. The human-authored source area.
- `atomic-primitives-map.md`, `reason-model-map.md` → **maps** — but [the atomic construction plan](atomic-construction-pass-1-plan.md) has a planned, `NOT_RUN` pass whose stated product is a crosswalk **inside `atomic-primitives-map.md`**, and `Codex-atomic-pass2` has held the prompts station since 20:48Z.

**So all four documents are read-only for pass 2.** Findings land in one maps-owned record, `verification-iter1-pass-2-findings.md`, created by 2a. A correction to law-owned text is a proposal for the human. A correction to the atomic map is handed to that campaign, not taken from it.

This is not deference for its own sake. It means pass 2 can run start to finish while three other campaigns run, holding one claim on one file nobody else wants.

## 5. Verdict vocabulary

Pass 3's standard — evidence reported at its actual strength — applied one pass early, because a citation audit that grades everything "fine" is the same failure in a different costume.

| Verdict | Means |
|---|---|
| `MATCH` | The panel says it. The panel's own words are quoted in the record |
| `NEAR` | True of the graphic, but the panel named does not carry it. **The B10/B11 class.** The record names the panel that does |
| `WRONG` | The panel contradicts the claim |
| `UNSUPPORTED` | The panel is silent on it. A candidate `[GAP]`, never a repair |
| `DERIVED` | An inference from the panel. Legitimate when stamped `[INFERENCE]`; a finding when presented as a reading |

**No verdict without a quotation from the panel.** A line marked `MATCH` with no panel words behind it has not been checked, it has been assumed, and assuming is what put the `D7` finding on the board in the first place.

## 6. Calibration: one sample, taken during planning

`graphics-close-reading.md:154` says: `5D+ (C7)` … `a POINTER whose ref is a POINTER index (D6, rows 0007/0009/0010)`.

- **C7** reads "5D and beyond — Touches can participate in later touches", labelled "Relation among relations (5D+)". `MATCH`.
- **D6** shows the chain `0000` → `0002` → `0007` → `0010`. Row `0009` is not on that panel; it is in D1's table and again in D3. Read strictly, the cite is `NEAR`. Read charitably — "see D6, and rows 0007/0009/0010 of the array" — it is `MATCH`.

Kept as calibration rather than filed as a finding. **2a decides which reading the documents intend, and whichever it picks it applies to all 79 D-cites.** *(2a ruled: panel for the claim, rows as array addresses. See the record.)* Fixing the reading before starting the count is the whole point of taking a sample first; deciding it case by case is how an audit returns whatever its auditor already believed.

## 7. A carried instrument gap

Graphic **C5** labels its dimension planes `D1` `D2` `D3` `D4` `Dn`. That is a **third owner** for `D1`–`D4`, beside Graphic D's panels and the Rowlands clipboard sections that pass 1 registered. A document writing `D1` may mean a panel of Graphic D or a plane inside Graphic C5.

[The namespace register](../namespace-register.md) carries no row for it yet. **2b adds one if the reading confirms it** — which is the same shape of finding pass 1 closed, arriving from the opposite direction: pass 1 found a family by tracing a false positive back to its owner; this one was spotted by looking at the picture.

## 8. What pass 2 must not do

- **Not edit any of the four.** Read-only, all of them, whatever the finding.
- **Not close a `[GAP]`.** `UNSUPPORTED` means the panel is silent, and silence is the finding, not a hole to fill.
- **Not check a document against another document.** The picture is the source; a derived document agreeing with a derived document is not evidence.
- **Not count a line as checked without a panel quotation.**
- **Not take the atomic campaign's file**, however tempting a one-line repair looks.

## 9. Accept pass 2 when

All 240 cite-bearing lines carry a verdict with a panel quotation behind it; the four sub-passes are committed one per graphic; and the record states how many landed `MATCH`, `NEAR`, `WRONG`, `UNSUPPORTED` and `DERIVED`, with every `NEAR` and `WRONG` named by file and line so a station holder can act on it without re-deriving anything.

If a sub-pass cannot finish, the record says which lines were read and which were not. **Coverage is reported as a fraction, never implied as a whole.**

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Reading a citation against the picture is looking at the lace. Checking it against another document is asking someone who says they looked. Iteration 1 exists because the second one has been happening. Emission remains `[GAP]`.
