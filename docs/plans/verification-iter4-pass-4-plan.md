# Verification iteration 4, pass 4 — two checks were ruled on as one

**Status:** **EXECUTED.** [Findings](verification-iter4-pass-4-findings.md) — **the thesis lost its falsifier and `D1`/`D2` hold.** **Station:** maps *(this document)*; the subject is **kit + coord**. **Emission:** `[GAP]`. No `src/`.
**Iteration:** [iteration 4](verification-iteration-4-plan.md). **Prior:** [pass 3 findings](verification-iter4-pass-3-findings.md).
**Board pinned at:** `30f6f87`.

**Pass 4 gathers evidence. It does not rule.** [The iteration plan](verification-iteration-4-plan.md) gives pass 5 to the human, and `D1`/`D2` are theirs to settle.

## 0. What is being re-opened, exactly

[Iteration 3 pass 5](verification-iter3-pass-5-plan.md) ruled:

> **`E1`: no enforcement mechanism. `D1` and `D2`: the door and orphan checks stay advisory.**
>
> Two forward references arrived within one hour and **both resolved on their own** — WGSL after 21 commits, graphics the same day. A gate would have blocked four campaigns over files that were always going to land. The measured price of enforcement is higher than the measured price of drift.
>
> **Revisit only on evidence**, not on a date: when the checker has run a month without a false positive.

**One sentence ruled on two checks.** Pass 3 measured them and they are not the same instrument: one tracks a harm and one does not. That is the re-opening.

## 1. Three premises, three different fates

| | What `D1`/`D2` rested on | Now |
|---|---|---|
| **i** | *Gating would block a tree that is already reachable* — from [pass 4c](verification-iter2-pass-4-findings.md)'s inbound-link count | **Gone.** [Iteration 4 §2](verification-iteration-4-plan.md) corrected it: inbound-link count is not reachability, and **9 of 16 prompts are unreachable**. Pass 4c measured one hop and concluded about the graph |
| **ii** | *The measured price of enforcement is higher than the price of drift* — 21 commits, WGSL | **Standing, and untested against the two checks separately.** It was priced against forward references, which are a door problem. Nobody has priced an orphan gate at all |
| **iii** | *Revisit when the checker has run a month without a false positive* | **Unmeetable as written.** §4 |

**Premise i is the one that carried `D1`/`D2`, and it is the one that fell.** The ruling may still be right; it can no longer rest on what it rested on.

## 2. The board: advisories across the tree's whole life

Sampled every 80th commit, the hook run at each:

| Commit | Tracked files | Advisory findings | Orphans | Thin doors |
|---|---|---|---|---|
| `01e66cb` | 186 | **63** | 62 | 0 |
| **`4a6d3a4`** | 218 | **8** | **3** | 4 |
| `7764232` | 261 | 33 | 26 | 7 |
| `044257c` | 292 | 41 | 35 | 6 |
| `de937b4` | 317 | 40 | 35 | 5 |
| `dc8f81d` | 344 | 43 | 37 | 6 |
| `941466f` | 379 | 41 | 34 | 7 |
| `c6177b3` | 415 | 42 | 34 | 8 |
| `d31b4a7` | 456 | 43 | 34 | **9** |

**This falsifies a finding this campaign published in iteration 1.**

> [Iteration 1 pass 1](verification-iteration-1-plan.md): *"Advisories accrue faster than a pass can close them, so nothing that only warns will ever come back to zero."*

That was measured over **five minutes and five commits**, watching 15 → 17. Over the tree's life: **63 → 8 under the restructure, then flat at 40–43 across 164 further files.** Advisories do not accrue faster than a pass can close them. **A campaign closed 55 of them in one go, and the count has not grown since.**

The second half of the claim survives: it has never returned to zero, and its post-restructure floor is **8**, not 0.

## 3. The asymmetry, which is the actual finding

Read the last two columns separately and they move in opposite directions:

| | at `044257c` (292 files) | at `d31b4a7` (456 files) |
|---|---|---|
| **Orphans** | 35 | **34** |
| **Thin doors** | 6 | **9** |

**Door findings grow with the tree. Orphan findings do not.**

And [pass 3](verification-iter4-pass-3-findings.md) measured which of the two tracks harm: door coverage is nearly uncorrelated with anything a reader loses — `docs/README.md` and `docs/clock/passes` sit at identical 50% with 0 and 30 stranded files respectively — while the orphan check names the 30 stranded files exactly, and 30 of its 34 findings are that one real failure.

**So the growing signal is the one that does not predict harm, and the flat signal is the one that does.** A gate placed by finding-count would pick the wrong check.

## 4. The revisit condition is denominated in the wrong unit

