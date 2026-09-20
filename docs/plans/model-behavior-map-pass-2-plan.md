# Model behaviors × equations — Pass 2 of 6 PLAN

**Status:** **`EXECUTED`** 2026-09-20 · [`model-behavior-map-pass-2-legal.md`](model-behavior-map-pass-2-legal.md). **Station:** maps (`Grok-maps`).
**Depends on:** [`model-behavior-map-pass-1.md`](model-behavior-map-pass-1.md).
**Emission:** `[GAP]`. No `src/`. B-When stays free.

Pass 1 named eleven classes. Pass 2 writes only the **legal traces that are forced or well-formed**. Refused traces are pass 3. D1 mixed walk is pass 4.

---

## 0. One question

Starting from \(L=\varepsilon\), which finite traces can the partial model *already* run without asking H-PTR?

## 1. One result (on execute)

[`model-behavior-map-pass-2-legal.md`](model-behavior-map-pass-2-legal.md) — legal-trace classes, not an infinite list of strings.

---

## 2. Traces execute must record

| Trace class | Status |
|---|---|
| Empty prefix, no act | legal; \(L=\varepsilon\) |
| Finite sequence of Arrive on any \(v\) (including repeats) | **forced-legal** given those ingests |
| Read \(\mathrm{Star}(v)\) or \(\pi(L)\) after any prefix | **forced-legal** read |
| WallCalc / U12Calc on a proposed act | **forced-legal** filter |
| Append POINTER with \(k\ge 1\), all \(r < n\), same line | **shape-legal**, **not forced** |
| One arrival realized as several ticks | **compatible** with P27-F; grouping not forced except the named D1 group in pass 4 |

Do not list every word string. Do not pick which POINTER fires.

## 3. Forbidden this pass

- A generator that outputs POINTER rows
- Pass 3 refuse catalog
- Pass 4 D1 walk as if it were this pass
- Open `src/`

## 4. Accept pass 2 when

- Every class in §2 has a row with “forced-legal / shape-legal / compatible.”
- B-When still free.
- Plan `PLAN` → `EXECUTED`. maps released unless pass 3 is immediately authorized.

## Steward test

Shoe in hands. You may keep wrapping new WORDs forever. **That is already a complete legal life of Arrive. It is not the full Piece 2 life.**
