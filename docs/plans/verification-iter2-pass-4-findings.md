# Verification iteration 2, pass 4 — findings

**Status:** record. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Method:** [the pass 4 plan](verification-iter2-pass-4-plan.md). **Pinned at `f6e54d4`.** Read-only on kit, prompts and clipboards.

---

## 4a — the common core exists, and it is a naming disagreement

All seven receipts inventoried. **Five of the seven, plus the template, head the section "Source and law receipt" or "Source and task receipt".** The heading is shared; the fields are not.

Read for what each slot *does* rather than what it is called, six recurring slots appear:

| Slot | Named, across the seven, as |
|---|---|
| **What was read** | Source coverage · Primary-source coverage · Original holder texts · Unread scope · Read coverage · Planning evidence |
| **Source identity** | Prior map identity · Source identity + Repository state + Local Git state · Local plan identity · Source pin and changes during reading |
| **What was not done** | Unread / unperformed · Not executed / not established · Known source limitations · Unread scope |
| **Permission / effects** | Permission / proof / enforcement · Permission / effects · Allowed file / effects · Allowed product |
| **Conflicts retained** | Known source conflict · Historical conflict retained · Known source differences · Open differences retained |
| **Completion** | Completion boundary ×2 · Completion · Completion checks · Next permitted task |
| *(physical evidence)* | Physical / visual evidence ×2 · Physical evidence · Graphics |

**The seven receipts agree on what to record and disagree on what to call it.** That answers §4's fork with evidence: this is **a broken form, not broken practice.** Agents converged on the same six slots without the template's help and gave them seven vocabularies because nothing offered them one.

The template could be re-cut from this. **Pass 4 does not cut it** — kit, and [D6](verification-iter1-pass-5-plan.md)'s neighbour.

## 4b — the anchor result holds, after removing my own artifact

The plan claimed **28 SHAs, zero unresolvable**. Re-run across all seven with a stricter pattern: **23 SHAs, three unresolvable.** The planning figure was a `head -12` sample and too optimistic. Corrected here rather than left standing.

**Then the three turned out not to be commits.**

| Document | "SHA" | What it actually is |
|---|---|---|
| `agentscope-clipboard.md` | `6464d69d…` | the attachment hash of `agentscope-diagnosing-insights.pdf` |
| `petersen-zech-clipboard.md` | `a8505f3d…` | the attachment hash of the Petersen PDF |
| `petersen-zech-clipboard.md` | `c84383fa…` | the tail of that same attachment filename |

**A hex string is not a commit because it looks like one.** That is the use/mention defect in my own probe for the second time this iteration, after `L0`. Shown rather than silently fixed, because the corrected number only means something with the correction attached.

**Corrected result: 20 of 20 genuine commit identities resolve. Zero bad.**

### Paths, against commits

| Anchor | Total | Unresolvable |
|---|---|---|
| Commit identities | 20 | **0** |
| Cited `docs/…` paths | 32 | **10** |

Every one of the ten is a **pre-defrag path**, and all five distinct ones relocate cleanly:

| Cited | Lives at |
|---|---|
| `docs/agentscope-clipboard.md` | `docs/clipboards/…` |
| `docs/clipboard-five-stakes.md` | `docs/clipboards/…` |
| `docs/petersen-zech-clipboard.md` | `docs/clipboards/…` |
| `docs/gearing-code-1to1.md` | `docs/clock/…` |
| `docs/rust-nostd-crate-map.md` | `docs/plans/…` |

**Two of them are self-references.** `petersen-zech-clipboard.md` cites `docs/petersen-zech-clipboard.md`, and `gearing-code-1to1.md` cites `docs/gearing-code-1to1.md` — **documents that cannot find themselves.**

**So the plan's claim survives, sharpened: a receipt pinned to a commit survives the churn; a receipt pinned to a path does not.** 0 of 20 against 10 of 32.

### The same commit, a third time

The breakage traces to **`94cdba8` *Defrag pass 1*** and **`f1adf2d` *Defrag pass 2***. Those are the same commits [iteration 1's pass 4](verification-iter1-pass-4-plan.md) found had broken the coherence audit log's citations.

**One re-shelving campaign has now been measured breaking citations in two unrelated instrument families**, an audit log and a set of receipts, in the same shape both times. Not a finding against the defrag — the moves were right and the files are all present — but the cost of a move is paid by everything that cited the old path, and nothing in this tree re-points citations when a file moves.

### One claim corroborated by work already done

`atomic-primitives-map.md`'s receipt reads **"D1 transcription checked against the image."**

[Iteration 1 pass 2a](verification-iter1-pass-2-findings.md) read the image and checked that transcription: **byte-identical, every one of the eleven rows.** The receipt's claim is true, verified independently, by a pass that did not know it was testing a receipt.

**That is the only receipt claim in this tree with external ground truth**, and it held.

## 4c — the prompts door is a filing gap, not a reachability gap

| | |
|---|---|
| Files on the shelf | 16 |
| Links in its own door | **0** |
| **Linked from somewhere in the tree** | **16 of 16** |
| Door last touched | `94cdba8`, the same Defrag pass 1 |

**Every prompt is reachable. The index is simply empty.** The `door covers 0/16` advisory is real, and it reads far worse than it is — no prompt is orphaned, and check 6 agrees.

**This bears directly on [D1 and D2](verification-iter1-pass-5-plan.md).** Gating door coverage would block the tree on a shelf that is fully reachable, for a cosmetic gap, while [pass 2](verification-iter2-pass-2-findings.md) showed the same check can be satisfied by a mention inside a code fence. **The check punishes an honest empty index and accepts a dishonest full one.**

## Observed during the pass, not caused by it: `main` is red

While this record was being written, `main` went red on a check-4 failure that is **not this pass's and not this station's**:

```
broken link in docs/clipboards/wgsl-mechanisms.md -> wgsl-ascii-machinery.md
```

Committed by `e6dd515` *Execute WGSL Pass 3*. The clipboards station is FREE and that campaign has moved on. **Not repaired here** — another station's file, another campaign's in-flight work, and this iteration has declined that consistently.

**But it is on this pass's subject.** The link points at a file a later pass of that campaign will create. It is a **forward reference**, and check 4 reports it identically to a link whose target will never exist.

**Check 4 cannot tell a *not yet* from a *never*.** That is the sibling of the use/mention defect [pass 2](verification-iter2-pass-2-findings.md) measured: same check, same inability to read context, and it is the first time in this session the defect has held the gate shut on four campaigns rather than merely miscounting.

Reported to the human rather than fixed.

## Coverage

| Sub-pass | Scope | Done |
|---|---|---|
| 4a | 7 receipts, all field sets | complete |
| 4b | 20 commit identities, 32 paths, 1 corroborable claim | complete |
| 4c | 16 prompts, their door, their inbound links | complete |

**Not covered:** whether each receipt's *prose* claims are true. Only the anchors and the one corroborable visual claim were testable; the rest — "read in full", "did not hold a cord" — have no external check and are marked untestable rather than passed. The template says this of itself: *"A receipt is not an authentication mechanism."*

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Seven people wrote down the same six things and gave them seven names. **The form was never the problem agents had; the names were, and no one handed them a list.** Emission remains `[GAP]`.
