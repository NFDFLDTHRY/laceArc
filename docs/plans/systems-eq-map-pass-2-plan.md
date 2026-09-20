# Systems × equations map — Pass 2 of 6 PLAN

**Status:** **`EXECUTED`** 2026-09-20 · [`systems-eq-map-pass-2-wall.md`](systems-eq-map-pass-2-wall.md). **Station:** maps (`Grok-maps`).
**Depends on:** [`systems-eq-map-pass-1.md`](systems-eq-map-pass-1.md) EXECUTED — WALL-CALC rows 12, 16, 17, 23, 25, 31.
**Emission:** `[GAP]`. No `src/`. Does not accept `pointer-emission.md`.
**Ruling:** the wall is **in the calculation**. Shadow state is **not** a row of \(L\). \(W : \mathcal{S} \not\hookrightarrow \mathcal{H}\) stands.

Pass 1 put wall-objects on the map. Pass 2 says what each may **compute** and what each may **not write**.

---

## 0. One question

For each WALL-CALC object, what outputs can the calculation take from \(\mathcal{S}\) (or from the wall itself) without those outputs becoming sections of \(L\)?

## 1. One result (on execute)

[`systems-eq-map-pass-2-wall.md`](systems-eq-map-pass-2-wall.md) — one card per WALL-CALC object.

Columns: object · cite · may compute · must not write · feeds which hole (if any) · still empty?

U12-CALC is **pass 3**. Mention only where a wall card would otherwise steal a toolchain row.

---

## 2. Cards execute must write

From pass 1:

| Card | Object | Pass-1 row |
|---|---|---|
| W1 | Not-a-Core-mechanism fence (HCC / Cup / Water / Reidemeister / query) | 12 |
| W2 | Two clocks, one workpiece (holder train ≠ Core append clock) | 16 |
| W3 | Layer III Shadow SOURCE MACHINERY board | 17 |
| W4 | Refuse-who (who may refuse a proposed write) | 23 |
| W5 | Σ custody \(h\) (not a Core row) | 25 |
| W6 | Wall formula \(W\) + Participate as hole | 31 |

If execute finds a seventh wall-object on the ASCII that pass 1 missed, add **W7** as UNMAPPED-then-carded. Do not invent one.

## 3. What “may compute” is allowed to mean

Allowed outputs of a wall card:

- a **refusal** (this is not a legal append)
- a **kin-read** (analogy of discipline, no state)
- a **clock distinction** (which tick-counter is not Core)
- a **cite** (Layer III may name a shelf)
- a **custody predicate** (who holds \(h\), not what \(L\) contains)

Forbidden outputs of a wall card:

- a WORD or POINTER
- a when for H-PTR
- a picked \(k\)
- a Star table
- a train packet that writes \(L\)

A card that would fill H-PTR is a breach even if it calls the fill “Shadow-calculated.”

## 4. Forbidden this pass

- Fill G2 / H-PTR / H-k
- Enumerate U12 (pass 3)
- Edit ASCII spine or sealed Arrive
- Accept emission
- Open `src/`
- Start pass 3

## 5. Accept pass 2 when

- W1–W6 exist; each has may-compute and must-not-write.
- Zero cards write \(L\).
- Zero holes filled.
- Plan `PLAN` → `EXECUTED`. maps released unless pass 3 is immediately authorized.

## Steward test

Shoe in hands. The wall computes *limits*. The strand computes *sections*. **A limit is not a stitch.**
