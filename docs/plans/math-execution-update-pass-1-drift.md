# Mathematical execution model — UPDATE pass 1 drift register

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (`Grok-maps`).
**Ticket:** [`math-execution-update-pass-1-plan.md`](math-execution-update-pass-1-plan.md).
**Object frozen:** [`../math-execution-model.md`](../math-execution-model.md) — S0–S8 **not edited this pass**.
**Tip at execute:** `9c02c8f` after refresh from claim BASE `ad54212`.
**Emission:** `[GAP]`. No `src/`. Not an emitter. `pointer-emission.md` not accepted.

This file answers the pass-1 question: what the sealed partial model still says that the tree no longer says, or that it must not be allowed to say. Rows are tested. No morphism added.

## Verdict of this pass

The old campaign's completeness claim still holds: **READY-PARTIAL ∧ BLOCKED-COMPLETE**.

What is new is **label drift**, not a missing algebra. The model still writes Q0/Q1/Q3/Q5 as OPEN. The emission file now writes them as SPOKEN and/or CONFLICT, **not accepted**. The human sentence of 2026-09-20 forbids treating those SPOKEN lines as the calculated schedule.

**Pass 2 is authorized to retie labels only.** It is not authorized to compute Φ.

---

## Register

| Id | Plan-time guess | Tested | Disposition |
|---|---|---|---|
| U1 | Header Q1 open vs emission Q1 SPOKEN | **KEPT · STALE** | Model L7, S0 row, S4.2 table, S7 schedule row, S8 receipt all say schedule / Q1 **OPEN**. Emission Φ header and Q1 Answer say **SPOKEN**, not accepted. Cite: model `docs/math-execution-model.md` L7 / L156; emission L91–L92, L150–L152, L216 |
| U2 | Q0 later-arrival OPEN vs SPOKEN+CONFLICT | **KEPT · STALE / CONFLICT** | Model S4.2 #0: *"Later-arrival kind OPEN"*. Emission Q0: SPOKEN seed-WORD, later WORD not required for the document encoding, HANDS CONFLICT on D1 `0003`. Cite: model L154; emission L140–L143, L215 |
| U3 | Q1 OPEN vs SPOKEN pay-into-prefix | **KEPT · STALE** | Same hole as U1 at the S4.2 row. Emission Q1 names a spoken when (participate in prefix / pay into seed) and keeps adjacency and fixed fan-out **CLOSED refused**. Model has no row for those refusals under Q1. Cite: model L156; emission L150–L152, L121–L127 |
| U4 | Q3 leftover OPEN vs SPOKEN leftover | **KEPT · STALE** | Model S4.2 #3: emit CLOSED implied by *"Adjacent WORDs emit Φ? CLOSED no"* and *"Leftover adjacency is a relation? OPEN"*. Emission Q3: CLOSED no-emit + SPOKEN leftover = arrival order on the wire (B5), not a stored relation. Cite: model L157; emission L160–L163, L218 |
| U5 | Q5 require POINTER OPEN vs SPOKEN+CONFLICT | **KEPT · STALE / CONFLICT** | Model S4.2 #5: *"Later pass at least WORD CLOSED. Require POINTER OPEN"*. Emission Q5: SPOKEN later pass *is* Φ payment, second WORD not required; HANDS CONFLICT D1 `0003` then `0004`. Cite: model L159; emission L176–L182, L220 |
| U6 | Schedule as missing sentence vs calculated-not-known | **KEPT · MUST-NOT** | Human 2026-09-20: rules **calculated, not known yet**; systems-level model is how the questions get answers. Promoting U1–U5 SPOKEN text into \(\Phi_{\mathrm{schedule}}\) would be knowing. Pass 2 may *label* SPOKEN. It may not install it as `Step`. Cite: this campaign's sit; emission L15–L17 (existence ≠ acceptance); model S4.3 bracket *"only if schedule says so"* L165–L172 |
| U7 | Pin SHA `3cee660` vs tip | **KEPT · STALE pin** | Model L5 pins pass 2 at `3cee660a5f0f1be160271103260a087d7d8cbfb8`. Execute tip `9c02c8f`. The pin is a dated record of old pass 2, not a live HEAD. Pass 2-update may add an UPDATE pin without erasing the old one. Cite: model L5 |
| U8 | Old pass 2–6 plan headers still `[PLAN] — not executed` | **KEPT · STALE index** | [`math-execution-model-pass-2-plan.md`](math-execution-model-pass-2-plan.md) L3 and pass 3–6 siblings still say not executed. Products and [`README.md`](README.md) already say EXECUTED. Hygiene. Not algebra. Not rewritten this pass (old campaign files left standing). |
| U9 | Cites prefix-device pass 5/6; pass 7 exists | **KEPT · STALE cite** | Model L4, L13, L132, S8 fidelity sheet point at pass 5/6. Emission L210–L212: Pass 7 EXECUTED, Answers written, not accepted. File exists: `docs/graphics/prefix-device-pass-7.md`. Pass 2-update may add the cite. Must not treat pass 7 as acceptance. |
| U10 | Dual-universe file not in the soft diff | **KEPT · ALIGN later** | Model S7 diffs atomic map and Hands §2 of [`clock/system-mathematical-model.md`](../clock/system-mathematical-model.md) only as a named align-do-not-elevate (L13). The dual-universe wall \(W : \mathcal{S} \not\hookrightarrow \mathcal{H}\) and sealed Participate \(= [GAP]\) live in that file §0–§2.8. Pass 4 of this campaign. No rewrite here. |
| U11 | S1.1 conceptual-reference correction | **KEPT · VERIFY pass** | Model S1.1 already names HCC-A / Coffee Cup / Water as conceptual references and points at [law-why conceptual-reference](../law-why-these-documents.md#conceptual-reference-documents). Matches the 2026-09-20 correction. **No drift in substance.** Keep the row so pass 4 does not re-litigate it. |
| U12 | rustc/Cargo shelf 10 must not leak | **KEPT · MUST-NOT** | `grep` of the model for `rustc` / `wasm64` / `build-std`: **0 hits**. Shelf 10 pass 6 (`b58216d`, DIAGRAM SOUND WITH OPENS) is toolchain Shadow. It is not `Arrive` and not Φ. Passes 2–6 of this campaign must not import it. |

No plan-time row dropped. No row added.

---

## What this pass did not do

- Did not edit `docs/math-execution-model.md`.
- Did not edit old pass 2–6 products or those plan headers.
- Did not write \(\Phi_{\mathrm{schedule}}\).
- Did not pick \(k\).
- Did not accept `pointer-emission.md`.
- Did not add `src/`.

## Hand-off to pass 2

Retie **labels only** on the model header and S4.2 / S8 question table:

- OPEN → the emission file's actual stamp (SPOKEN / CONFLICT / CLOSED / `[GAP]`)
- SPOKEN ≠ calculated
- CONFLICT stays visible
- U6 remains the governing MUST-NOT

Pass 2 is a later ticket. This file does not start it.

**Emission `[GAP]`. Shoe in hands.**
