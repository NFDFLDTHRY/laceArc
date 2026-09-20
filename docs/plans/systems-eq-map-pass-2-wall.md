# Systems × equations map — Pass 2 · WALL-CALC cards

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (`Grok-maps`).
**Ticket:** [`systems-eq-map-pass-2-plan.md`](systems-eq-map-pass-2-plan.md).
**Parent map:** [`systems-eq-map-pass-1.md`](systems-eq-map-pass-1.md) rows 12, 16, 17, 23, 25, 31.
**Ruling:** wall is in the calculation. Outputs below are **limits**, not sections of \(L\).
**Emission:** `[GAP]`. H-PTR empty. No `src/`.

No W7. Pass 1’s six WALL-CALC objects were the set.

---

## W1 — Not-a-Core-mechanism fence

**Object:** HCC S0–S7, Cup C1–C5, Water F1–F5, Reidemeister/slide, query/delete/transaction. ASCII pass 5 fence. Dual §2.5 / model S6.

**May compute:** “this proposed write is a holder compile / event-time / clutch / tidy-rewrite / query — therefore it is **not** a legal append to \(L\).”

**Must not write:** any WORD or POINTER; any Star table; any train packet into \(L\).

**Feeds:** none of the H-holes. Feeds **REFUSE** (pass 28) as a limit.

**Still empty?** yes.

---

## W2 — Two clocks, one workpiece

**Object:** holder train clock vs Core append clock. ASCII pass 6. Dual wall. Conceptual-reference correction 2026-09-20.

**May compute:** which tick-counter is being consulted. Core tick = legal append. Train tooth ≠ license to append.

**Must not write:** a section “because a tooth turned.”

**Feeds:** clock distinction only. Not H-PTR.

**Still empty?** yes.

---

## W3 — Layer III Shadow SOURCE MACHINERY board

**Object:** pass 7 cite board (host-embed, shader, compile-target, book). I→III read/cite only.

**May compute:** a **cite** (this shelf exists; this reading is allowed) and a **kin-read** (discipline analogy). U12 compile-target *cite* lives here as a pointer; the toolchain card itself is pass 3.

**Must not write:** Core gear, second strand, Φ rule.

**Feeds:** III-READ. Not Arrive.

**Still empty?** yes.

---

## W4 — Refuse-who

**Object:** P27 refuse edge + pass 28 REFUSE. Who may reject a proposed write.

**May compute:** a **refusal predicate** — adjacency-emit, intern, rewrite, forward-ref, projection write-back, Shadow-as-row are refused.

**Must not write:** the thing just refused, under another name.

**Feeds:** S6 forbids. Not a when.

**Still empty?** yes.

---

## W5 — Σ custody \(h\)

**Object:** pass 28 \(\Sigma=(L,h,K)\). ASCII: \(h\) is not a Core row. \(L\) alone authoritative.

**May compute:** a **custody predicate** — who holds the session/handle; whether a SUBMIT is still pending (not yet Arrive).

**Must not write:** \(h\) as WORD or POINTER. Pending SUBMIT is not a section.

**Feeds:** Contract II thinness. Not H-WORD.

**Still empty?** yes.

---

## W6 — Wall formula \(W\) + Participate hole

**Object:** \(W : \mathcal{S} \not\hookrightarrow \mathcal{H}\). Dual-universe §1.1 / §2.4 \(\mathsf{Participate}=[GAP]\). Model S1.1.

**May compute:** the **wall itself** — which universe an object is in; that Participate is a hole *on the Hands side*; that Shadow may compute W1–W5 limits.

**Must not write:** Participate as a filled schedule; SPOKEN Q1 as `Step`.

**Feeds:** H-PTR remains the Hands hole. This card does not fill it.

**Still empty?** **yes** (H-PTR / Participate).

---

## What the wall may compute, together

\[
\mathrm{WallCalc} \subseteq \{\mathrm{REFUSE},\;\mathrm{KIN},\;\mathrm{CLOCK},\;\mathrm{CITE},\;\mathrm{CUSTODY},\;W\}
\]

\[
\mathrm{WallCalc} \cap \{\mathsf{WORD},\;\mathsf{POINTER},\;\Phi_{\mathrm{schedule}}\} = \emptyset
\]

That is the ruling, formalized. Limits, not stitches.

## `P2-R`

| | |
|---|---|
| Cards | W1–W6 |
| W7 | none |
| Writes to \(L\) | **0** |
| Holes filled | **0** |
| Next | pass 3 U12-CALC; **not opened** |

**Emission `[GAP]`. Shoe in hands. A limit is not a stitch.**
