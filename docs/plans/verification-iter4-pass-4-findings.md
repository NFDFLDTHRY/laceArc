# Verification iteration 4, pass 4 — findings

**Status:** record. **Station:** maps *(claimed at `0da2977`)*. **Emission:** `[GAP]`. No `src/`.
**Method:** [the pass 4 plan](verification-iter4-pass-4-plan.md). **Read-only on kit and coord. `check-docs.sh` and `coord.sh` were not touched.**

**Pass 4 gathers evidence. The ruling is pass 5's and the human's.**

---

## 1. The thesis lost on the half that mattered

The plan proposed that `D1` and `D2` should not share one answer, and wrote its own falsifier:

> *if replaying history shows an orphan gate would have blocked a comparable number of commits to a door gate — or blocked campaigns whose files were always going to be linked, the way the WGSL forward reference resolved itself — then premise **ii** covers both checks equally and `D1`/`D2` deserve one answer after all.*

**It fired.** §3 is the replay. On gating, the two checks are alike, and [iteration 3's ruling](verification-iter3-pass-5-plan.md) holds — **more firmly than it was argued, and for a reason it did not state.**

The thesis survives only on what the checks are *for*, which §5 takes up.

## 2. Premise ii was measured on a different instrument

Read at source, the 21-commit WGSL price is not a door measurement and not an orphan measurement.

> [Iteration 2 pass 5](verification-iter2-pass-5-plan.md): *"**Check 4 was right about the bytes and wrong about the meaning for twenty-one commits.**"*

**Check 4 is `relative markdown links: all resolve` — an invariant, not an advisory.** It is the one check in this tree that already behaves like a gate: when WGSL's forward reference landed, `main` went red and stayed red for 21 commits.

`D1` and `D2` are checks **6** and **8**. So the ruling that they stay advisory was priced on a case neither of them can produce. **The argument transfers only if doors and orphans also fail transiently, on files that were always going to arrive.** Nobody had measured whether they do.

## 3. They do. The replay

For every tracked markdown file: the commit that added it, and the first commit in which any markdown line links to it.

| | Files | Share |
|---|---|---|
| **`SAME`** — linked in the commit that created it | **153** | 39% |
| **`LATER`** — landed unlinked, linked afterwards | **134** | **34%** |
| **`PRE`** — the link existed *before* the file did | **75** | **19%** |
| **`NEVER`** — still unlinked | **30** | 8% |

**A third of this tree was a transient orphan, and a fifth of it was forward-referenced.** WGSL was not a freak case; **75 files were linked before they existed.**

### How long transient orphans stayed orphaned

| | Commits |
|---|---|
| Median | **1** |
| Mean | 13.6 |
| p90 | 33 |
| Max | **166** |

| Cleared within | Files |
|---|---|
| 1 commit | **73** |
| 2–5 | 27 |
| 6–20 | 13 |
| 21–100 | 16 |
| **100+** | **5** |

**The typical orphan resolves in one commit; the tail is long.** And the WGSL case that carried the ruling — 21 commits — sits at roughly the **80th percentile**. Iteration 3 priced its decision on an expensive case and treated it as the going rate. **The going rate is one commit. The expensive cases are real and there are more of them than iteration 3 knew.**

### Neither check could ever have been switched on

Sampled every 25th commit across the **622** commits since check 8 was added at `fb4fd10`:

| | Best observed | Ever zero? |
|---|---|---|
| Orphans | **6** | **no** |
| Thin doors | **5** | **no** |

**Check 8 has never once been green.** A door gate is not a decision anybody could have taken; there was no moment to take it. Check 6 reached 6 and never 0.

**So an absolute gate on either was never available.** The only installable form is differential — *do not make it worse*.

### Pricing the only gate that could exist

A **no new orphan** gate, replayed against the 670 commits since check 6 was added:

| | |
|---|---|
| Files that landed unlinked | **164** |
| **Distinct commits it would have blocked** | **162 of 670 — roughly one in four** |
| Of those, cleared by the next commit | **73** — the author would simply have written the row in the same commit |
| **Blocked 21 or more commits** | **21** |

**That last row is the ruling's own standard turned on itself.** Iteration 3 rejected enforcement because **two** forward references would have cost 21 commits each. A no-new-orphan gate would have imposed that cost **twenty-one times**.

**`D1` and `D2` hold, on evidence ten times stronger than the evidence that first settled them.**

## 4. The checker is not clean, and four of its standing findings are false

Premise iii asks for *a month without a false positive*. The plan observed that the unit is unreachable — **290 commits and under ten hours** since the fix at `896f781`, against **829 commits in the last 24 hours** — and suggested the condition might already be met in commits. **It is not met on any reading.**

Check 6's 34 findings were reproduced independently and **agreed exactly, file for file**. Four of them are wrong:

| Reported orphan | Actually referenced by |
|---|---|
| `docs/clock/LATEST.json` | `lace-projection.html` |
| `docs/clock/icon-192.png` | `lace-projection.html`, `manifest.webmanifest`, `sw.js` |
| `docs/clock/icon-512.png` | `manifest.webmanifest`, `sw.js` |
| `.gitignore` | `check-docs.sh`, `coord.sh`, `law.station`, a history evidence JSON |

**Every one is wired into running code by the only mechanism its file type has.** The check's label — *a tracked file no document links to is unreachable by reading* — is literally true of all four and materially false: they are reachable, maintained and load-bearing. **4 of 34 is a 12% false-positive rate, standing right now and standing the whole time.**

They were never counted because they were read as known noise. **That is how a false positive survives a campaign convened to find false positives.**

### And it is the same defect three times

| Where | What it cannot see |
|---|---|
| Check 6 | four assets referenced from HTML, a web manifest, a service worker and two shell scripts |
| Check 8 | a door cannot meaningfully link a binary, and three shelves are mostly binaries |
| [Pass 3](verification-iter4-pass-3-findings.md) | 12 of 12 non-document products link no provenance, and the 4 binaries cannot |

**One root cause: the instruments read markdown links, and this tree is not only markdown.** Pass 3 found it as a property of the filing rule. It is equally a property of the checker.

**The distinction §4 of the plan demanded — checker false positives versus steward false positives — matters and both exist.** The roughly fifteen this campaign has produced were probes. **These four are the checker's**, they are current, and they are the number premise iii actually asks for.

## 5. What survives of the thesis

Gating treats the two checks alike. **Reading them does not.**

| | Check 6 — orphans | Check 8 — door coverage |
|---|---|---|
| Findings now | 34 | 10 |
| Growth, 292 → 456 files | **35 → 34** | **6 → 9** |
| Tracks a reader's actual loss | **yes** — 30 of its 34 are the stranded set | **no** — [pass 3](verification-iter4-pass-3-findings.md): identical 50% coverage on two shelves with 0 and 30 stranded |
| False positives | **4 of 34** | structural, on every binary-bearing shelf |
| Best ever | 6 | 5 |

**Check 6's output is a work list with four known bad rows. Check 8's output is nine shelves that are fine and one that is not, printed identically.** They are reported in one undifferentiated block of 44 advisories, and nothing in the output tells a reader which is which.

## 6. What keeps a door current without gating — the second half of the question

**Nothing ever has. The tree has never had a mechanism, and it has never needed one to work.**

| | Files | |
|---|---|---|
| Reachable at or before birth | **228 of 392** | **58%**, by habit alone — `SAME` plus `PRE` |
| Recovered later | 134 | habit failed, someone noticed |
| Never | 30 | habit failed, nobody noticed |

**58% is what a habit achieves with no enforcement of any kind.** And the only thing that has ever moved the aggregate is a campaign: [§2 of the plan](verification-iter4-pass-4-plan.md) measured **63 → 8 advisories** across the restructure, while the tree grew by 32 files.

**So the tree has exactly two working instruments and neither is a check:** the habit of writing the row with the file, and a campaign convened to sweep. Pass 3 found the same shape from the other side — five shelves independently ship a campaign index nobody ever specified.

## 7. What pass 5 is being asked to choose between

Stated as options with prices, not as a recommendation wearing a finding's clothes.

| | Option | Price |
|---|---|---|
| **A** | **Leave both advisory. Change nothing.** | 30 files stay lost. 44 advisories a session that nobody can triage, 4 of them false |
| **B** | Gate check 8 | **Not available.** Never green in 622 commits |
| **C** | Gate check 6 absolutely | **Not available.** Floor of 6, never 0 |
| **D** | **Differential — no new orphan** | Fires on **162 of 670 commits**. 73 are a one-line habit change. **21 would block for 21+ commits** — the cost iteration 3 rejected, twenty-one times over |
| **E** | **Teach check 6 to read non-markdown references** | Removes 4 of 34 findings. Small, local to `check-docs.sh`, and a **precondition for D** — no gate should fire on a false positive |
| **F** | **Separate the two checks in the output** | Check 6's list is work; check 8's is context. Costs a heading |

**E and F need no ruling on gating at all** and are the only options that improve a reader's position without paying D's price. Both are **kit**'s to take.

**D is the only gate that could exist, and on iteration 3's own standard it is more expensive than the drift it prevents.** That is not an argument for A: A is what produced the 30.

## 8. What pass 4 establishes

- **`D1`/`D2` hold.** Not on the premise that carried them — that one fell in [iteration 4 §2](verification-iteration-4-plan.md) — but on a direct replay neither iteration had run.
- **Premise ii was imported from check 4**, an invariant, and priced on an 80th-percentile case.
- **A third of the tree was a transient orphan and a fifth was forward-referenced.** WGSL was ordinary.
- **Neither check has ever been green**, so no absolute gate was ever on offer.
- **The checker has four standing false positives**, so premise iii is not satisfied in any unit.
- **The instruments read markdown and the tree is not only markdown** — the same defect in check 6, check 8 and the filing rule.
- **The tree's working mechanisms are a habit at 58% and a campaign on demand.** Neither is a check.

**Carried to pass 5, unresolved:** options **E** and **F** are kit's; the five law-station items from iteration 1 (`D10`, `D11`, revised `2c-1`, `D12`, `D13`); **`F7`**, the validator that passes 5 of 6 wrong plans; and [pass 3's](verification-iter4-pass-3-findings.md) two unapplied proposals — hologram's stranded 30 and the clipboards bridge.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

We asked whether to tie the lace tighter, and the measurement says the knot was never loose — **a third of it comes undone briefly every day and does itself back up.** What is actually lost is one length nobody is standing near. Emission remains `[GAP]`.
