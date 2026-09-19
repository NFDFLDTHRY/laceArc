# How a verification iteration is shaped

**Status:** the cadence is **practice**, held across three iterations and written down here for the first time. The rules in §3 are measured from what happened, not proposed.
**Station:** maps. **Emission:** `[GAP]`. No `src/`. Pinned at `77ae5de`.

Every iteration plan so far has re-invented this table. **Six passes, fixed roles.**

## 1. The six passes

| Pass | Role | Station |
|---|---|---|
| **1** | **The board.** Measure the tree, state the iteration's thesis, and say what would falsify it | maps |
| **2–4** | **The work.** One question each, probed before it is scoped | wherever the subject lives — **read-only on stations this campaign does not hold** |
| **5** | **The rulings.** Enforcement, law, and anything a station cannot decide alone. **Human.** Measurement is prepared; the ruling is not taken | brief written by maps |
| **6** | **The receipt.** Coverage as fractions, what was established, what could not be, and the board for the next iteration | maps |

**Pass 5 is never executed by the agent that wrote it.** Twice now a pass has referred a decision upward and then been tempted to take it back; both times the refusal is in the record.

## 2. The cadence

**Plan pass N → Proceed pass N → Commit pass N.** Three turns, one pass.

Each commit: `pull --ff-only` → `which` → `claim` → edit only owned paths → `gate` → commit → push → `release`. **One station per commit.**

## 3. The rules, measured rather than proposed

| Rule | Where it was learned |
|---|---|
| **Probe before you scope.** Test the method on the real thing before writing the plan around it | Iteration 1 pass 2 opened a PNG before scoping 240 citations; iteration 2 pass 5 found there was no enforcement path at all |
| **State the thesis so it can lose**, and make the receipt say whether it did | Iteration 2's thesis lost in its own pass 1 and gained a fourth mode |
| **Coverage is a fraction, never implied whole** | Iteration 1 pass 3 verdicted 61 of 173 and said so in the receipt |
| **A count that dissolves on reading is the finding** | Four times in iteration 1, seven times across the session |
| **Correct in the open.** A wrong number is replaced with the correction attached, never deleted | The register's stale "50 files"; the receipt's "28 SHAs" |
| **Findings into a maps-owned record**, never an edit to another campaign's file | Established by iteration 1 pass 2a, precedent since |
| **Name your own tooling failures.** They are evidence | Six in iteration 2, seven by iteration 3 pass 1, every one the author's |

## 4. The regularity worth planning around

**Pass 1 has been written twice, every time. Three for three.**

| Iteration | First cut | What completing it changed |
|---|---|---|
| **1** | board measured at one pin | re-measuring overturned its own headline finding — 1 out-of-range cite became 0 |
| **2** | audited 2 instruments of 9 | found F7, the tree's worst instrument, and the thesis gained a mode |
| **3** | counted one form of citation | found that rot lives where the checker cannot look, and that the pin census cannot be taken by regex |
| **4** | premise false in three of four working passes | **ten self-corrections inside one iteration** — the pass 4 thesis lost to a falsifier written for it in its own plan |

**Every time, the first cut measured too little and the correction changed the conclusion.** Plan for it: pass 1's `Proceed` turn is not a formality.

## 5. What is *not* prescribed

**The subject of an iteration comes from the previous receipt**, not from this document.

| | Subject | Source of the subject |
|---|---|---|
| **0** | [the restructure](restructure-plan.md) — legibility | the human. **Nine phases, not six**; the shape settled afterwards |
| **1** | [truth](verification-iteration-1-receipt.md) — do the documents match the source? | iteration 0 made the tree legible and never asked |
| **2** | [the instruments](verification-iteration-2-receipt.md) — do the tools measure what they claim? | iteration 1 found the documents sound and the ruler bent, four times |
| **3** | [what rots](verification-iteration-3-receipt.md) — CLOSED | iteration 2's receipt named E5 the largest unowned thing |
| **4** | [the state of the tree](verification-iteration-4-receipt.md) — CLOSED | the human, when iteration 3's receipt asked whether anything still needed measuring |

## 6. Where things stand

**The campaign is closed.** [Iteration 4's receipt](verification-iteration-4-receipt.md) recommends no iteration 5 **as a measuring campaign**, and the reason is in the table above: four iterations each ended by finding the *instrument* wrong rather than the tree, and the fourth spent ten of its seventeen corrections on itself. **That is a campaign that has run out of things to be wrong about.**

**What this document still governs:** if a sixth-pass cadence is convened again, it takes this form. The form is not retired — the subject is exhausted.

**What is left is not a survey.** Six human rulings, one structural question about the station model — a campaign whose output lands on shelves it does not own has no door — and [a decay baseline](verification-iteration-4-receipt.md) whose whole purpose is that nobody has to convene anything to read it.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Three iterations used this shape without it being written anywhere, each plan copying the last by hand. **That is the same defect this programme keeps finding in everything else** — a rule that operates without being stated. Emission remains `[GAP]`.
