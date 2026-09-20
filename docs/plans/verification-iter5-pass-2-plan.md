# Verification iteration 5, pass 2 — what the map tells an arriving agent

**Status:** **EXECUTED.** [Findings](verification-iter5-pass-2-findings.md) — **falsifier 1 fired; the label was true and the campaign was absent.** **Station:** maps *(this document)*. **Emission:** `[GAP]`. No `src/`.
**Iteration:** [iteration 5](verification-iteration-5-plan.md). **Board pinned at:** `1758a7d`.

## 0. A human ruling landed, and it changes what pass 2 is asking

**Recorded verbatim, because nothing else in the tree carries it yet:**

> *"Agents can only claim or release claims, and I will be telling whatever is currently functioning to clear claims. This is so whoever is available can pick up future work."*

**Three things follow, and the third is the one that moves this pass.**

1. **An agent's repertoire is `claim` and `release`. Nothing else.** `force-free` is a human-directed action, executed by whichever agent is alive when the human says so.
2. **Clearing is not expiry and never becomes automatic.** This agrees with [`docs/coord/README.md:97`](../coord/README.md) — *"It is an override, not an expiry: nothing in this protocol decides a claim is stale, and a human still does"* — and with [`E2`](verification-iter3-pass-5-plan.md), which ruled no expiry on evidence that has not moved.
3. **The reason given is *"so whoever is available can pick up future work."* That makes the station map a handover document**, not just a lock table. Its job is to tell an arriving agent **what campaign it is joining.**

**So pass 2's question sharpens.** [Pass 1](verification-iteration-5-plan.md) asked who *owns* the 31 catch-all files. The ruling asks the harder version: **what does the map tell an agent who arrives at one of them, and is it true?**

## 1. What the ruling meets when it arrives

Measured at `1758a7d`, before this pass proposes anything.

### The protocol and its own script disagree about the command surface

| | `force-free` |
|---|---|
| [`docs/coord/README.md`](../coord/README.md) lines 18 and 97 | **documented**, with its override-not-expiry rule stated |
| `coord.sh` `usage()` | **absent** — it advertises `status·which·claim·release·check·refresh·doctor·gate` |
| `coord.sh` dispatch | **present and callable** |

**An agent reading the door knows the command exists. An agent reading `--help` does not.** The same script is its own two sources of truth, and they differ — which is mapping **I**'s defect in miniature and squarely this iteration's subject.

### The authorization the ruling states is not in the code

`cmd_force_free` requires a **reason** and writes it into `NOTE`, so an override is never silent. **It contains zero authorization checks.** Any agent may call it with any reason string.

**The rule lives in prose and binds nothing.** That is not automatically a defect — [`E1`](verification-iter3-pass-5-plan.md) ruled against enforcement on measured evidence and [pass 4 of iteration 4](verification-iter4-pass-4-findings.md) re-confirmed it on a replay. **The point here is only that the ruling's force is conventional**, and pass 2 must say so rather than imply the code carries it.

**This campaign's own two force-frees are the worked example and are not exempt from the record.** `history` and `law` were cleared on 20 September **after asking and being told to**, which is exactly the shape the ruling describes. The authorization is in each `NOTE`. Had the answer been no, nothing in the code would have stopped the call.

### Claim traffic is back up

**46 of the last 200 commits — 23%.** Iteration 4 pass 5 measured 16.5% over the same window size and phase 7 targeted under 5%. **The ruling will push this further up, not down**, because clearing-so-others-can-pick-up means more release events, not fewer. **Phase 7's premise moves again**, and pass 6 must re-measure rather than carry today's number.

## 2. The 31, read as a handover

The work of the pass. For each of the 31 files the catch-all owns:

| | |
|---|---|
| **2a** | **Read it in place.** Which campaign, what state, is it live. Iteration 3's standing warning applies — eleven queued repairs were all correct as written, and the default may be too |
| **2b** | **Stand where the arriving agent stands.** Run `which`, receive `maps`, and ask what that tells them. Does the answer name the campaign they are joining, or this campaign's station? |
| **2c** | **Name the owner each file should have**, including where the answer is **not maps** — §5 of the iteration plan requires that this campaign not audit its own windfall quietly |
| **2d** | **Propose, do not apply.** Two new station rules change the protocol every agent runs. `coord.sh` is coord's and it is code |

## 3. The thesis, stated so it can lose

**A default owner is a lie to an arriving agent, and the ruling is what makes it one.**

While claims were long-lived and an agent worked its own campaign end to end, `maps` on those 31 files cost nothing — the agent already knew what it was doing. **Once any available agent picks up any available work, the map is the only thing that tells them**, and for 31 files it names a station belonging to a different campaign.

**Falsifier, and it is the same one pass 1 wrote:** if reading the 31 shows they genuinely are maps' work — *"derivative maps of the manifest are maps work"*, as the rule's own comment claims — then the map is **telling the truth**, the arriving agent is correctly routed, and the repair is one line of documentation rather than two stations. **2a decides it by reading, not by counting.**

**Second falsifier:** if the two campaigns turn out to be finished rather than live, then nobody will arrive at those files and the whole question is archival. **Checkable from their last commit dates in 2a.**

## 4. What pass 2 must not do

- **Not edit `coord.sh`.** Coord's, and code. Both §1 findings and any new rule go to pass 5.
- **Not call `force-free`.** The ruling says an agent claims and releases. This pass does neither beyond `maps`, which it holds to write this document.
- **Not add a station.** Naming who *should* own a path is pass 2's; changing `RULES` is the human's.
- **Not treat the ruling as retroactive.** The two force-frees on 20 September were authorized when made, and the record says so.
- **Not rewrite a dated artefact.** Standing since iteration 1.
- **Not fill `[GAP]`.**

## 5. Accept pass 2 when

All 31 files are read in place and each carries a named should-own with a reason; the arriving-agent test is run and reported from that agent's position rather than the auditor's; the two protocol findings in §1 are stated at their measured size; the human's ruling is recorded somewhere durable with its placement proposed for pass 5; and the thesis is reported as held or lost against both falsifiers.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

The map was a lock table while one pair of hands held each length. **The ruling makes it a label read by whoever picks the lace up next** — and a label that says *maps* on another campaign's work is worse than no label, because the next pair of hands will believe it. Emission remains `[GAP]`.
