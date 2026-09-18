# Systems Manifest — Where the Water Is Loud (clutch / proofing)

## Overview

Water is Gear W: the alignment clutch between operator and workpiece, and between two operators. It is not Lace Core. It is not Graphic D. It is not HCC oil. It is not the Cup wheel. It does not close POINTER emission.

**Pass 1 source:** attachment `Where the Water Is Loud.txt`. Not in git.  
**Compressed ancestor:** `docs/clock/philosophy-map.md` Gear W. Attachment wins.  
**Hands court:** `docs/graphics/` + `docs/systems-manifest.md`.

Author question: *Why are we talking so much and understanding so little?*  
It does not decide who is right. It decides whether understanding is even possible yet.

Two proofing systems + one interface:

- **A Proof Ledger** — can we point at what we’re talking about? OBS | DELTA | UNK | INVALID
- **B River** — where are we standing? Banks → Rapids → Delta → Crossing
- **Interface** — translate location into ledger requirements and back. Kernel sentence is the lever.

Stamps: `[H]` clutch · `[X]` forbidden as Core type · `[I]` kin-read · `[GAP]` Hands silent or source-open.

---

## Puzzle Pieces

### Story — specimen

- **Kind:** Specimen / walk-through
- **Source location:** Story
- **Purpose:** Three men, food talk, one word “Narrative,” heat, leave, write, then “pick one thing you can point at.” River metaphor arrives later as the same fact.
- **Invariants:** From outside it looked like disagreement. From closer: standing in the wrong place. No one had to be malicious or stupid. Heat-lines that could not be touched: “You’re not listening.” “You’re trying to control the conversation.” “This shouldn’t be this hard.” Those left heat. They are INVALID specimens, not new buckets. “I can’t speak here” is FM-A2 in the room.
- **Failure modes:** Treating the story as Core types or as a moral.
- **Hands:** `[H]`

### A-OBS — Observation

- **Kind:** Bucket
- **Source location:** System A §1; Specs A2
- **Purpose:** Something that can be pointed at. Time/context anchor, concrete event or quote.
- **Inputs:** A located claim.
- **Outputs:** An OBS in one party’s inventory. Inventories need not match yet.
- **Invariants:** If it can’t be pointed at, it is not OBS. Sharedness is optional at OBS (I-A2).
- **Failure modes:** Interpretive intent without anchor. OBS stored as P3 POINTER. `[X]`
- **Boundary & Coupling:** Kin of “only structure crosses.” Not a Graphic D entry form.
- **Key source language:** “Something that can be pointed at.”
- **Hands:** `[H]` / `[X]` as POINTER

### A-DELTA — Difference

- **Kind:** Bucket
- **Source location:** System A §2; Specs A2
- **Purpose:** Where two observations don’t match. Communication happens here only if both OBS exist.
- **Inputs:** At least two OBS nodes (or OBS vs expected rule).
- **Outputs:** A paired mismatch.
- **Invariants:** No shared OBS → no real DELTA → no understanding.
- **Failure modes:** DELTA as an array edge. Fight without two OBS.
- **Hands:** `[H]` / `[X]` as Graphic D edge

### A-UNK — Unknown

- **Kind:** Bucket
- **Source location:** System A §3; I-A3
- **Purpose:** Something required for understanding that is missing. Must say what would become OBS and which DELTAs that OBS would resolve.
- **Invariants:** Unresolved UNK blocks coherent comprehension. You cannot push through UNK with confidence or volume.
- **Failure modes:** UNK as a waiting row on the tape. Volume as append.
- **Open:** halt-at-any-UNK vs bounded budget — source lists this as unpinned. `[GAP]`
- **Hands:** `[H]` / `[GAP]` budget

### A-INVALID — Non-computable

- **Kind:** Bucket
- **Source location:** System A §4; FM-A3
- **Purpose:** Statements with no usable payload. Examples: “You’re bad.” “This is stupid.” “Obviously.”
- **Invariants:** Not wrong. Meaningless until converted into OBS, DELTA, or UNK. Produce heat, no compute.
- **Failure modes:** INVALID as a WORD value. Treating accusation as structure.
- **Open:** stop-word list not pinned. `[GAP]`
- **Hands:** `[H]` / `[GAP]` list

### B-Banks

- **Kind:** Region
- **Source location:** System B §1; S0
- **Purpose:** Each person’s separate position. You can see each other. You can shout. Nothing crosses. Normal, not failure.
- **Hands:** `[H]`

### B-Rapids

- **Kind:** Region / pressure zone
- **Source location:** System B §2; S1
- **Purpose:** Where the water is loudest. High pressure, urgency, emotion. Loud does not mean transferable. Conversations often start here because pressure forces engagement.
- **Invariants:** I-B1 Pressure ≠ Transfer. Nothing transfers here (story: “where nothing transfers”).
- **Failure modes:** Counting grind as a tick. Working Cup C3 here. OBS treated as POINTER because it got loud.
- **Hands:** `[H]` / `[X]` as append

### B-Delta

- **Kind:** Region / crossing setup
- **Source location:** System B §3; S2
- **Purpose:** Water slows. Ground visible. Both can point at the same rock. Only place crossing is possible.
- **Invariants:** I-B2 Crossing requires delta conditions.
- **Mesh:** Cup C3 live window only if here.
- **Hands:** `[H]`

### B-Crossing

- **Kind:** Region / compute
- **Source location:** S3
- **Purpose:** DELTA exists and UNKs are listed. Work the difference. Not P4.
- **Hands:** `[H]` / `[X]` as APPEND

### FSM S0–S4 — Delta Bridge

- **Kind:** Shared finite-state machine
- **Source location:** Specs §4.1
- **Purpose:** One location both systems can say.

