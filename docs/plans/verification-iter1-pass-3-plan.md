# Verification iteration 1, pass 3 — evidence at its actual strength

**Status:** `[PLAN]`. **EXECUTED** at `0b97eec` — [the record](verification-iter1-pass-3-findings.md). **Station:** maps (this file and the shared record only).
**Emission:** `[GAP]`. No `src/`.
**Iteration:** [verification iteration 1](verification-iteration-1-plan.md), pass 3 of six. Pass 1 EXECUTED; pass 2 at 2a.

## 0. The question moved when it was probed

The iteration plan set pass 3 as: *"Is every `proved` and `verified` claim reported at its actual strength? C10 requires it."* Probing before scoping — pass 1's rule, pass 2's practice — moved it.

**The tree does not mainly have an overstatement problem. It has two standards for the same job, and the one that was adopted is not the one the iteration plan cites.**

## 1. Measured at `7e87833`

### C10's vocabulary is used nowhere but C10

`agent-control.md:530` (C10) prescribes four independent fields. Its scoped evidence terms, counted tree-wide:

| Token C10 prescribes | Occurrences | Where |
|---|---|---|
| `PROVED_WITHIN_SCOPE` | **1** | `agent-control.md` — the table that defines it |
| `VERIFIED_FOR_NAMED_PATH` | **1** | same |
| `NOT_CHECKED` | **1** | same |
| `REFUTED` | **1** | same |

**Zero adoption outside the definition.** The two tokens that carry a scope — `PROVED_WITHIN_SCOPE`, `VERIFIED_FOR_NAMED_PATH` — are exactly the ones a bare `proved` or `verified` drops the scope from, and neither has ever been written in anger.

### C01 prescribes a *different* vocabulary, and that one was adopted

`agent-control.md:414`, inside **C01 — Establish the actual project state**:

> Record grounding as `HUMAN_REPORTED`, `VISUALLY_OBSERVED`, or `NOT_PERFORMED` … leave structural judgments dependent on the missing images `[BLOCKED]`.

| Token C01 prescribes | Occurrences | Files |
|---|---|---|
| `NOT_PERFORMED` | 17 | 14 |
| `VISUALLY_OBSERVED` | 9 | 9 |

**Neither appears in C10's permitted list.** The two clauses overlap without citing each other — C01's `VISUALLY_OBSERVED` against C10's `OBSERVED`, C01's `[BLOCKED]` against C10's `BLOCKED` — and the tree writes C01's set roughly twenty-six times to C10's zero.

### A third set is in live use and licensed by neither

`NOT_RUN` — **9 occurrences across 7 files**, in no list in either clause, defined nowhere in the tree.

### Four-field adoption is three documents out of 156

Only `graphics-close-reading.md`, `agent-interaction-model.md` and `restructure-plan.md` carry C10's four-field shape at all. The first of them fills `Evidence state` with `VISUALLY_OBSERVED` — the best-behaved document in the tree, using a token its own stated standard does not license.

## 2. The size, and why grep cannot cut it

**173 claim-bearing lines** carry `proved` / `proven` / `verified` / `proves` / `verifies`.

The distinction that decides every verdict is between a **claim** ("this was verified") and a **condition** ("must be proven before the next birth"). Two proxies were tried:

| Proxy | Lines caught |
|---|---|
| modal — `must be` / `until` / `once` / `after` … `proven` | 18 |
| assertive — `is` / `was` / `has been` / `we` … `proved` | 19 |
| **explained by either** | **37 of 173 — 21%** |

**The other 136 lines can only be classified by reading.** Recorded because this is the third count in this iteration to dissolve on contact: pass 1's out-of-range cites went 1 → 0, pass 2's cite total split into a coincidence, and now the modal/assertive split will not mechanise.

## 3. Three sub-passes

| Sub-pass | Target | Lines | Question |
|---|---|---|---|
| **3a** | the standard | — | Which vocabulary governs? C01 against C10, the undefined third set, and what every token in live use would map to under each. **Findings only** |
| **3b** | the receipts | ~50 | Documents asserting work already checked, and cited downstream for it: `downstream-audit.md`, `coherence-audit-log.md`, `gearing-code-1to1.md`, `atomic-primitives-map.md`'s evidence tables, the pass records. **The claims with consequences** |
| **3c** | the modal cluster | 61 | Four rust documents hold 61 of the 173 lines, all about code that cannot exist yet. Confirm every one is a condition and none has quietly turned assertive |

3b is the load-bearing one. A stale receipt is the failure pass 1 already measured at scale — 249 commits past an audit log whose every tick reads `ok`.

**3c retires or confirms an existing finding rather than re-deriving it.** [The rust second reading](rust-nostd-second-reading.md) already filed F5, *"proven has no evidence standard"*. If 3c finds all 61 modal, F5 is the whole of it and 3c closes in one line.

## 4. Read-only, and the routing is now precedent

The 173 lines span **five stations** — maps, prompts, kit, hologram, history. `agent-control.md` is kit, and C01 and C10 are operating law.

**Pass 3 edits none of them.** Findings land in one maps-owned record, the way 2a established. One claim, one file, no contention with four campaigns. *(Executed as its own file, not inside the pass 2 record: filing pass 3 under a pass 2 name is the incoherence iteration 0 undid.)*

**Reconciling C01 and C10 is not pass 3's to do.** It is a kit edit to law-adjacent text, and which vocabulary wins is a human ruling. Pass 3 states the collision, counts it, and proposes; pass 5 is where enforcement questions are decided.

## 5. Verdicts

2a's set, plus what this pass needs:

| Verdict | Means |
|---|---|
| `SCOPED` | The claim names its scope, revision or path — what `PROVED_WITHIN_SCOPE` was built to force |
| `UNSCOPED` | An assertion that something was proved or verified, with no scope, revision or path attached |
| `MODAL` | A condition on work not yet begun. **Not an overstatement, and not a finding** |
| `QUOTING` | The word belongs to a source or rule being cited, not to the citing document |
| `UNLICENSED` | The token sits outside both C01's list and C10's |

`MISQUOTE` carries over from 2a, and on current evidence it will be needed: a document quoting C10's vocabulary while using C01's is the same defect in a different costume.

## 6. What pass 3 must not do

- **Not reconcile C01 and C10.** State the collision; kit and the human decide.
- **Not rewrite a token in a document it does not own** — which is all of them.
- **Not read a modal `must be proven` as an overstatement.** That is the most likely way to manufacture a false finding here, and 61 of 173 lines are exposed to it.
- **Not re-derive F5.** Confirm it or retire it.
- **Not fill `[GAP]`.** An unscoped claim downgraded is still not evidence that Core may begin.

## 7. Accept pass 3 when

Every one of the 173 claim-bearing lines carries a verdict; the C01/C10 collision is stated with counts on both sides and a proposal for which governs; every `UNSCOPED` finding is named by file and line with the scope it would need; and F5 is either confirmed or retired by name.

Coverage is reported as a fraction. A sub-pass that stops says where.

## 8. The resync obligation, tracked

The fire at `0105588` obliges re-reading Hands then Shadow before the next drop. **Graphics D and C were read directly this session; A and B were not** — 2c and 2d carry that. Pass 3 does not rest on the panels, so it proceeds; noted here so the obligation is tracked rather than assumed away.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A knot you tied and a knot you say you tied look identical in a document and nowhere else. Pass 2 asks whether a document points at the right panel. Pass 3 asks whether the person writing it had actually looked. Emission remains `[GAP]`.
