# Verification iteration 3, pass 6 — the leftovers, then the receipt

**Status:** `[PLAN]`. Execution NOT_RUN. **Station:** maps for this document; the queue names its own.
**Emission:** `[GAP]`. No `src/`. **Pinned at `b16c2b9`.**
**Iteration:** [iteration 3](verification-iteration-3-plan.md), pass 6 of six. Passes 1–5 EXECUTED; [pass 5's rulings](verification-iter3-pass-5-plan.md) are partly applied.

## 0. Two jobs, in order

**Run the queue, then write the receipt.** The receipt reports coverage as a fraction, and the fraction is not settled until the leftovers are done or blocked. Iteration 1's phase 6 used the same order for the same reason.

## 1. Re-measured at `b16c2b9`, and it went up

**Fifteen genuine broken references, against fourteen at [pass 2](verification-iter3-pass-2-findings.md).** The tree added one while this iteration classified the others.

| Kind | Count | Station |
|---|---|---|
| **Moved — repair** | **11** | clipboards 8 · hologram 1 · prompts 1 · maps 1 |
| **Conditional or forbidden — do not repair** | 3 | prompts 2 · maps 1 |
| **New, and a kind pass 2 did not meet** | **1** | maps |

### The new one is a placeholder, not a citation

`systems-manifest-ascii-pass-15-plan.md` cites `docs/kit/quiet-door-N-ascii.md`.

**The `N` is a literal.** It is a template path — *quiet door number N* — standing for a family of files a live campaign is producing one at a time. It resolves to nothing because it was never meant to resolve; it is a shape, like `pass-<n>-plan.md`.

**Kind seven: the placeholder.** Remedy: none. And the same warning as the prohibition case — **anyone "fixing" this creates a file named with a capital N in it.**

## 2. The queue

| | Work | Station | Free at `b16c2b9`? |
|---|---|---|---|
| **Q1** | Re-point the **8** moved citations in `agentscope-clipboard.md` and `petersen-zech-clipboard.md`. Two of them are documents citing their own old path | clipboards | **yes** |
| **Q2** | Re-point `gearing-code-1to1.md` → its own old path. **A document that cannot find itself** | hologram | **yes** |
| **Q3** | Re-point `rust-nostd-crate-map-prompt.md` → `docs/plans/rust-nostd-crate-map.md` | prompts | **yes** |
| **Q4** | Re-point `rust-nostd-branch-contracts.md` → `docs/prompts/pointer-emission-prompt.md` | maps | **held** |
| **Q5** | **F7** — rename the validator to say it checks shape, and record in the IR plan that nothing checks the graph against the plan | maps | **held** |
| **Q6** | **E5** — build the move-time completeness list | kit or coord | **yes** |

**Q1–Q3 and Q6 can run now. Q4 and Q5 wait on maps**, which `reference-Mapper` has held since 14:09Z. If it does not free, they are named as blocked rather than forced — [E2 ruled](verification-iter3-pass-5-plan.md) that being wrong by hand beats being wrong automatically, and jumping a live holder is the automatic version of that.

**Eleven repairs across four stations is the first time this campaign has edited another station's files.** Every previous pass was read-only and said so. The change is that these are not findings any more — pass 2 classified them, pass 5 ruled them, and the remedy is mechanical: one path, one new path, both verified present.

## 3. What the receipt must carry

| Section | Standard |
|---|---|
| **Coverage** | Fractions. 33 references read in place; 15 genuine; **however many of the 11 were repaired, and which were blocked** |
| **What iteration 3 established** | Seven kinds of broken reference, and that only one of them is rot |
| **What it could not** | The five law items; anything left blocked by a held station |
| **The honest accounting** | **Iteration 3 classified 33 references and repaired none until pass 6.** That belongs in the receipt in those words |
| **The board for iteration 4** | Measured at a pin, commands recorded |
| **The thesis** | Held, grew, or lost — six kinds at pass 2, seven now, plus one failure mode of the author's own |

## 4. What pass 6 must not do

- **Not repair a conditional, a prohibition or a placeholder.** Four of the fifteen must stay exactly as written, and [pass 2](verification-iter3-pass-2-findings.md) and §1 name each.
- **Not force a held station.** Q4 and Q5 wait or are reported blocked.
- **Not repair a citation inside a findings record.** [The evidence exemption](verification-iter3-pass-2-findings.md) is a rule now; re-pointing the paths inside a report deletes the finding.
- **Not report a fraction as a whole**, and not let a queue that ran partly become a receipt that reads wholly.
- **Not fill `[GAP]`.**

## 5. Accept pass 6 when

Q1–Q3 and Q6 are done or explicitly blocked; Q4 and Q5 are done or named blocked with the holder and since-time; the four do-not-repair references are verified untouched; and the receipt reports iteration 3 in fractions with the board for iteration 4 measured rather than recalled.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Three iterations of reading, and this is the first pass that puts a hand on another shelf to straighten something. **Eleven labels, four shelves, and four more labels that must be left crooked on purpose.** Emission remains `[GAP]`.
