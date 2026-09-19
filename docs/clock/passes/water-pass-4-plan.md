# Water pass 4 plan — mechanics: transitions, packets, halt

**Status:** EXECUTED on the Water clipboard. Emission `[GAP]`.  
**Station:** hologram  
**Clipboard:** `docs/clock/water-systems-manifest.md`  
**Reference:** `Where the Water Is Loud.txt` Specs §§1–7 + middle layer

Passes 1–3 named parts and meshes. Pass 4 is the **machine**: what packet exists, which function is legal, which guard moves the FSM, what halt means. Namespace clash: Water S0–S4 ≠ HCC S0–S7 ≠ Cup C1–C5.

---

## Mechanics already on paper (do not redo)

Buckets, regions, state *names*, F I/O names, kernel, isomorphism, H×C×W table, two inventories.

Still missing: **transition table**, **packet dictionary**, **halt**, **runtime (live vs writing)**.

---

## What the attachment actually computes

One requirement: a crossing needs shared reference objects and bounded unknowns.

```
 signal ──F1 Locate──► location {S0..S3}
                 │
                 ├── F5 Reject ──► INVALID     (no FSM advance)
                 ├── F4 Unknowns ──► UNK        (blocks S3→S4)
                 ├── F2 Anchor ──► OBS           (S1/S0 → S2 if acknowledged)
                 └── F3 Pair ──► DELTA           (S2 → S3 if UNKs listed)
                                      │
                                      ▼
                               S3 resolve / promote UNK→OBS
                                      │
                                      ▼
                               S4 action list ──► S0 (new inventories)
```

I-A1: no claim enters unless pointable or labeled UNK.  
I-A3 / source: unresolved UNK blocks coherent comprehension. Operational halt vs budget still `[GAP]`.  
I-B1: loudness is energy, not transfer. S1 cannot pair.  
I-B2: no delta conditions → no resolve.

“Resolve” in S3 is ledger work in talk or writing: record the mismatch and/or promote a UNK to OBS. It is not P4. It is not agreement-as-truth.

---

## Tickets

### T1 — Packet dictionary

| Packet | Produced by | Consumed by | Not |
|---|---|---|---|
| conversational signal | speech / writing | F1 | a row |
| OBS node | F2 | F3, S3 | P3 |
| DELTA node | F3 | S3 resolve | Graphic D edge |
| UNK entry | F4 | S3 (must be listed); blocks S4 while open | a waiting tape row |
| INVALID | F5 | convert-or-drop | WORD |
| action list | S4 | may become πB / C2 | P4 |

OBS pointer metadata (quote / timestamp / message id) are *examples* in §6, not a chosen format. Keep `[GAP]`.

### T2 — Transition register

| From | Guard (source) | To | Illegal |
|---|---|---|---|
| — | pressure forces engagement | S1 | calling S1 progress |
| S0 | F2 acknowledged by the other | S2 | pairing with one OBS |
| S1 | F2 acknowledged (leave loud water) | S2 | F3 in S1 |
| S1 | F5 only | S1 | treating heat as OBS |
| S2 | F3 + UNKs listed | S3 | S3 without a pair |
| S3 | DELTAs worked; UNKs cleared *or* listed under unpinned budget | S4 | S4 with silent UNK |
| S4 | action done / inventories changed | S0 | S4 as append |

UNK halt vs budget remains `[GAP]` on the S3→S4 row.

### T3 — Kernel as a call

Kernel = F1(Locate=rapids) + request F2. River hears move-to-delta. Ledger hears anchor + pairing requirement. One utterance, two ears. Not a sixth function.

### T4 — Two runtimes

A weakness: live speech. A strength: writing. Same FSM. Story left the room and wrote — that was a runtime change, not a new system. Pass 4 stamps: live Locate is fast and lossy; writing serializes OBS.

### T5 — Namespace

Write once: Water S* ≠ HCC S* ≠ Cup C*. Do not renumber.

### T6 — Sealed

Do not fill §6. Do not emit from F2. Do not add π.

---

## Execution (when you say go pass 4)

Edit only the Water clipboard unless a one-line namespace note is needed on HCC/Cup. STOP.

---

## Steward test

If a guard is not in the spec or story, write unspecified — not a clock you invented.  
If a packet would land on P0, `[X]`.
