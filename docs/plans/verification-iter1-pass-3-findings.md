# Verification iteration 1, pass 3 — findings

**Status:** record. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Method:** [the pass 3 plan](verification-iter1-pass-3-plan.md). **Sources read-only.**
Measured at `0b97eec` — 289 tracked files, 216 markdown.

**Deviation from the plan, stated:** §4 said findings would land in the pass 2 record. They land here instead. Filing pass 3 inside a file named for pass 2 is the incoherence iteration 0 spent six phases undoing.

---

## The result in one line

**No document in this repository has ever recorded that something was established.**

Four tokens in the operating vocabulary assert a positive result. Counted across 216 markdown files, excluding the clause that defines them and the template that ships them:

| Token | What it would assert | Occurrences |
|---|---|---|
| `PROVED_WITHIN_SCOPE` | a proof, with its scope named | **0** |
| `VERIFIED_FOR_NAMED_PATH` | enforcement verified for a path | **0** |
| `HUMAN_REPORTED` | a human checked the physical cord | **0** |
| `PRESENT_FOR_EXACT_REVISION` | a human accepted this exact revision | **0** |

What *is* recorded, in the same vocabulary, in the same files:

| Token | Files |
|---|---|
| `ABSENT` (human acceptance) | 15 |
| `NOT_PERFORMED` | 12 |
| `VISUALLY_OBSERVED` | 7 |
| `NOT_RUN` | 6 |
| `UNESTABLISHED` | 6 |
| `NOT_TESTED` | 6 |

The tree is scrupulous in one direction. It has said "this was not done" more than fifty times and has never once said "this was established, and here is the scope."

That is not a defect to repair. **It is an accurate self-report**, and it is the strongest single piece of evidence that the `[GAP]` at pointer emission is real rather than procedural.

## 3a — the standard is doubled

`agent-control.md` prescribes two vocabularies for one job, twelve clauses apart, neither citing the other.

| | Clause | Tokens |
|---|---|---|
| **C01** — Establish the actual project state | line 414 | `HUMAN_REPORTED` · `VISUALLY_OBSERVED` · `NOT_PERFORMED` · `[BLOCKED]` |
| **C10** — Report evidence at its actual strength | line 530 | `NOT_TESTED` · `BLOCKED` · `OBSERVED` · `REFUTED` · `UNESTABLISHED` · `PROVED_WITHIN_SCOPE` |

They overlap without acknowledging it — C01's `VISUALLY_OBSERVED` against C10's `OBSERVED`, C01's `[BLOCKED]` against C10's `BLOCKED`. And a third token, **`NOT_RUN`, is in live use across 6 files and licensed by neither clause.**

### The four tokens unique to C10 have zero adoption

`PROVED_WITHIN_SCOPE`, `VERIFIED_FOR_NAMED_PATH`, `NOT_CHECKED` and `REFUTED` occur **only** inside the table that defines them. The sole other file carrying them is this iteration's own pass 3 plan, quoting them to make this point.

**C10 also mandates four independent fields.** Three documents out of 216 carry that shape at all.

## 3b — the mechanism, and it is one file

Adoption does not track the law. **It tracks `docs/kit/agent-task-template.md`**, the receipt every agent fills in.

The template's receipt block ships:

```text
PHYSICAL EVIDENCE: HUMAN_REPORTED / VISUALLY_OBSERVED / NOT_PERFORMED
HUMAN ACCEPTANCE: ABSENT / PRESENT_FOR_EXACT_REVISION / STALE_OR_UNCLEAR
OBSERVED CHECKS / FAILURES / NOT_RUN:
```

C01's grounding trio, C10's **Human acceptance** field verbatim, and `NOT_RUN` — the token no clause licenses. The template is where that third vocabulary comes from.

**C10's other three fields are on no line of the template.** Claim origin, Enforcement, and — the one this pass was convened about — **Evidence state**, the field that holds `PROVED_WITHIN_SCOPE`.

Every token the template omits has zero adoption. Every token adopted anywhere in the tree is on the template. **The template is the de-facto standard, it disagrees with C10, and it wins**, because agents fill in the form in front of them rather than reconcile two clauses of law.

