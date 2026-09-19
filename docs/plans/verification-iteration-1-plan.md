# Verification — iteration 1

**Status:** `[PROPOSAL]`. Plan only. Six passes, one station per commit, each waiting on its own go.
**Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Previous iteration:** [the restructure](restructure-plan.md), iteration 0, phases 0–6 complete but for `5-pre`.

## 0. What iteration 1 is

**Iteration 0 made the repository legible. It never asked whether what the documents say is true.**

Doors, owners, law copies, identifier families, orphans — all of that is form. A document can be perfectly filed, reachable from its shelf, owned by a station, and wrong about the graphic it cites. Nothing in iteration 0 would have noticed.

Iteration 1 is about **truth**: whether a claim matches its source, whether evidence is reported at its actual strength, and whether the verdicts already on record still hold.

## 1. The board, measured at `d7657c8`

| | |
|---|---|
| Tracked files / markdown | 220 / 150 |
| Commits in the last 24 hours | 331 |
| **Commits since the last coherence-audit tick** | **196** |
| Documents citing a graphic panel | 97 |
| Panel cites in unambiguous context | 241 |
| **Out-of-range panel cites** | **1** |
| `proved` · `verified` | 42 · 23 |
| `NOT_PERFORMED` · `UNESTABLISHED` · `NOT_RUN` · `NOT_TESTED` | 16 · 19 · 6 · 8 |

**The mechanical surface is near its limit, and that is the finding.** One out-of-range cite in 241 is a 0.4% error rate on everything a script can see. The checks added in iteration 0 — links, orphans, doors, law parity, stale absence — now report a clean tree.

**What a script cannot see is the whole remaining problem.** The one citation error this session actually produced was `B10` written where `B11` belonged: both panels exist, both are in range, and the sentence read correctly. It was caught by an outside reviewer reading against the source, not by any check. That class is invisible to tooling and is what iteration 1 must address by reading.

**The verdicts on record are stale.** The coherence audit's 18 ticks walked stations A1–A14 and returned `ok` against tips at or before `33b7e79`. Main is **196 commits** past that. Every `ok` in that log describes a tree that no longer exists — which is not a criticism of the audit; it is what happens when a campaign stops and the repository does not.

### Pass 1 finding, for pass 2 to adjudicate

`docs/clipboards/rowlands-zero-to-infinity-mechanisms.md:89` cites **`D7`** in a Hands-cite field. Graphic D has six panels. Either it is a typo for `D6`, or `D7` names something that is not a panel and the field is wrong. **Not fixed here** — it is a clipboards path, and which repair is right depends on reading the source.

## 2. The six passes

| Pass | Station | Question it answers |
|---|---|---|
| **1** | maps | What is checkable, what has been checked, and where the stale line falls. **This document.** |
| **2** | per-document | Do the load-bearing citations match their source? Read, not grep — the `B10`/`B11` class. Scope: the documents other documents depend on most — manifest, close reading, atomic map, reason model. |
| **3** | per-document | Is every `proved` and `verified` claim reported at its actual strength? C10 requires it; 65 such words are in the tree against 49 explicit not-done markers. |
| **4** | maps + prompts | The 18 audit ticks are `ok` against a tree 196 commits gone. Either re-walk, or date the log's verdicts the way `downstream-audit.md` dates its findings — frozen claim, live status elsewhere. **Coordinate first: that campaign is another agent's.** |
| **5** | kit + coord — **human** | Enforcement. Doors drifted within eight minutes of iteration 0 closing. Does check 8 gate? Also the check-5 quotation gap, dodged three times. |
| **6** | maps | Receipt: what iteration 1 established, what it could not, and the board for iteration 2. |

## 3. What this iteration must not do

- **Not fill `[GAP]`.** Verifying a citation is not answering pointer-emission, and a tidy verification record is not evidence that Core may begin.
- **Not rewrite a dated artefact to make it current.** The `downstream-audit.md` model stands: freeze the claim at its pin, put live status in the append-only log.
- **Not take another agent's campaign.** Pass 4 touches the coherence audit; it is coordinated or it is reported, not seized.
- **Not confuse a clean check for a true document.** That confusion is the entire reason this iteration exists.

## 4. Accept iteration 1 when

Every load-bearing citation in the four most-depended-on documents has been read against its source and marked correct or corrected; every `proved`/`verified` claim carries evidence at its stated strength or is downgraded; the audit log's stale verdicts are dated or re-walked; and the board for iteration 2 is written from measurement rather than recollection.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A filed, reachable, well-named document can still be wrong about the cord. Iteration 0 put everything on a shelf. Iteration 1 reads it. Emission remains `[GAP]`.
