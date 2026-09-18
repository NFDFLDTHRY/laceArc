# HCC-A pass 5 plan — revolution timing and Act↔packet fold

**Status:** EXECUTED on the clipboard. Emission `[GAP]`.  
**Station:** hologram  
**Clipboard:** `docs/clock/hcc-a-systems-manifest.md`  
**Reference:** HCC-A v1.0 attachment (not in git)  
**Floor:** atomic map, read only

Pass 4 named packets and lined stations to π. The pipe still has no **schedule** and the Acts still have no **packet fold**. Pass 5 writes those two tables. It does not add π rows.

---

## What is already done

Register, feedback pipes, valves, Climb A–D, packet dictionary, station↔π bijection, dual-shaft valve, πFB ≠ πID, Act VI-only write, H11 as trace.

Do not redo those.

---

## Tickets

### T1 — Revolution schedule

One rev is S0–S7. Pass 5 states, for each packet, **when it exists**, **when it is consumed**, **when it is illegal**.

Needed because identity feedback and world feedback both land at next S0 and are not ordered in the clipboard.

Attachment order: B alters R (S7); new conditions into S0; PFC at n carries ISL from n−1. Pass 5 writes:

| Packet | Born | Live | Dies / settles | Illegal at |
|---|---|---|---|---|
| raw signal | S0 | S0–S1 | consumed by C at S2 | after compile as a stored log |
| ordered trace / schema stream | S0–S1 | through S2 | into ledger op | as Graphic D |
| next-world structure | S7 | next S0 | becomes raw signal | as P4 |
| priors | S5–S7 | next S0 PFC | — | as star |

Plus one sentence: **S7 has two sinks with no author order between R′ and PFC_{n+1}.** They join only as next S0 inputs. Do not invent a scheduler. Stamp `[GAP]` if the attachment is silent on who wins when they conflict — that conflict is P4 `identity_vs_reality`, already named, still unprocedural.

### T2 — Act ↔ packet fold

Each Act reads named packets. Only Act VI writes.

| Act | Reads | Writes |
|---|---|---|
| I | raw signal, ordered trace, schema stream | none |
| II | ledger op / ledger state | none (talk about L, not a second πL) |
| III | weight/transition, affect | none |
| IV | identity snapshot | none |
| V | act (chosen or withheld) | none |
| VI | snapshot + what the rev taught | priors / templates into πID |

Prompts stay on the Act station. Pass 5 only adds the packet columns.

### T3 — Relational table language

Pass-2 edge table still says “raw signals / structure / pre-interpretation.” Pass 5 retags those cells with packet names. No new edges.

### T4 — Sealed leftovers (do not fill)

- POINTER G2
- Numeric P4 procedure
- ISL halt clock
- Empty L first rev
- Water / Cup mesh
- Projection parser still ignores `##` pipeline (separate HTML ticket)

### T5 — Do not

- Add π
- Amend atomic map or Core systems-manifest
- Invent S7 ordering
- Hand-edit the projection

---

## Execution (when you say go pass 5)

1. Claim hologram.
2. Edit only `docs/clock/hcc-a-systems-manifest.md`.
3. Add schedule table + Act fold table + retag pass-2 edges.
4. Pass 5 deltas under Pass 4. STOP.

---

## Steward test

If the attachment does not say when a packet dies, write “unspecified” — not a clock you invented.  
If a fold would write Graphic D, it is `[X]`.
