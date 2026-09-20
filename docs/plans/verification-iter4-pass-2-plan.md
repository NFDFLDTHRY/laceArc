# Verification iteration 4, pass 2 — reading the unreachable

**Status:** `[PLAN]`. **EXECUTED** — [the record](verification-iter4-pass-2-findings.md). Three structures; four rows reconnect thirty-six files. **Station:** maps for this plan and its record. **Read-only elsewhere.**
**Emission:** `[GAP]`. No `src/`. **Pinned at `610d680`.**
**Iteration:** [iteration 4](verification-iteration-4-plan.md), pass 2 of six. Pass 1 EXECUTED and completed.

## 0. Probing collapsed the scope

Pass 1 left 97 files unreachable from either entrance and pass 2 was to read them. **Classifying them first turns 98 individual readings into three questions.**

| | Count | What it is |
|---|---|---|
| **Pass plans** | **78** | `*-pass-N-plan.md` — campaign process |
| **Campaign products** | **12** | four campaigns' clipboards, mechanisms sheets and ascii machinery |
| **Quiet-door output** | 8 | `quiet-door-N-{ascii,receipt}.md`, produced today |

*(98, not 97 — the tree added one while pass 1 was being completed.)*

## 1. The finding is structural, not per-file

**The clipboards door names five campaigns. Its shelf holds nine.**

| On the door | On the shelf |
|---|---|
| agentscope · kauffman-4ed · petersen-zech · rowlands-zero-to-infinity · xiao-zhu-foundations | the same five, **plus wasm-spec-3 · webgpu · webnn · wgsl** |

**Four entire campaigns have never been added.** Not one of their twelve products is reachable — clipboard, mechanisms sheet and ascii machinery, all three, all four campaigns:

`wasm-spec-3` · `webgpu` · `webnn` · `wgsl`

**The door was written for a five-campaign shelf and the shelf grew to nine.** That is the whole of the clipboards number — 62 of 84 uncovered — and it is one omission repeated four times, not sixty-two decisions.

## 2. This answers pass 1's falsifier, and it answers half of it each way

Pass 1 said: *if the 97 turn out to be work that should not be reachable, the tree is coherent and only its advisory is wrong.*

- **For the 78 pass plans: possibly.** A pass plan is a campaign talking to itself. Whether it belongs in a public index is a **policy question the tree currently answers two ways** — `docs/plans/README.md` carries a row for every verification pass plan, while `docs/clock/passes/README.md` carries 30 of 60.
- **For the 12 products: no, emphatically.** **A clipboard is the thing a campaign exists to produce.** Four campaigns have finished and their output cannot be found from either entrance.

**So the thesis survives in a sharper form: navigation failed for products, not only for process.**

## 3. What pass 2 does

1. **Read the twelve products.** Confirm they are finished work and not drafts, and that nothing else already routes to them. Iteration 3's warning applies: its eleven "repairs" were all correct as written.
2. **Read a sample of the 78 pass plans** — enough to say whether they are campaign-internal by design or simply unindexed. **Not all 78**; the question is categorical and the sample is stated as a fraction.
3. **Check the 8 quiet-door files against their own campaign.** cold-doors is live and on its sixth pass; its next pass may index them. **Ask the shelf before touching it.**
4. **Write the door proposal, not the door rows.** The clipboards door is clipboards' and the passes door is hologram's.

## 4. What pass 2 must not do

- **Not add a row to another station's door.** Four campaigns missing from the clipboards index is that station's to fix, and a proposal is what this pass produces.
- **Not read all 78 pass plans.** The question they raise is one policy, not seventy-eight judgments, and a coverage fraction is the honest form.
- **Not assume a pass plan should be indexed.** `docs/plans` indexes its own because every pass happened to write a row; that is habit, and [pass 1 said so](verification-iteration-4-plan.md).
- **Not touch the quiet-door files.** Live campaign, today's output.
- **Not fill `[GAP]`.**

## 5. Accept pass 2 when

The twelve products are read and confirmed finished-and-stranded or otherwise; the pass-plan question is stated as a policy with the tree's two contradictory precedents named; the quiet-door eight are attributed to their campaign; and a door proposal exists for clipboards that is **one row per campaign, four rows**, rather than sixty-two.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Sixty-two files missing from one index sounded like sixty-two failures. **It is one failure, made four times, by a door that was correct when it was written.** Emission remains `[GAP]`.
