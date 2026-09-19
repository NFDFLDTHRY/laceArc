# Verification iteration 3, pass 5 — the rulings, taken

**Status:** `[PLAN]`. **This pass rules.** Execution NOT_RUN.
**Station:** maps for this document; the rulings name their own stations.
**Emission:** `[GAP]`. No `src/`. **Pinned at `4ed3c6e`.**
**Iteration:** [iteration 3](verification-iteration-3-plan.md), pass 5 of six. Passes 1–4 EXECUTED.

## 0. A departure, stated

Pass 5 has twice been a brief that measured and referred upward. **The human has delegated these rulings, so this one takes them.**

**Delegation does not transfer law.** `CLAUDE.md` says the human-authored law governs the operating controls. Five items below are law-station text, and they stay with the human however the rest is delegated — listed in §3, with what each needs, so ruling them is cheap.

## 1. Already applied, verified at `4ed3c6e`

| | Ruling | Evidence |
|---|---|---|
| **D3 / E6** | four checks read prose through `_prose` | 4 call sites in `check-docs.sh` |
| **E3** | `coord.sh` has `force-free`, reason required | `cmd_force_free` present |
| **E4** | `resync.sh` names its caller, refuses without one | usage guard present |

## 2. Ruled here

### Enforcement — no gate

**`E1`: no enforcement mechanism. `D1` and `D2`: the door and orphan checks stay advisory.**

Two forward references arrived within one hour and **both resolved on their own** — WGSL after 21 commits, graphics the same day. A gate would have blocked four campaigns over files that were always going to land. The measured price of enforcement is higher than the measured price of drift.

**Revisit only on evidence**, not on a date: when the checker has run a month without a false positive. Until then, `D1`/`D2` have the same answer as every other check, and it is *no*.

### The evidence vocabulary — the template decides it, so fix the template

**`D6`: add C10's `Evidence state` line to the task template. `D4`/`D5` follow from it.**

[Iteration 1 pass 3](verification-iter1-pass-3-findings.md) measured the mechanism: **every token the template ships is adopted somewhere; every token it omits has zero uses across the tree.** `Evidence state` is the omitted field, and `PROVED_WITHIN_SCOPE` is the token nothing has ever written.

- **`D4` — which vocabulary governs:** both, and they are not rivals. C01 answers *how was this grounded*, C10 answers *how strong is the evidence*. They were never reconciled because nothing made anyone hold both at once. **A cross-reference in `agent-control.md`, one line each way.**
- **`D5` — `NOT_RUN`:** license it. It is in 6 files and on the template already; it belongs on the `Evidence state` line beside `NOT_TESTED`.
- **`D7` — does a grounding stamp have a scope:** **yes, the sentence it sits in.** [2a](verification-iter1-pass-2-findings.md) found a `VISUALLY_OBSERVED` earned for a transcription and over-reaching by the end of the document. **Stamps are per-claim, never per-document.**

kit is FREE. This is the single highest-leverage edit measured across three iterations, and it is one line plus two cross-references.

### Coordination — no expiry

**`E2`: no claim expiry rule.**

`force-free` covers the case with a human in it. An expiry would auto-free a slow but live agent, and this session has been on both sides of that: I held `maps` for eight hours and `reference-Mapper` rightly took it. **Being wrong by hand is cheaper than being wrong automatically**, because a hand is attached to someone who can be told.

### E5 — build the list, and sweep our own debt

**Build the move-time completeness list.** [Pass 4](verification-iter3-pass-4-findings.md) tested it retroactively: it would have shown 20 citations at defrag time, of which 3 are still broken. It gates nothing, runs six times in 633 commits, and its known limit — a root-level rename cannot be swept mechanically — is written into the proposal.

**And sweep Phase 5a.** Thirty renames, this campaign's own commit, no sweep after it. **The largest unswept move in the repository is ours.** It touches clipboards, hologram and prompts, so it runs station by station.

*The list is code in kit or coord. `CLAUDE.md` requires asking before a commit that adds code; the delegation covers it, and this sentence is the record that it was not assumed.*

### F7 — rename it, do not repair it

**The validator is a schema checker named for a plan checker.** It passes five of six deliberately wrong plans and returns a summary byte-identical to the golden's.

**Ruling: rename the tool and its output to say what it checks** — shape, ids, endpoints, one honesty flag — and record in `hologram-ast-ir.md` that no tool currently checks the graph against the plan.

**Not repaired**, and the reason is not cost: the plan it would check still has [open amendments](rust-nostd-second-reading.md) A1–A10. **A validator built against a plan under revision would be wrong in a new way**, and the current defect is at least documented. Renaming is honest today; repairing is guesswork until the plan settles.

### The sixth stamp

**`UNPINNED` is offered to cold-doors, not adopted here.** [Pass 3](verification-iter3-pass-3-findings.md) found ten of this campaign's documents carry measurements with no pin and fit none of the five stamps. **That register is kit's and six passes deep. The offer stands; they rule it.**

## 3. Not mine, under any delegation — law station

| | What it needs |
|---|---|
| **`D10`** | Three `graphics-close-reading.md` defects: a D4 quotation missing "in the main data structure", "panel labels are not printed" wrong on three graphics, "indices are permanent" unstamped |
| **`D11`** | `law-why-these-documents.md` line 10 against its own IMPLEMENTATION LAW block — *exists* versus *has accepted*. **Found independently by cold-doors row 4; rule it once** |
| **`2c-1` revised** | `centimetre`→`centimeter`, and the conversion table as `UNSUPPORTED`: it asserts pointers cost no lace, which D1 refutes six to five |
| **`D12`** | Renderer station scope — one frozen artifact, or three viewers |
| **`D13`** | Restructure phases 7 and 8, both protocol or law |

**These change human-authored text or the shape of the law.** The repository's first rule is that the human-authored law governs the operating controls; a delegation inside the operating controls cannot reach above them.

## 4. What pass 5's execution does

1. **D6, D4, D5, D7** — kit. The template line and two cross-references.
2. **E5** — build the list; sweep Phase 5a station by station.
3. **F7** — rename, and record the gap in the IR plan.
4. **E1, E2, D1, D2** — nothing to build. Recorded as ruled so iteration 4 does not re-open them.

## 5. Accept pass 5 when

Every item in §1–§3 carries a ruling or a named owner; the kit edits are applied and verified against the measurement that motivated them; the list exists and its retroactive hit rate is re-checked; Phase 5a is swept or the blocked stations are named; and §3 is on one page for the human.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Twenty-odd questions, and most of them answer to one sentence: **the thing in front of the agent at the moment of writing is what gets used.** Fix the template, not the law. Build the list, not the gate. **And sweep the shelf we moved ourselves.** Emission remains `[GAP]`.
