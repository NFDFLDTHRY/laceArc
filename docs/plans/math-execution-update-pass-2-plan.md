# Mathematical execution model — UPDATE campaign · Pass 2 of 6 PLAN

**Status:** **`EXECUTED`** 2026-09-20 · receipt [`math-execution-update-pass-1-drift.md`](math-execution-update-pass-1-drift.md) `P2-R`. **Station:** maps (`Grok-maps`).
**Emission:** `[GAP]`. No `src/`. Not an emitter. Does not accept `pointer-emission.md`.
**Depends on:** [`math-execution-update-pass-1-drift.md`](math-execution-update-pass-1-drift.md) EXECUTED — 12/12 kept. Governing MUST-NOT is **U6**: SPOKEN ≠ calculated.
**Object:** [`docs/math-execution-model.md`](../math-execution-model.md).

Pass 1 froze the body and named the drift. Pass 2 reties **labels**. It does not compute Φ.

---

## 0. One question

What exact stamps from [`pointer-emission.md`](../pointer-emission.md) may replace the model's stale **OPEN** cells, without installing those stamps as \(\Phi_{\mathrm{schedule}}\)?

## 1. One result (on execute)

The same model file, surgical edits only, at the loci below. No new section that defines a when.

---

## 2. Allowed loci

| Locus | Now | After execute |
|---|---|---|
| Header L7 | Φ-schedule **Q1 open** | Q1 **SPOKEN** on the emission file, **not accepted**, **not calculated** |
| S0 “Answers to when / arity / leftover” | **No** — schedule / Q2 / Q3 leftover OPEN | **No** — Q1 SPOKEN≠calculated · Q2 CONFLICT · Q3 leftover SPOKEN≠calculated · not accepted |
| S4.2 `#0` | later-arrival OPEN | emission stamps: SPOKEN + HANDS CONFLICT on `0003` + CLOSED intern. Not accepted |
| S4.2 `#1` | schedule OPEN | SPOKEN pay-into-prefix + CLOSED refusals (adjacency / fan-out). **Not** \(\Phi_{\mathrm{schedule}}\) |
| S4.2 `#3` | leftover OPEN | CLOSED no-emit + SPOKEN leftover = arrival order (B5). Not accepted |
| S4.2 `#5` | require POINTER OPEN | SPOKEN later pass is Φ payment + HANDS CONFLICT `0003`+`0004`. Not accepted |
| S4.2 display \(\Phi_{\mathrm{schedule}} = \mathrm{OPEN}\) | OPEN | `= Q1 = SPOKEN on emission file, not accepted, not calculated` |
| S7 schedule row | OPEN in all | same three-part stamp |
| S8 receipt Φ-schedule | OPEN (Q1) | same |
| Header pin L5 | only `3cee660` | **keep** old pass-2 pin; **add** UPDATE pin `b013337` (pass 1 execute) |
| Fidelity / pass cites | pass 5/6 only | **add** pass 7 cite; pass 7 is SPOKEN, not acceptance |

Q2 and Q4 rows that already match the emission file stay. Do not “fix” CONFLICT by picking \(k\).

## 3. Forbidden this pass

- Write a function, algorithm, or `Step` that fires Φ.
- Treat campaign SPOKEN as Hands acceptance or as a calculated rule.
- Silence HANDS CONFLICT on Q0 / Q5 / Slot II.
- Edit [`pointer-emission.md`](../pointer-emission.md).
- Edit old pass 2–6 products, wasm-crosswalk, rust-target, dual-universe file.
- Import rustc / `build-std` / node-8 receipts into `Arrive` (U12).
- Open `src/`.
- Start pass 3.

U8 (stale *old-campaign* plan headers) is hygiene. **Not this pass.**

U10 (dual-universe align) is **pass 4**. Cite only if a label would otherwise contradict the wall. Do not merge the files.

## 4. Accept pass 2 when

- Every allowed locus above is retied or marked already-matching, with the emission stamp named.
- S1–S3, S4.1, S4.3 Arrive/Φ-morphism equations, S5, S6 **untouched** except a single U6 sentence under S4.3 if needed: *a SPOKEN Q1 is not the missing schedule.*
- Drift U1–U5, U7, U9 marked **acted** on the pass-2 receipt (in this plan file after execute, or a short `P2-R` at the foot of the drift file).
- U6 still MUST-NOT. Emission `[GAP]`.
- This plan header `PLAN` → `EXECUTED`. maps released unless pass 3 is immediately authorized.

## Steward test

Shoe in hands. Relabeling a hole is not filling it. **Knowing a spoken when is not calculating one.**