| State | Condition | Allowed |
|---|---|---|
| S0 Banks | no shared reference yet | UNK + request OBS; “opposite banks” |
| S1 Rapids | heat + missing anchors | INVALID on accusations; demand OBS; “crossing impossible” |
| S2 Delta setup | one pointable element acknowledged | create OBS_A, OBS_B; “crossing can start” |
| S3 Crossing | DELTA exists; UNKs listed | resolve DELTA / promote UNK → OBS; “we’re crossing” |
| S4 Bank rebuild | crossing completed | action list from resolved DELTAs; “calm water; proceed” |

- **Invariants:** Diagnose location, not people.
- **Failure modes:** S4 action as P4. S1 talk as progress (FM-B3).
- **Hands:** `[H]` / `[X]` S4 as emission

### F1–F5 — Interface functions

- **Kind:** Minimal function set
- **Source location:** Specs §4.2
- **Purpose:** Translate river signal ↔ ledger bucket. Talk / hologram only. Not array ops.

| Fn | Input | Output | River hears |
|---|---|---|---|
| F1 Locate | “feels loud / I can’t speak here / stop meta / you’re bad” | BANKS \| RAPIDS \| DELTA \| CROSSING and a ledger route | where we are |
| F2 Anchor | a thing we can point at | OBS with pointer metadata | “at delta now” |
| F3 Pair | two OBS nodes | DELTA node | “crossing possible” |
| F4 Unknowns | “I don’t understand / missing context / what do you mean?” | UNK naming the required OBS | still too loud; widen delta |
| F5 Reject | “you’re bad / obviously / that’s stupid” | INVALID + request anchor or UNK | shouting in rapids |

- **Hands:** `[H]` / `[X]` if F2 writes Graphic D

### Kernel sentence

- **Kind:** Lever / interop utterance
- **Source location:** Specs §7; story “Hold on. I don’t think we’re at the crossing yet.”
- **Purpose:** Both systems accept one line: *We’re in rapids—pick one pointable thing (OBS) so we can reach the delta and compute the DELTA.*
- **Effects:** Stops grind. Does not cut cord. Does not emit POINTER.
- **Hands:** `[H]` / `[X]` as emission

### Open parameters (source-marked)

- **Kind:** Unpinned tolerances
- **Source location:** Specs §6
- **Still open in the attachment:** OBS pointer format; INVALID pattern list; UNK halt vs budget.
- **Invariants:** Marked by the source as degrees of freedom. Pass 1 does not invent them. They are not G2.
- **Hands:** `[GAP]`

---

## Meshes (pass 1, named only)

| From | To | Payload | Forbidden |
|---|---|---|---|
| S1 Rapids | Cup C3 | grind — do not work the window | tick / append |
| S2–S3 | Cup C3 | live work only if meshed | work after impact |
| Kernel | grind | stop; ask for one OBS | cut cord; emit |
| shared OBS | HCC “only structure crosses” | kin | meaning transfer |
| S4 action | HCC πB / Cup C2 | may later be an act | P4 |
| OBS | Graphic D | — | P3 POINTER |

Cup and HCC clipboards stay their own files.

## Sayable states (pass 2)

Diagnose location, not people. Middle-layer spoken four sit on S0–S3. S4 is spec-only (“calm water; proceed”).

| Say | Means | FSM |
|---|---|---|
| We’re on opposite banks | different OBS; shout; nothing crosses | S0 |
| We’re in the rapids | heat; no shared footing; nothing transfers | S1 |
| We’re at the delta | one pointable thing acknowledged | S2 |
| We’re crossing | paired DELTA; UNKs listed | S3 |

## What this is not (pass 2)

Not therapy. Not a debate framework. Not a power move. Not a spec meant to impress. It is a crossing manual.

## Failure modes and strengths (pass 2)

| ID | Failure |
|---|---|
| FM-A1 | Meta without anchors → INVALID to directive thinkers |
| FM-A2 | Directive without premises → floating force vector; “can’t speak here” |
| FM-A3 | Accusation language → INVALID; heat, no compute |
| FM-B1 | Start in rapids → confusion amplified; content used as weapons |
| FM-B2 | Stay on banks → positional warfare; no shared object |
| FM-B3 | Mistaking motion for progress → talked a lot; zero crossing |

A: high-fidelity audit trail; works in writing / slow passes; heavy in live speech (needs serialization).  
B: fast “wrong place”; “go to the delta” stays vague without A.

---

## Pass 1 clipboard deltas (vs philosophy-map Gear W)

| Philosophy-map | Attachment | Action |
|---|---|---|
| Four clutch pictures | + System A four buckets | A-OBS…INVALID |
| Kernel as lever | exact kernel sentence + story line | Kernel piece |
| Unfinished OBS/INVALID/UNK | source §6 three opens | Open parameters `[GAP]` |
| No FSM | S0–S4 including S4 action | FSM piece |
| No functions | F1–F5 | F piece |
| No story | three-man specimen | Story piece |
| “OBS format” as tolerance | still unpinned | not invented |

None of these license Water buckets as Graphic D row types. Emission remains `[GAP]`.

## Pass 2 clipboard deltas

| Ticket | Action |
|---|---|
| T1 | Four sayable location-lines |
| T2 | Crossing manual; not therapy / debate / power |
| T3 | FM-A/B tables + A/B strength-weakness |
| T4 | F1–F5 input/output |
| T5 | Story heat-lines as INVALID specimens |

---

## Executive Seams Summary

- Two systems, one interface. Location first, then compute.
- Loud ≠ transferable. INVALID is heat without payload.
- Kernel stops grind. It does not write the tape.
- OBS is pointable structure in talk. OBS is not POINTER.
- Three source-open tolerances stay `[GAP]`.
