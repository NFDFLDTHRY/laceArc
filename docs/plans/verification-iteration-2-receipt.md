# Verification iteration 2 — receipt

**Status:** receipt. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Pinned at `18f0791`.** **Iteration:** [iteration 2](verification-iteration-2-plan.md). Previous: [iteration 1](verification-iteration-1-receipt.md), CLOSED.

> **Iteration 1 checked the documents against the source and found them sound. Iteration 2 checked the instruments, and repaired four of them.**

---

## 1. Coverage

| Pass | Scope | Coverage | Changed anything? |
|---|---|---|---|
| **1** the board | 9 executables, the checker, the register | complete, **after being completed twice** | no |
| **2** the checker | 12 adversarial cases + 2v | **8 of 8 checks**, all cases run | no — patches written, held for a ruling |
| **3** the register | 42 unclaimed tokens, every candidate read in place | complete | **yes** — rule replaced, 5 registered, 3 excluded, 1 struck |
| **4** templates and prompts | 7 receipts, 20 SHAs, 32 paths, 16 prompts | complete | no |
| **5** coordination | enforcement inventory, then the rulings | complete | **yes** — 4 checks fixed, , named ticks |
| **6** receipt | this | — | — |

**Iteration 1 was read-only by design. Iteration 2 was not**, because three of its findings were factual errors in maps-owned or ruling-cleared files. What it changed is §3.

## 2. The thesis lost once more than it was supposed to

Pass 1 proposed one defect — *the instruments cannot distinguish use from mention* — and said: **"if iteration 2 finds a fourth mode, the receipt names it."**

It found one. **Four modes, with evidence:**

| Mode | The instrument fails because | Instances |
|---|---|---|
| **Use vs mention** | it reads a token without its context | 7+ — `D7`, `C01–C12`, AgentScope `A1–A5`, C5's planes, checks 4/5/6/8, `L0`, PDF hashes |
| **Unrecorded method** | nobody wrote down how it counted, so nothing can re-run it | 1 — the `241` |
| **Implemented at the wrong level** | the code runs, returns PASS, and answers a smaller question than its name | 1 — the validator, which checks shape and is named for the plan |
| **Stated rule ≠ applied rule** | the instrument is right and its documentation is wrong | 1 — **the register**, whose spread rule its own contents refuted while its contents were correct |

**Two candidates are named and not promoted**, for want of a second instance each: *an instrument nobody uses* (the template's form, zero adoption) and *an instrument with no actuator* (the checker, which cannot refuse anything).

## 3. What iteration 2 changed, and what the changes did

### The checker — and the measured effect is small and exact

Four checks now read prose through `_prose()`, which blanks fenced blocks and backticked spans. Run old and new against **the same tree**:

| | old | new |
|---|---|---|
| Advisories | **43** | **42** |
| Orphans | 36 | **36** |
| Doors short | 6 | **6** |

**Exactly one live false positive removed, and no orphan or door count moved.** That confirms pass 2's reading: checks 6 and 8 were **latent, not active** — nobody had ever hidden a file behind a fenced mention, so fixing them is preventive.

The one removed finding is the good part. It was flagging **another agent's correct prose**:

> `cold-doors-pass-5-plan.md` — "confirm whether `docs/pointer-emission.md` is absent *in that tree*"

A backticked path inside a conditional instruction about a **past** tree, read by the old check as a stale claim about the present one. **That agent would have become the sixth reword.** The count of documents this tree has reworded to appease a checker stops at five.

### The register — rule replaced, not patched

Spread rule out, ambiguity rule in. Five families registered (Kauffman `K`, Xiao `X`, second-reading `F`, manifest `Q`, and `T` with its three meanings), three excluded with stated reasons, `L0` struck as not an identifier. **Twenty-six families**; two-owner tokens 41 → 60, re-derived from the table by script each time.

### The coordination layer — two commands that tell the truth

`coord.sh force-free` restored from the protocol it wraps, with a **required** reason written into `NOTE`. `resync.sh fire`/`clear` **require the caller's name** instead of signing every tick `LaceArc (steward)`.

Both follow one principle the iteration arrived at by accident and then on purpose: **an instrument should refuse to assert what it does not know.**

## 4. What iteration 2 could not do

- **E1 — enforcement.** Deliberately deferred, with a reason and a price. Two forward references in one hour — WGSL (**21 commits** late) and graphics — would each have blocked four campaigns. **A gate on a checker that was wrong half the time buys stoppages, not order.** Re-decide in iteration 3 against a corrected checker.
- **E2 — claim expiry.** `force-free` may have made it unnecessary. Untested.
- **E5 — who re-points a citation when a file moves.** **The only decay this session measured doing real damage**, twice: Defrag passes 1 and 2 broke the audit log's citations and the receipts' paths, in the same shape, in two unrelated instrument families. **No owner, no check, no plan.**
- **`D1`, `D2`, `D6`** and the rest of iteration 1's thirteen. Evidence attached, unruled.
- **Prove the fixes hold under other agents.** Tested against twelve cases, not against four campaigns over a week.

### One failure of my own, repeated after being named

[Pass 4](verification-iter2-pass-4-findings.md) recorded that an unquoted heredoc had evaluated a backticked word in its prose and deleted it. **This receipt was written with an unquoted heredoc and lost nine tokens the same way** — `force-free`, `D1`, `D2`, `D6`, `E1`, `E2`, `E5`, `D13`.

Caught by re-reading, repaired above, and **no check in the eight would have seen it**: the damage leaves grammatical prose with holes in it, which is invisible to every instrument this iteration audited.

The point is not the typo. **It is that a defect named in writing, one pass earlier, by the same author, recurred unchanged.** Naming a failure does not fix it; only changing the tool does — which is the whole argument of §3, arriving at my own expense.

## 5. The board for iteration 3, measured at `18f0791`

```bash
git ls-files | wc -l ; git ls-files '*.md' | wc -l
git log --since='1 hour ago' --oneline | wc -l
.claude/hooks/check-docs.sh
git show <fix>^:.claude/hooks/check-docs.sh   # old checker, same tree, for the delta
```

| | iteration 1 close | now |
|---|---|---|
| Tracked files / markdown | 301 / 228 | **333 / 259** |
| Commits in the last hour | 66 | **104** |
| Orphans | 34 | 35 |
| Advisories | 39 | 41 |
| **Checks failing their own label** | 4 of 8 (unmeasured) | **0 of 8, verified by case** |
| Identifier families registered | 21 | **26** |
| Instruments with a measured defect outstanding | — | **1** — the validator (F7) |

**Iteration 3's question follows from §4, not from this table.** The instruments are now mostly honest and nothing enforces them, while the one decay that has actually cost this repository something — citations broken by a file move — has no owner at all. **That is E5, and it is the largest unowned thing in the tree.**

## 6. What is queued

| Item | Owner |
|---|---|
| `E1`, `E2`, `E5` | **human** |
| Iteration 1's `D1`–`D13` | **human**, evidence attached by passes 2, 4 and 5 |
| F7 — the validator still passes 5 of 6 wrong plans | maps; **unfixed, and the only instrument with a measured live defect** |
| The three `graphics-close-reading.md` defects | law |

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Iteration 1 found the documents honest and the ruler bent. Iteration 2 straightened four of the eight marks on the ruler, and found that the ruler has never been attached to anything that could stop a cut. **The lace is fine. The workshop is the problem, and it is a smaller problem than it looked.** Emission remains `[GAP]`.