This is worth stating plainly: the fix is a small edit to one kit file, not a campaign across 216 documents.

### The receipts themselves are sound

The documents that assert completed checks — `downstream-audit.md`, `coherence-audit-log.md`, `gearing-code-1to1.md`, `atomic-primitives-map.md` — were read for overstatement and **none was found.** The word "proves" in this tree is used mostly to *deny*:

- `gearing-code-1to1.md:270` — "A declared hit target proves selectability → **Refuted** by the original axle/B collision"
- `gearing-code-1to1.md:231` — "the third leg is a proposed name, so **none proves** an implemented three-way lock"
- `atomic-primitives-map.md:175` — "Completing emission alone proves the whole system executable" — listed as a **false friend**
- `downstream-audit.md:151` — "Passing these cases would demonstrate **only** observed behavior under those supplied contexts" — this sentence is what C10 asks for, written without C10's tokens
- `coherence-audit-log.md` — **zero** occurrences of the words

### One scope finding, inherited from 2a

`graphics-close-reading.md:14` stamps `VISUALLY_OBSERVED` for Graphic D, once, covering the document.

Pass 2a verified that stamp is **earned**: the eleven-row transcription is byte-identical to the panel. Pass 2a also found the document's one factual error about Graphic D — "panel labels … are not printed in the graphics", when the numbers are printed in every heading — and **that error is a visual claim, inside the scope the stamp appears to cover.**

C10 requires "the scope of the conclusion." A single grounding stamp at the head of a document is exactly the scope error the field was built to prevent: it was true of the transcription and not of every sentence downstream of it. **The finding is the stamp's reach, not the looking.**

## 3c — the modal cluster, and F5 confirmed

61 of the 173 claim-bearing lines sit in four rust documents about code that cannot exist yet. Every assertive-looking construction in them was read:

| Line | Reading |
|---|---|
| `branch-contracts.md:254, 324, 412, 477, 543` | "only after `X` is proven for its one task" — a **condition on birth order** |
| `branch-contracts.md:660` | "leaf is proved. Proof status: `UNESTABLISHED`." — claim word **paired with its evidence state** |
| `crate-map.md:128` | "Required, NOT_BUILT." |
| `crate-map-prompt.md:127` | inside the Implementation Law ASCII — **quoting the law** |

**Zero assertive proof claims. All 61 are `MODAL` or `QUOTING`.**

So [the rust second reading's F5](rust-nostd-second-reading.md) — *"proven has no evidence standard"* — is **CONFIRMED and narrowed**. The word is used correctly as a condition throughout; what is undefined is what would discharge it. F5 is a definitional gap, not a usage defect, and 3c adds nothing to it.

`branch-contracts.md:660` is the closest thing in the tree to correct C10 practice, and it got there without C10's vocabulary.

## Coverage

| Sub-pass | Scope | Read | Findings |
|---|---|---|---|
| 3a | the two clauses + token census, 216 files | complete | the doubling; `NOT_RUN` licensed by neither; zero C10-unique adoption |
| 3b | 4 receipt documents + the template | complete | the template is the mechanism; receipts sound; one scope finding |
| 3c | 61 lines, 4 rust documents | complete | none assertive; F5 confirmed |

**The 173 claim-bearing `proved`/`verified` lines were not individually verdicted.** 3a and 3c account for 61 of them and establish that the rest sit outside the field system entirely — they are prose, not records, and C10 governs records. Verdicting the remaining 112 as prose would measure writing style, not evidence strength. **Stated as a limit, not reported as coverage.**

## What pass 3 leaves for a human

1. **Which vocabulary governs, C01's or C10's?** They cannot both.
2. **Does `NOT_RUN` get licensed or replaced?** It is in 6 files and no clause.
3. **Does the task template gain C10's Evidence state line?** On this pass's evidence that single edit is what would change practice.
4. **Does a grounding stamp have a scope?** 2a's finding says an unscoped one over-reaches by the end of a long document.

None is pass 3's to decide. All four are kit edits to law-adjacent text, which is pass 5.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A tree that has recorded fifty times what it did not do, and never once what it proved, is telling the truth about where it stands. Emission remains `[GAP]`.
