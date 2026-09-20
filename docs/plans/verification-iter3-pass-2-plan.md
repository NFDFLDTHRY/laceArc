# Verification iteration 3, pass 2 — classify every broken reference

**Status:** `[PLAN]`. **EXECUTED** — [the record](verification-iter3-pass-2-findings.md). 33 read in place; 11 real, and a sixth kind found. **Station:** maps for this plan and its record. Read-only elsewhere.
**Emission:** `[GAP]`. No `src/`. **Pinned at `ee37319`.**
**Iteration:** [iteration 3](verification-iteration-3-plan.md), pass 2 of six. Pass 1 EXECUTED and completed.

## 0. Probing moved the number twice, in opposite directions

Pass 1 reported **nine** broken path citations and said plainly it was a floor. Widening the census to backticked and non-`docs/` references took it to **33**. Then separating one new kind took it back down to **14**.

| | |
|---|---|
| Path-shaped references, tree-wide | **997** |
| Unresolvable | **33** |
| **Quoted as evidence** — a document reporting rot, thereby containing it | **19** |
| **Genuine, and pass 2's actual scope** | **14** |

## 1. A fifth kind, and it is structural

Nineteen of the thirty-three are **this campaign's own documents citing broken paths in order to report them.** `verification-iter2-pass-4-findings.md` carries five: the exact five pre-defrag paths it was written to name. The iteration 3 plan carries four: the four that pass 1 catalogued.

**You cannot report a broken citation without writing one.** That is not an accident to be cleaned up; it is a property of the job, and the census has to exempt the report or it counts its own reporting as decay.

**Kind five: quoted as evidence. Remedy: none.** The exemption is by document, not by path, and it is stated so nobody later "fixes" a findings record by deleting the evidence in it.

## 2. Two more probe artifacts, caught in planning

| # | Artifact | Effect |
|---|---|---|
| **8** | The extension pattern `\.[a-z]{{2,5}}` truncated `clipboards.station` to `clipboards.stati` | one invented broken reference |
| **9** | The first widened census did not separate evidence from rot | reported 40 where 14 was the answer |

That is the eighth and ninth instance this session of a probe counting something it should not, **both caught before publication**, which is now two in a row. Pass 1's §1.2 predicted this pass would need reading rather than grep; the prediction held before the pass even began.

## 3. The fourteen, already half-classified

| Kind | Count | Instances |
|---|---|---|
| **Moved** — the file exists under a new path | **11** | five pre-defrag targets cited across the two clipboards, `gearing-code-1to1.md`, `rust-nostd-crate-map.md`, `pointer-emission-prompt.md` |
| **Never arrived** *(or not yet — pass 2 decides)* | **3** | `five-refs-clipboard.md`, `gearing/ITERATE-LOG.md`, `systems-manifest-ascii-panels.md` |

**Two documents cannot find themselves.** `petersen-zech-clipboard.md` cites `docs/petersen-zech-clipboard.md`; `gearing-code-1to1.md` cites `docs/gearing-code-1to1.md`. Both are their own pre-defrag paths.

**The three "never arrived" are the only real reading work.** `systems-manifest-ascii-panels.md` is cited by a *pass 4 plan* of a live campaign — on the WGSL precedent, that is more likely **not yet** than **never**, and calling it wrong would be the most expensive mistake available here.

## 4. And 93% of the rot is backticked

**Thirteen of the fourteen genuine broken references are written inside backticks.**

Check 4 reads none of them. [The D3/E6 repair](verification-iter2-pass-5-plan.md) made four checks **blank backticked spans on purpose**, because a backticked token is a mention.

**So the form in which almost all rot is written is the form the checker was just taught to ignore.** Pass 1 named this tension; pass 2 measures it at 93% and hands pass 4 a harder problem than "add a check": any prose-citation check must distinguish *a path named as a path* from *a path named as a word*, which is the same distinction that took two iterations to get right in four other places.

## 5. What pass 2 does

1. **Classify all 14** by kind, reading each in place.
2. **Decide the three ambiguous ones** — never arrived against not yet — by looking at whether a live campaign is producing them.
3. **Rule the two self-citations**, which are moved-file rot in its purest form.
4. **Record the evidence exemption** as a rule, not a one-off.
5. **Hand pass 4 the 93% finding** with the `_prose` collision named.

## 6. What pass 2 must not do

- **Not repair a citation in another station's file.** Eleven of the fourteen are clipboards', prompts' or hologram's.
- **Not call a *not yet* a *never*.** WGSL cost 21 commits of four campaigns; that is the measured price.
- **Not delete evidence to lower a count.** §1.
- **Not widen the census again mid-pass.** 997 references, 33 unresolvable, 14 in scope, pinned at `ee37319`.
- **Not fill `[GAP]`.**

## 7. Accept pass 2 when

Each of the fourteen carries a kind and a remedy with an owner named; the three ambiguous ones are decided by evidence rather than by default; the evidence exemption is written as a rule; and the 93% figure is handed to pass 4 with the `_prose` collision stated.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Counting the knots you untied as knots is how a tally grows without the lace changing. **Nineteen of the thirty-three were the tally.** Emission remains `[GAP]`.
