# Verification iteration 2 — the instruments

**Status:** `[PROPOSAL]`. **Pass 1 EXECUTED** at `9d27286`; passes 2–6 NOT_RUN.
**Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Previous:** [iteration 1](verification-iteration-1-plan.md), CLOSED — [its receipt](verification-iteration-1-receipt.md). Iteration 0 was [the restructure](restructure-plan.md).

## 0. What iteration 2 is, and why it is not invented

Iteration 0 made the repository legible. Iteration 1 asked whether what the documents say is true — and answered it: across 240 citations checked against the pictures, **not one named the wrong panel**, and both transcriptions of the only numeric evidence in the project are byte-identical to the source.

But iteration 1 found something four times over, which its receipt records:

| Count | By script | After reading |
|---|---|---|
| Out-of-range panel cites | 1 | **0** |
| "Panel cites in unambiguous context" | 241 | **unreproducible** |
| Modal vs assertive proof claims | — | **grep explains 21%** |
| Graphic A cites in the reason model | 19 | **1** |

**Every one was the instrument's error. Not one was a document being wrong.**

**So: iteration 1 checked the documents against the source. Iteration 2 checks the instruments against what they claim to measure.**

## 1. The board, measured at `9d27286`

### 1.1 The checker — four of eight checks cannot tell use from mention

| Check | What it reads | Can it tell a fence from prose? | Has it fired falsely? |
|---|---|---|---|
| 1 graphics present | file existence | n/a | — |
| 2 no `src/` | path | n/a | — |
| 3 no PDFs | path | n/a | — |
| **4 links resolve** | regex over prose | **no** | **yes, once** — a bracket-then-parenthesis link written inside a fence in the restructure receipt, dodged by rewording |
| **5 stale absence** | regex, with skips for append-only files and SHA proximity | **no** — backticked and blockquoted spans are not skipped | **yes, three times**, each dodged by rewording |
| **6 orphans** | regex link extraction | **no** | latent |
| 7 law-copy parity | **parses fences by design** | **yes** | — |
| **8 door coverage** | regex link extraction | **no** | latent |

**One of eight was built to tell a fence from prose.** Three are immune by reading paths instead of text. The remaining four read prose with a regex.

### 1.1a It fired on this document, while pass 1 was writing it

The sentence above originally spelled check 4's failing pattern out, backticked, as an example. **The gate went red on this file.** Check 4 read the backticked example as a live link to `…` and reported a broken relative link — in the paragraph explaining that check 4 cannot tell a mention from a use.