The fix that made four checks read prose correctly landed at **`896f781`**. Since then:

| | |
|---|---|
| Wall-clock elapsed | **9 hours 54 minutes** |
| Commits elapsed | **290** |

The condition says *a month*. **This tree ran 829 commits in the last 24 hours.** A calendar month at that rate is tens of thousands of commits — the condition is not strict, it is unreachable, and it is measured in a unit this tree does not move in.

**Measured in the unit the tree does move in, the condition may already be satisfied.** Every false positive iterations 3 and 4 have reported was produced by **a steward's ad-hoc probe, not by `check-docs.sh`** — the out-of-range `D7`, the `C12` substring, the 18 AgentScope tokens, the two projection stamps in pass 3. **4b must separate those two populations before anyone claims the checker is clean**, because this campaign has an interest in the answer.

## 5. The thesis, stated so it can lose

**`D1` and `D2` should not have one answer, because check 6 and check 8 are not one instrument.**

- **Check 6 (orphans)** names a real loss, at a rate that has not grown in 164 files, with a reachable zero — it was at **3**.
- **Check 8 (door coverage)** names a condition nine shelves violate harmlessly, grows with the tree, and has not been under 4 since the restructure.

**Falsifier, and it is a live one:** if replaying history shows an orphan gate would have blocked a comparable number of commits to a door gate — or blocked campaigns whose files were always going to be linked, the way the WGSL forward reference resolved itself — then premise **ii** covers both checks equally and `D1`/`D2` deserve one answer after all. **4c decides that by replay, not by argument.**

A second falsifier: if the 30 orphans turn out to be the *only* thing check 6 has ever caught, then its flat rate is an artefact of one frozen lump and it predicts nothing either.

## 6. What pass 4 does

Read-only. **No check is changed, no gate is installed, no door row is added.** The instruments belong to **kit**; `coord.sh` to **coord**.

| | Work |
|---|---|
| **4a** | **Re-read `D1`/`D2`'s three premises at source**, not from this summary — the pass 4c inbound-link measurement, the 21-commit WGSL price, the false-positive condition. Say for each whether it stands, moved or fell, with the line it is read from |
| **4b** | **Separate checker false positives from steward false positives** since `896f781`. The campaign's own probes have produced roughly fifteen; the checker's count since its fix is the number premise iii actually asks for, and it is not the same number |
| **4c** | **Replay both gates against history.** At each of the sampled commits, and at every commit that added a now-orphaned file: would a check-6 gate have blocked it? Would a check-8 gate? **Report the two prices side by side** — that is the comparison iteration 3 made for doors and never made for orphans |
| **4d** | **Price the second half of the question: what keeps a door current without gating.** §2 has one worked answer already — a campaign did it, 63 → 8 — and pass 3 has another — document siblings, which no mechanism maintains either. Neither is a mechanism. Say plainly whether the tree has ever had one |
| **4e** | **Write the evidence up for pass 5**, with the choice stated as options and prices, not as a recommendation dressed as a finding |

**Queued and still open, carried into pass 5:** the five law-station items from iteration 1 (`D10`, `D11`, revised `2c-1`, `D12`, `D13`); `F7`, the validator that passes 5 of 6 wrong plans, ruled *rename, don't repair* and unactioned; pass 3's two unapplied proposals (hologram's stranded 30, the clipboards bridge).

## 7. What pass 4 must not do

- **Not install a gate.** Pass 4 is evidence; the iteration plan gives the ruling to the human.
- **Not re-open `E1`, `E2` or `E5`.** [Iteration 4 §5](verification-iteration-4-plan.md) holds: they were ruled on evidence that has not moved. **Only `D1`/`D2`'s premise moved.**
- **Not edit `check-docs.sh` or `coord.sh`.** Both are another station's, and pass 4 has no finding that needs code.
- **Not treat "the checker has been clean" as established** because this campaign would like it to be. 4b exists to test that against its own interest.
- **Not confuse a reachable zero with a maintained one.** The restructure reached 3 orphans and 4 thin doors; nothing held it there.
- **Not fill `[GAP]`.**

## 8. Accept pass 4 when

Each of `D1`/`D2`'s three premises is read at source and marked stands, moved or fell; the false-positive count since `896f781` is split between the checker and the steward; both gates are replayed against history and priced side by side in the same units; and the question pass 5 must answer is written as a choice with its costs, including the cost of leaving it exactly as it is.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

One ruling, one sentence, two instruments — and nobody checked whether they measure the same thing. **A knot that has to be untied and a fray that only looks untidy both get called damage, until you run the lace through your fingers.** Emission remains `[GAP]`.
