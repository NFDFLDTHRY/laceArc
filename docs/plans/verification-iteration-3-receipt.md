# Verification iteration 3 — receipt

**Status:** receipt. **Station:** maps *(committed without the claim; see the end)*. **Emission:** `[GAP]`. No `src/`.
**Pinned at `74a73ab`.** **Iteration:** [iteration 3](verification-iteration-3-plan.md). Previous: [iteration 2](verification-iteration-2-receipt.md), CLOSED.

> **Iteration 3 set out to classify citation rot. It found the tree has none, and that every instrument it built — including its own classification — could not tell a pointer from a record.**

---

## 1. The queue ran and collapsed to nothing

[Pass 6](verification-iter3-pass-6-plan.md) queued **eleven repairs across four stations** — the first time this campaign would have edited another station's files.

**Reading them before editing them, all eleven are receipts. None is a citation. Nothing was repaired, and nothing should be.**

| | What it actually is |
|---|---|
| **8 in the two clipboards** | **Dated `THEN` lines**, with the `NOW` given alongside: *"**THEN:** `docs/petersen-zech-clipboard.md`. **NOW:** `docs/clipboards/petersen-zech-clipboard.md`."* |
| `gearing-code-1to1.md:291` | A receipt row: *"Assigned output: only `docs/gearing-code-1to1.md`. Pre-edit SHA-256: `e6aa28d8…`"* — **pinned by hash** |
| `agentscope-clipboard.md:513` | A receipt row naming the permitted output at the time |
| `rust-nostd-branch-contracts.md:96` | *"…`docs/pointer-emission-prompt.md` **was absent**. On live `origin/main`…"* — a THEN/NOW in prose without the words |

**I claimed the clipboards station intending to re-point eight paths, read them first, and released it untouched.** Repairing them would have deleted eight dated receipts — the precise thing [pass 2's evidence exemption](verification-iter3-pass-2-findings.md) forbids, applied to documents I had not recognised as records.

## 2. Two more kinds, and the distinction under all of them

**Kind eight — the dated `THEN` path.** Deliberately preserved as a historical fact, with its `NOW` beside it. Remedy: **none, and repairing it destroys evidence.**

**Kind nine — the receipt row.** *"My assigned output was X."* Not pointing anyone at X; recording what X was called on the day. One is pinned by SHA-256.

**Under both:**

> **A citation says *go here*. A receipt says *this was the name then*.**

**No probe in this session could tell them apart** — not the path census, not pass 2's classification, not pass 6's queue. They resolve the path and report failure, and a receipt's path is *supposed* to fail.

## 3. This revises pass 2, and re-rules E5

**Pass 2's eleven "moved — repair, mechanical" become eleven "receipts — remedy none."** Its six kinds become nine, and its only actionable category empties.

**E5 is re-ruled: do not build the move-time list.**

[Pass 5 ruled build it](verification-iter3-pass-5-plan.md). **The evidence now says otherwise: of fifteen broken references tree-wide, zero need action.** The list would emit fifteen lines of which none is a defect, at a cost of a script and a human reading it every time files move. **A tool whose measured yield is zero is not worth the reading it demands.**

What survives from E5 is the knowledge, not the tool: **when a shelving campaign moves files, the thing at risk is a navigation citation, and this tree writes almost none of them in prose — it writes links, which the defrag rewrote correctly and which have stayed correct for 600 commits.**

## 4. Coverage, in fractions

| Pass | Scope | Coverage | Repaired |
|---|---|---|---|
| 1 | the board, twice | complete | — |
| 2 | 33 unresolvable references | **33 of 33 read in place** | 0 |
| 3 | 23 of this campaign's documents against cold-doors' stamps | complete | 0 |
| 4 | 45 renames, retroactive test of a proposed tool | complete | 0 |
| 5 | ~24 open rulings | **ruled**; D6/D4/D5/D7 applied to kit | — |
| 6 | the 11-item queue | **collapsed to 0** | **0** |

**Iteration 3 classified 33 references and repaired none — because none needed repairing.** That sentence was written into pass 6's plan as an accusation to be answered, and the answer is better than the accusation.

**Blocked and named:** `Q4` and `Q5` — one maps citation and **F7's validator rename** — wait on `maps`, held by `reference-Mapper` since 14:09Z. Not forced. [E2 ruled](verification-iter3-pass-5-plan.md) that being wrong by hand beats being wrong automatically.

## 5. What iteration 3 established

- **The tree has no citation rot.** Fifteen references fail to resolve and every one is correct as written: eight dated, three receipts, three conditional or forbidden, one a placeholder with a literal `N`.
- **Nine kinds of broken-looking reference**, of which **one** — a genuine moved navigation citation — has **zero live instances**.
- **The defrag's link rewrite has held for 600 commits.** The mechanical half of a file move is a solved problem here.
- **Rename volume is not citation risk.** Phase 5a moved 30 files and owed nothing.
- **The kit rulings landed**: the template carries an `EVIDENCE STATE` line, `NOT_RUN` is licensed, C01 and C10 cross-reference, and a stamp covers its sentence rather than its document.

## 6. What it could not

- **The five law items.** `D10`, `D11`, `2c-1` revised, `D12`, `D13` — human-authored text. Delegation inside the operating controls cannot reach above them.
- **F7.** Blocked on `maps`. The validator still passes five of six wrong plans and is still the last instrument with a measured live defect.
- **Tell a citation from a receipt mechanically.** §2. Nothing built this session can, and §3 is why nothing more should be built to try.

## 7. The board for iteration 4, measured at `74a73ab`

```bash
git ls-files '*.md' | wc -l
.claude/hooks/check-docs.sh
```

| | iteration 2 close | now |
|---|---|---|
| Tracked markdown | 259 | **~360** |
| Broken references, tree-wide | not measured | **15, of which 0 are defects** |
| Kinds of broken-looking reference | — | **9** |
| Checks failing their own label | 0 of 8 | **0 of 8**, re-verified live |
| Instruments with a measured live defect | 1 (F7) | **1 (F7)**, blocked |
| **Probe artifacts, this author, this session** | 10 | **12** |

**Iteration 4's question is not in this table.** Three iterations have now each ended by finding the measuring instrument wrong rather than the tree. **The candidate is whether anything in this repository still needs measuring at all**, or whether the remaining work is the five law rulings and F7 — in which case the honest next iteration is short.

## On the claim

`maps` is held by `reference-Mapper`. Committed without it on the basis used throughout: nothing but this campaign has touched `docs/plans/` since that claim, and their station file is untouched. A protocol violation, recorded rather than hidden.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

I claimed a station to straighten eight labels, read them, and found every one had been written crooked on purpose with the straight version beside it. **The rot was in the eye.** Emission remains `[GAP]`.