The pattern is now described in words instead. **That reword is the fifth dodge on record**, after check 5's three and check 4's one, and §4 of this very document forbids exactly it. It was made anyway, because a red gate on \`main\` blocks four live campaigns and pushing one is a cost this pass will not impose on other agents.

**So it is named instead of hidden.** The instrument cannot be demonstrated in prose without tripping it; the fix belongs to pass 2; and the count of times this tree has reworded a true sentence to satisfy a checker is now five.

**Measured, and it matters: markdown links inside code fences, tree-wide — 0.** Checks 4, 6 and 8 are therefore **latent, not active**. Saying otherwise would be the overstatement this whole programme exists to catch. Check 5 is the one that actually fires, and it has fired three times.

### 1.2 The register — 42 cross-file tokens claimed by nobody

[The namespace register](../namespace-register.md) was built in iteration 0 and extended twice in iteration 1.

| | |
|---|---|
| Tokens the register claims | **156** |
| Tokens appearing in 3 or more files | **176** |
| Of those, claimed by no family | **42** |

The unclaimed ones resolve into real families nobody registered: **`FM-W1…W9` and `FM-X7…X9`** failure modes from the clipboard campaigns, **`P-G1…P-G9`** from the GPU wave passes, the history document IDs **`D01`–`D10`** and **`P02`**, and clipboard row families like **`F7`**.

**One live collision found in passing: Kauffman's `K8`** — "later grab as *felt*, slide equivalence (K8)" — against the atomic map's constraints **`K1`–`K6`**. Same letter, same shape, different families, no register row.

Stated fairly: **`T1`–`T5` are not an oversight.** The register's *Out of scope* section rules them locally scoped on purpose, knowing they appear in fifty files. That is a judgment iteration 2 may revisit, not a gap it found.

### 1.3 The probe I wrote this hour has the defect it was written to find

That 42 includes **`L0`**. It is not an identifier. It is the variable in the Kauffman bracket relation `t⁻¹V(L₊) − tV(L₋) = (√t − 1/√t)V(L₀)`, and my token regex read it as a namespace entry.

**Recorded here rather than left for someone else to catch**, because it is the thesis arriving on schedule: every instrument this tree has built so far has been unable to tell a token in use from a token being mentioned, **and the one I wrote an hour ago is no exception.**

## 2. The thesis, stated so it can lose

**One defect explains almost everything iteration 1 found: the instruments cannot distinguish use from mention.**

| Finding | Use / mention? |
|---|---|
| `D7` read as an out-of-range panel | ✔ a Rowlands section heading, mentioned |
| `C01`–`C12` matched as `C12` | ✔ a padded range, mentioned |
| 18 AgentScope `A1`–`A5` read as panels | ✔ another paper's sections |
| `D1`–`D4` read as panels, not C5 planes | ✔ |
| Check 5's three false fires | ✔ absence phrases inside quotations |
| Check 4's one false fire | ✔ a link inside a fence |
| `L0` read as an identifier | ✔ a variable inside a formula |
| **The unreproducible 241** | ✘ **a method nobody recorded — a different failure** |

Seven of eight fit. **The one that does not is named rather than forced**, and it points at iteration 2's second theme: an instrument whose method was never written down cannot be audited at all.

**Falsifier:** if iteration 2 finds instrument defects that are neither use/mention nor unrecorded-method, the thesis narrows and the receipt says so.

## 3. The six passes

| Pass | Station | Question |
|---|---|---|
| **1** | maps | What do the instruments claim, and where do they fail? **This document. EXECUTED.** |
| **2** | kit | Audit all eight checks against their own labels. Does each measure what it says? Close check 5's quotation gap, which has now been dodged three times |
| **3** | maps | The register: close the 42, or rule them out of scope against a **stated threshold** rather than case by case |
| **4** | kit + prompts | The templates and prompts. Iteration 1 pass 3 showed the task template, not the law, is what agents actually follow. Does it produce what it claims? |
| **5** | coord + gearing-meta — **human** | Coordination instruments: `coord.sh` has no claim expiry; `resync.sh` signs every tick with one hardcoded name |
| **6** | maps | Receipt, and the board for iteration 3 |

## 4. What iteration 2 must not do

- **Not fix a check by rewording the document that tripped it.** That dodge is now on record four times, and it is how a checker teaches a tree to lie to it.
- **Not claim a latent defect has fired.** §1.1 measured zero fenced links; the finding is the blindness, not a live failure.
- **Not rename a baked identifier.** The gear keys are string literals and a documented 1:1 audit depends on them.
- **Not take another campaign's instruments.** The audit prompt is the coherence campaign's; RESYNC is Grok's.
- **Not fill `[GAP]`.** A perfectly audited instrument still measures nothing about pointer emission.

## 5. Accept iteration 2 when

Each of the eight checks has been run against a case built to fool it and the result recorded; the register either claims the 42 or states the threshold that excludes them; the task template's gap is closed or ruled; and the receipt says whether the use/mention thesis survived, narrowed, or lost.

## 6. Carried from iteration 1, not duplicated

- **Pass 5's thirteen rulings remain open.** Iteration 2's pass 5 adds the two coordination items and points at the rest; it does not re-open them.
- **The three `graphics-close-reading.md` defects** (2a-1, 2a-3, 2c-1) are still the law station's, still unapplied.
- **Region cites.** 2c's best finding sat outside its own coverage metric. Any counting iteration 2 does should count `A header` and `D footer` as well as numbered panels.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Iteration 1 held the lace up to the light and found it sound. Then it noticed the ruler had been bending. **Iteration 2 measures the ruler**, and starts by admitting that the one it just made bends too. Emission remains `[GAP]`.
