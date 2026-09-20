# Verification — iteration 1

**Status:** **CLOSED.** Passes 1–4 and 6 EXECUTED; pass 5 is thirteen human rulings, recorded and open. [The receipt](verification-iteration-1-receipt.md) is pinned at `b6170bf`.
**Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Previous iteration:** [the restructure](restructure-plan.md), iteration 0, phases 0–6 complete but for `5-pre`.

## 0. What iteration 1 is

**Iteration 0 made the repository legible. It never asked whether what the documents say is true.**

Doors, owners, law copies, identifier families, orphans — all of that is form. A document can be perfectly filed, reachable from its shelf, owned by a station, and wrong about the graphic it cites. Nothing in iteration 0 would have noticed.

Iteration 1 is about **truth**: whether a claim matches its source, whether evidence is reported at its actual strength, and whether the verdicts already on record still hold.

## 1. The board, re-measured at `810d200`

Pass 1 was first written from a survey at `d7657c8`. Re-running it eleven commits later changed one number that mattered and falsified one sentence.

| | at `d7657c8` | at `810d200` |
|---|---|---|
| Tracked files / markdown | 220 / 150 | 228 / 156 |
| Commits in the last 24 hours | 331 | 342 |
| **Commits since the last coherence-audit tick** | 196 | **249** |
| Documents citing a graphic panel | 97 | 98 |
| **Out-of-range panel cites** | 1 — and it was the instrument's error, not the tree's | **0** |
| `proved` · `verified` | 42 · 23 | 45 · 28 |
| `NOT_PERFORMED` · `UNESTABLISHED` · `NOT_RUN` · `NOT_TESTED` | 16 · 19 · 6 · 8 | 17 · 20 · 7 · 9 |
| Orphans the hook reports | 1 | **9** |
| Doors short of their own shelf | 0 | **6** |

### How each number is got

```bash
git ls-files | wc -l                      # tracked files
git ls-files '*.md' | wc -l               # tracked markdown
git log --since='24 hours ago' --oneline | wc -l
git rev-list --count 33b7e79..HEAD        # since the last audit tick
git grep -lE '\b(A[1-9]|A1[0-3]|B[1-9]|B1[0-2]|C[1-9]|C1[0-2]|D[1-6])\b' -- '*.md' | wc -l
git grep -nE '\b(A1[4-9]|A[2-9][0-9]|B1[3-9]|B[2-9][0-9]|C1[3-9]|C[2-9][0-9]|D[7-9]|D[1-9][0-9])\b' -- '*.md'
.claude/hooks/check-docs.sh               # orphans, doors
```

The first board carried a figure of **241 "panel cites in unambiguous context"**. The filter that produced 241 was never written down, and this pass could not reproduce it, so the row is dropped rather than carried forward. That omission is not a footnote: it is what let the next number be wrong.

### The pass 1 finding, corrected by pass 1

The first board reported **one out-of-range panel cite** — `D7` at `docs/clipboards/rowlands-zero-to-infinity-mechanisms.md:89` — and guessed it was a typo for `D6`.

**It is neither out of range nor a typo.** `D7` there is section D7 of the Rowlands clipboard ("Constructive miniature, Shadow only"), defined at `docs/clipboards/rowlands-pass-2-plan.md:138` and carried into the clipboard at line 394. Read in place, the field says `D7 Shadow miniature` and means exactly that. Measured against the pinned tree — `git grep -ohE ... 810d200 -- '*.md'`, so the count does not move as this file is edited — there are **57** tokens that a range check flags, and every one of them has an owner:

| Token | Count | Family it actually belongs to |
|---|---|---|
| `D7` | 40 | Rowlands clipboard section — 39 inside `docs/clipboards/rowlands-*`, one here quoting the finding |
| `A14` | 15 | Coherence-audit station |
| `A17` | 1 | An Android-target stamp in a projection pass plan |
| `D10` | 1 | History document ID, the `D01`–`D10` run |

**Genuine out-of-range panel cites: zero.**

So the instrument produced one false positive and the tree produced no errors. The mechanical surface is not merely near its limit — **past this point the checker is the less reliable of the two**, and the correction had to come from reading the cited file, which is the method iteration 1 was convened to use.

### Why the instrument missed it

[The namespace register](../namespace-register.md) lists the families whose tokens collide. The Rowlands section family was not among them, so nothing warned that `D7` had an owner. Pass 1 added it, and adding it surfaced a second overstatement in the same file: the register said zero-padding means `C01`–`C12` "never collides with `C1`". True below ten. **`C10`, `C11` and `C12` carry no padding and are byte-identical to Graphic C panels `C10`–`C12`.**

Re-deriving the register's own headline from its own table also moved it: nineteen family rows, **41** tokens with two or more owners, 15 with three. It had said sixteen and 33, by a method that was never written down — the same failure as the 241.

### What falsified the other sentence

The first board said the iteration-0 checks "now report a clean tree." **Twelve commits later there are 9 orphans and six doors short of their shelves.** Nothing was reverted; new files simply landed without their indexes. Cleanliness held for about the length of one campaign pass. That is the datum pass 5 needs, and it was got for free by measuring twice.

Sharper still: between the first gate of this pass and its second, five minutes and five commits apart, the advisory count went **15 → 17**. The board stays pinned at `810d200` rather than chasing that — chasing it is the failure §3 forbids — but the rate is the finding. **Advisories accrue faster than a pass can close them, so nothing that only warns will ever come back to zero.**

## 2. The six passes

| Pass | Station | Question it answers |
|---|---|---|
| **1** | maps | What is checkable, what has been checked, and where the stale line falls. **This document. EXECUTED — and it overturned its own first finding.** |
| **2** | per-document | Do the load-bearing citations match their source? Read, not grep — the `B10`/`B11` class. Scope: the documents other documents depend on most — manifest, close reading, atomic map, reason model. **Pass 1 leaves it nothing mechanical to inherit: the grep-visible count is zero.** |
| **3** | per-document | Is every `proved` and `verified` claim reported at its actual strength? C10 requires it; 65 such words are in the tree against 49 explicit not-done markers. |
| **4** | maps + prompts | The 18 audit ticks are `ok` against a tree 196 commits gone. Either re-walk, or date the log's verdicts the way `downstream-audit.md` dates its findings — frozen claim, live status elsewhere. **Coordinate first: that campaign is another agent's.** |
| **5** | kit + coord — **human** | Enforcement. Doors drifted within eight minutes of iteration 0 closing. Does check 8 gate? Also the check-5 quotation gap, dodged three times. |
| **6** | maps | Receipt: what iteration 1 established, what it could not, and the board for iteration 2. |

## 3. What this iteration must not do

- **Not fill `[GAP]`.** Verifying a citation is not answering pointer-emission, and a tidy verification record is not evidence that Core may begin.
- **Not rewrite a dated artefact to make it current.** The `downstream-audit.md` model stands: freeze the claim at its pin, put live status in the append-only log.
- **Not take another agent's campaign.** Pass 4 touches the coherence audit; it is coordinated or it is reported, not seized.
- **Not confuse a clean check for a true document.** That confusion is the entire reason this iteration exists.

## 4. Accept iteration 1 when

Every load-bearing citation in the four most-depended-on documents has been read against its source and marked correct or corrected; every `proved`/`verified` claim carries evidence at its stated strength or is downgraded; the audit log's stale verdicts are dated or re-walked; and the board for iteration 2 is written from measurement rather than recollection.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A filed, reachable, well-named document can still be wrong about the cord. Iteration 0 put everything on a shelf. Iteration 1 reads it. Emission remains `[GAP]`.
