# Verification iteration 3, pass 2 — findings

**Status:** record. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Method:** [the pass 2 plan](verification-iter3-pass-2-plan.md). **Pinned at `47216e9`.** Read-only on every station but this one.

---

## The result: eleven broken references, all of one kind

Of 997 path-shaped references tree-wide, 33 do not resolve. **Reading each one in place leaves eleven.**

| Kind | Count | Remedy | Owner |
|---|---|---|---|
| **Moved** | **11** | re-point; mechanical, every target confirmed present | clipboards ×8, hologram ×1, maps ×1, prompts ×1 |
| **Quoted as evidence** | 19 | **none** — exempt by document | — |
| **Conditional or forbidden** | 3 | **none** — repairing them would break the citing document | — |
| Never arrived | **0** | — | — |
| Not yet | **0** | — | — |

**Pass 1 predicted four kinds and a fifth. The reading found a sixth, and collapsed two of the predicted ones to zero.**

## The sixth kind, and it inverts the census

All three of the references pass 1 filed as *"never arrived"* are **named but not asserted.** Read in place:

| Reference | What the document actually says |
|---|---|
| `clip-and-five-refs-prompt.md:144` → `five-refs-clipboard.md` | **"Do not invent `docs/five-refs-clipboard.md` — that name is wrong."** |
| `gearing-html-iterate-prompt.md:159` → `gearing/ITERATE-LOG.md` | "**Optional:** append to …" — an option nobody took |
| `systems-manifest-ascii-pass-4-plan.md:61` → `…-ascii-panels.md` | "…**or** `…-panels.md` **if** the companion would exceed one screen — **prefer one file**" |

**The first one is a prohibition. The census read "do not invent this file" as "this file is cited and missing."**

**Remedy: none, and the remedy matters.** Repairing these would mean creating a file a document explicitly forbids, taking an option a document marks optional, and triggering a branch a document says to prefer against. **Three of the fourteen "defects" were instructions working exactly as written.**

None of the three targets has ever existed in any branch's history — which the census read as decay and is in fact compliance.

## The eleven that are real

Every one is a **pre-defrag path**, and every target is present under its new name:

| Cited | Lives at |
|---|---|
| `docs/agentscope-clipboard.md` | `docs/clipboards/…` |
| `docs/clipboard-five-stakes.md` | `docs/clipboards/…` |
| `docs/petersen-zech-clipboard.md` | `docs/clipboards/…` |
| `docs/gearing-code-1to1.md` | `docs/clock/…` |
| `docs/rust-nostd-crate-map.md` | `docs/plans/…` |
| `docs/pointer-emission-prompt.md` | `docs/prompts/…` |

**Three documents cannot find themselves:** `agentscope-clipboard.md`, `petersen-zech-clipboard.md` and `gearing-code-1to1.md` each cite their own pre-defrag path. Pass 1 found two; reading found the third.

**Not repaired here.** Eight are clipboards', one hologram's, one prompts'. [Pass 4](verification-iteration-3-plan.md) proposes the mechanism; the edits belong to those stations.

## The evidence exemption, as a rule

> **A document that cites a broken path in order to report it is not thereby broken.** The exemption is **by document, not by path**: a findings record, an audit log tick, or a plan cataloguing rot keeps its citations verbatim, because they are the evidence.
>
> **Corollary, and the reason this is written down:** never "repair" a findings record by re-pointing the paths inside it. That deletes the finding and leaves a document claiming something it no longer shows.

Nineteen of the thirty-three fell under this. The single largest contributor is `verification-iter2-pass-4-findings.md`, which carries the exact five paths it was written to name.

## Handed to pass 4: the collision, now measured

**Thirteen of the fourteen candidates were written inside backticks — and all eleven real ones are.**

Check 4 reads none of them. [D3/E6](verification-iter2-pass-5-plan.md) taught four checks to blank backticked spans **on purpose**, because a backticked token is a mention.

**So every real broken reference in this tree is invisible to the checker by design.** Pass 4 cannot answer this with "add a check". It has to answer: *what distinguishes a path named as a path from a path named as a word* — and this pass just showed the hard case is not exotic. **"Do not invent `docs/five-refs-clipboard.md`" is a backticked path that must never be followed, resolved, or repaired.**

Any check that reads backticked paths will flag it. Any check that skips them will miss all eleven.

## Coverage

| | |
|---|---|
| Path references examined | **997** |
| Unresolvable | 33 |
| **Read in place** | **33 of 33** |
| Classified | 33 — 11 moved, 19 evidence, 3 conditional |
| Repaired | **0** — by design; ten of the eleven are other stations' |
| Probe artifacts found in planning | 2, both before publication |

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Thirty-three loose ends. Nineteen were the list of loose ends. Three were labels saying *do not tie this*. **Eleven were loose.** Emission remains `[GAP]`.
