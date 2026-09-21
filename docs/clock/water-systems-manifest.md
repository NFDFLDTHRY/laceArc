# Conceptual reference analysis — Where the Water Is Loud

**Behavioral-goal clipboard status, clarified 2026-09-21:** HCC-A, The Coffee Cup, and Where the Water Is Loud are conceptual reference / behavioral-goal sources under the [current law](../law-why-these-documents.md#conceptual-reference-documents). **This file is the Water / Dual Proofing source clipboard.** OBS/DELTA/UNK/INVALID, the River model, FSM/interface, crossing conditions, and proofing machinery remain available as **candidate communication/proofing machinery for the laceArc lab**. They are not automatically required LaceArc states, runtime dependencies, Core rows, or legal-append conditions merely because the source describes them. Historical readings remain recorded at their original evidence strength.

**Executed passes:** [1](passes/water-pass-1-plan.md) · [2](passes/water-pass-2-plan.md) · [3](passes/water-pass-3-plan.md) · [4](passes/water-pass-4-plan.md) · [5](passes/water-pass-5-plan.md) · [6](passes/water-pass-6-plan.md) — plans in [`passes/`](passes/README.md). A new pass is linked here once it is executed.

## Overview

Where the Water Is Loud is a conceptual reference document about communication and shared footing. The clutch imagery is this analysis's interpretation of its Proof Ledger, River model, and proposed interface. It establishes no required alignment component and does not close POINTER emission.

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
- **Invariants:** I-A1 Pointability: if it can’t be pointed at, it is not OBS. Sharedness is optional at OBS; **mandatory** at DELTA resolution (I-A2). Anti-property: interpretive intent assignment without an anchor is not OBS.
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
- **Invariants:** No shared OBS → no real DELTA → no understanding. Sharedness is **mandatory** at DELTA resolution (I-A2).
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
- **Invariants:** Not wrong. Meaningless until converted into OBS, DELTA, or UNK. Produce heat, no compute. Function: reject and route back — ask for OBS / DELTA / UNK. F5 does not delete.
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
- **Invariants:** I-B2 Crossing requires delta conditions. If you can’t cross, you can’t resolve.
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
- **Purpose:** Translate River location into Proof Ledger requirements, and vice versa. Talk / hologram only. Not array ops.

| Fn | Input | Output | River hears |
|---|---|---|---|
| F1 Locate | “feels loud / I can’t speak here / stop meta / you’re bad” | BANKS \| RAPIDS \| DELTA \| CROSSING and a ledger route | where we are |
| F2 Anchor | a thing we can point at | OBS with pointer metadata | “at delta now” |
| F3 Pair | two OBS nodes | DELTA node | “crossing possible” |
| F4 Unknowns | “I don’t understand / missing context / what do you mean?” | UNK naming the required OBS | still too loud; widen delta |
| F5 Reject | “you’re bad / obviously / that’s stupid” | INVALID + route back to OBS / DELTA / UNK | shouting in rapids |

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
- **Examples, not a choice:** quote snippet; timestamp; message id; “the sentence you said: X”.
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
B: fast “wrong place”; without A, “go to the delta” stays vague and never operationalized.

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

## Structural isomorphism (pass 3)

Source §3: a crossing requires shared reference objects and bounded unknowns. A and B are two tongues for that requirement, not two clutches.

| River | Ledger | Equivalence |
|---|---|---|
| Banks | separate OBS inventories | shout; nothing crosses |
| Rapids | high-rate talk + missing anchors + unresolved UNK | loud ≠ transferable |
| Delta | one shared pointable pair forming | “crossing can start” |
| Crossing | DELTA(OBS_A, OBS_B) exists; UNKs declared | “crossing is possible” iff that pair + UNK list |

Either party may speak native A or native B. Interface keeps the joint process coherent.

## Recirculation S4 → S0 (pass 3)

S4 action / calm water returns people to banks with new inventories. Next heat can start in rapids again (story: they still stepped into loud water). Action list is not P4.

## Two inventories (pass 3)

I-A2: each party has an OBS list. DELTA requires pairing. Not Graphic D. Not HCC L. Layer III labels may name a paired DELTA after the fact. Label merge ≠ pairing.

## H × C × W crossing (pass 3)

| Water | Cup | HCC | Forbidden |
|---|---|---|---|
| S1 | C3 closed | πB would be grind | tick |
| S2–S3 | C3 open | shared OBS ≈ structure-only | POINTER from Anchor |
| S4 | may become C2 / πB | act after crossing | P4 |
| Kernel | stop C3 work | halt compile-as-talk | emission |
| two OBS inventories | two looking | two HCC boxes | one merged L |

## Pass 3 clipboard deltas

| Ticket | Action |
|---|---|
| T1 | A↔B isomorphism table |
| T2 | S4→S0 recirculation |
| T3 | H×C×W crossing table |
| T4 | Two inventories ≠ one store |

## Packet dictionary (pass 4)

| Packet | Produced by | Consumed by | Not |
|---|---|---|---|
| conversational signal | speech / writing | F1 | a row |
| OBS node | F2 | F3, S3 | P3 POINTER |
| DELTA node | F3 | S3 resolve | Graphic D edge |
| UNK entry | F4 | S3 (must be listed); blocks S4 while open | a waiting tape row |
| INVALID | F5 | convert-or-drop | WORD |
| action list | S4 | may become πB / C2 | P4 |

Quote / timestamp / message id are §6 examples, not a chosen OBS format. `[GAP]`

## Transition register (pass 4)

| From | Guard (source) | To | Illegal |
|---|---|---|---|
| — | pressure forces engagement | S1 | calling S1 progress |
| S0 | F2 acknowledged by the other | S2 | pairing with one OBS |
| S1 | F2 acknowledged (leave loud water) | S2 | F3 in S1 |
| S1 | F5 only | S1 | treating heat as OBS |
| S2 | F3 + UNKs listed | S3 | S3 without a pair |
| S3 | DELTAs worked; UNKs cleared *or* listed under unpinned budget | S4 | S4 with silent UNK |
| S4 | action done / inventories changed | S0 | S4 as append |

S3→S4 UNK halt vs budget remains `[GAP]`.  
S3 “resolve” = record the mismatch and/or promote UNK→OBS in talk or writing. Not P4. Not agreement-as-truth.  
S1 cannot pair (I-B1). INVALID does not advance the FSM.

## Kernel as a call (pass 4)

Kernel = F1(Locate = rapids) + request F2. River hears move-to-delta. Ledger hears anchor + pairing requirement. One utterance, two ears. Not a sixth function.

## Two runtimes (pass 4)

Same FSM. Live Locate is fast and lossy. Writing serializes OBS (story: left the room, then wrote). A’s weakness is live overhead; A’s strength is the audit trail. Not two systems.

## Namespace (pass 4)

Water S0–S4 ≠ HCC S0–S7 ≠ Cup C1–C5. Do not renumber.

## Pass 4 clipboard deltas

| Ticket | Action |
|---|---|
| T1 | Packet dictionary |
| T2 | Transition register |
| T3 | Kernel = F1 + request F2 |
| T4 | Live vs writing |
| T5 | Namespace stamp |

## Story as FSM trace (pass 5)

| Beat | Mechanic |
|---|---|
| Food examples on the table | F2 attempts; first man inventorying OBS |
| Second man’s tense claim, no examples | pressure; missing anchor; S1 |
| “Narrative” as a grab for frame | intended F2; heard as power — no shared reference |
| “Can’t speak here” / boxed in | FM-A2 |
| Heat-lines that slide off | F5 INVALID; density not transfer |
| Leave the room | runtime change; not punishment |
| Writing after pressure has nowhere to feed | A’s slow pass |
| “Pick one thing you can point at” | kernel / F2 request |
| River + proof recognized as the same thing | §3 isomorphism, spoken |
| Later: “not at the crossing yet” | F1 Locate |

They did not solve food. That is not failure. They found Locate. Diagnosis in the source: failed because of *when and where*, not what was said. Pressure entered before orientation.

## Division of labor (pass 5)

River detects *where*. Ledger specifies *what must exist* for crossing.

| | Unit of progress | Failure detector |
|---|---|---|
| A | OBS created → DELTA created → UNK resolved | INVALID |
| B | rapids → delta → crossing | too loud to cross |

## Pass 5 clipboard deltas

| Ticket | Action |
|---|---|
| T1 | Story walked as S*/F* trace |
| T2 | River where / Ledger what-must-exist |
| T3 | I-A1 named Pointability |
| T4 | When/where diagnosis seated on the trace |

## Leftover spec mechanics (pass 6)

Interface job (source §4): translate River location into Proof Ledger requirements, and vice versa.

B without A: “go to the delta” stays vague and never operationalized.

OBS format examples in §6 are examples only. Not a chosen format.

## Pass 6 clipboard deltas

| Ticket | Action |
|---|---|
| T1 | OBS anti-property: intent without anchor |
| T2 | UNK payload shape (already on A-UNK; kept) |
| T3 | INVALID / F5 route back, not delete |
| T4 | I-A2 mandatory pairing; I-B2 spoken |
| T5 | Interface one-liner; B-needs-A |
| T6 | Last Water-only pass against this txt |

Next work is the H×C×W train, not another Water heading walk.

---

## Executive Seams Summary

- Two systems, one interface. Location first, then compute.
- Combined train: `docs/clock/train-h-c-w-systems-manifest.md`.
- Loud ≠ transferable. INVALID is heat without payload.
- Kernel stops grind. It does not write the tape.
- OBS is pointable structure in talk. OBS is not POINTER.
- Three source-open tolerances stay `[GAP]`.
