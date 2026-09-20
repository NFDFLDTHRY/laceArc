# Verification iteration 5, pass 2 — findings

**Status:** record. **Station:** maps *(claimed at `1ed8c77`)*. **Emission:** `[GAP]`. No `src/`.
**Method:** [the pass 2 plan](verification-iter5-pass-2-plan.md). **Read-only on every other station.**

**The thesis lost on ownership and won somewhere else.** §1 is the loss; §2 is what the reading found instead.

---

## 1. Falsifier 1 fired. The label is true

[The plan](verification-iter5-pass-2-plan.md) said: *if the 31 are genuinely maps' work, the map is telling the truth and the repair is one line of documentation.* **Read in place, they are.**

**`docs/systems-manifest-ascii.md`, 2,625 lines, first line:**

> **Not the manifest.** `systems-manifest.md` is the Hands contract map; **this is an ASCII reading of it.**

The catch-all's own comment in `coord.sh` says *"Derivative maps of the manifest are maps work."* **This declares itself to be exactly that.** The 25 pass plans serve it.

**The five `math-execution-model` files** are a partial mathematical model with per-pass witness, adversarial, projection and arrival readings — and **their plans already live in `docs/plans/`**, which is maps by explicit rule. Products landing on maps is consistent with where their own planning shelf sits.

**So for all 31, `maps` is the right answer.** No file is misrouted. The catch-all has been correct the whole time.

**That is twice in two passes** — [I(b)](verification-iteration-5-plan.md) found one file rightly owned for the wrong reason, and §1 finds 31 more. **Iteration 3's warning holds a fourth time: a queue entry is a hypothesis, and this tree's defaults keep turning out to be right.**

## 2. What the reading found instead: the campaign is not in the protocol

**Falsifier 2 did not fire** — both campaigns are live. **38 commits** in 24 hours for `systems-manifest-ascii`, **19** for `math-execution`.

And then:

| | |
|---|---|
| Distinct agents that have ever held a station | **39** |
| Recorded holds on `maps` alone | **128**, across six agents |
| **Claims ever made by the `systems-manifest-ascii` campaign** | **zero** |

**Twenty-five passes. Twenty-six files. Thirty-eight commits in a day. No claim, ever.**

Every other campaign in this tree is in the protocol. The clipboard campaigns claim per pass — `webgpu Pass 2 PLAN only`, `wgsl Pass 3 EXECUTE`, `WebNN Pass 6 EXECUTE`. Every quiet door claimed. **The largest campaign in the tree by pass count has never used it.**

**So the defect is not the owner label. It is that a default owner silently enrolled a non-participating campaign into a contended station.** While `systems-manifest-ascii` was writing passes 24 and 25, `reference-Mapper` and this campaign were claiming and releasing `maps` — the station that nominally owns its 26 files — and neither side could see the other in the protocol.

### The arriving-agent test, run from the arriving agent's position

Pass 2's plan required this be run from where the newcomer stands, not from the auditor's chair.

An agent is told to pick up `systems-manifest-ascii` pass 26. It does the correct thing:

1. `coord.sh which docs/systems-manifest-ascii-pass-26-plan.md` → **`maps`**
2. It claims `maps`, as the standing rule requires.
3. **It is now in a station that the verification campaign claims and releases several times an hour** — and the campaign it actually joined is working beside it, unclaimed, invisible to `status`.

**The map answered truthfully and routed the agent into a collision.** That is the cost the human's ruling exposes: a handover label can be correct and still not hand over.

## 3. A second finding: the `AGENT` field holds two kinds of value

Reading all 39 names that have ever held a station:

| Kind | Examples |
|---|---|
| **An agent identity** | `Grok-coord` · `reference-Mapper` · `Claude-Projection` · `Codex-atomic-pass1` |
| **A pass-status sentence** | `WGSL Pass 6 PLAN ONLY — DIAGRAM SOUND / deep ASCII audit HELD` · `webgpu Pass 4 PLAN (HOST/GPU ASCII machinery HELD)` · `WebNN Pass 3 PLAN HELD` |

**Sixteen of the 39 are not names.** An arriving agent reading `AGENT:` to find out **who to ask** gets, in those cases, a description of what the work was — which is `NOTE`'s job, and `NOTE` is right beside it.

**Under the old model this was harmless**: the holder knew who they were. **Under the ruling it is not**, because the field's whole purpose becomes telling a stranger whom they are waiting on.

## 4. What should own each of the 31

**All 31: `maps`** — but *stated*, not defaulted.

| Files | Proposed rule | Why |
|---|---|---|
| `systems-manifest-ascii.md` + 25 pass plans | `docs/systems-manifest-ascii*` | It declares itself a reading of the manifest; the catch-all's own comment already calls that maps work |
| `math-execution-model*.md` (5) | `docs/math-execution-model*` | Its planning shelf is already `docs/plans/`, which is maps by explicit rule |

**Two patterns. No new station. No agent's protocol changes.** The default stops doing silent work and the map says out loud what it has been deciding.

**And the catch-all stays.** It is the fail-closed guard that lets an agent gate a brand-new path at `docs/` root; removing it re-opens the hole its comment describes. **The repair is to stop *relying* on it, not to delete it.**

## 5. Proposals, written and unapplied

**Nothing below was applied.** `coord.sh` is **coord**'s and it is code; [the iteration plan §5](verification-iteration-5-plan.md) forbids this campaign from editing it, and `CLAUDE.md` says ask.

| | Proposal | Whose |
|---|---|---|
| **P1** | The two explicit patterns in §4 | coord — code |
| **P2** | `docs/gearing/**`, from [pass 1 I(b)](verification-iteration-5-plan.md) — after which no file's owner depends on a glob crossing a slash | coord — code |
| **P3** | Add `force-free` to `coord.sh`'s `usage()`. The door documents it; the script's own help does not | coord — code |
| **P4** | State in the door that `AGENT:` is a name and `NOTE:` is the description | coord — prose |
| **P5** | **Not a proposal, a question for the human:** the `systems-manifest-ascii` campaign has never claimed. Should it, or is it exempt? **This campaign cannot rule on another's participation** | human |

## 6. What pass 2 establishes

- **The catch-all was right about all 31.** Falsifier 1 fired; the thesis took the loss on ownership.
- **Both campaigns are live**, so falsifier 2 did not fire and the question is not archival.
- **The largest campaign in the tree has never claimed a station**, while six agents made 128 holds on the station that nominally owns its files.
- **A true label routed a newcomer into a collision** — which is the cost the ruling exposes and could not have been seen before it.
- **`AGENT:` carries names and status sentences interchangeably**, harmless under long-lived claims and not harmless under handover.
- **The repair is two patterns and a question**, not two stations.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

We went looking for a length labelled wrong and found every label correct. **What we found instead was a second pair of hands on the lace that never signed for it** — and the map cannot show a hand that never reached for the tag. Emission remains `[GAP]`.
