# Mathematical execution model — UPDATE campaign · Pass 3 of 6 PLAN

**Status:** **`EXECUTED`** 2026-09-20 · [`math-execution-update-pass-3-inputs.md`](math-execution-update-pass-3-inputs.md). **Station:** maps (`Grok-maps`).
**Emission:** `[GAP]`. No `src/`. Not an emitter. Does not accept `pointer-emission.md`.
**Depends on:** pass 1 drift EXECUTED · pass 2 labels EXECUTED (`83b66b9`). Governing MUST-NOT remains **U6**: SPOKEN ≠ calculated.
**Object:** [`docs/math-execution-model.md`](../math-execution-model.md) — read; S1–S6 equations stay.

Pass 2 retied stamps. Pass 3 names the **interface of a calculation**. It does not write the calculation.

---

## 0. One question

If emit-when, arity, and leftover adjacency must be *calculated* from the strand, **what may the calculation see, and what may it not see?**

## 1. One result (on execute)

[`math-execution-update-pass-3-inputs.md`](math-execution-update-pass-3-inputs.md) — an input / forbid / output-shaped-hole register.

No `Step` that returns a POINTER. No function body for \(\Phi_{\mathrm{schedule}}\). No picked \(k\).

---

## 2. What the register must list

### May take (already in the partial model)

| Input | Cite |
|---|---|
| Current \(L = (e_0,\ldots,e_{n-1})\) | S1.2 |
| Kind of each \(e_i\) | S1.3 |
| Arriving value \(v \in V\) | S2 \(\mathsf{Arrive}\) |
| Membership view \(\mathrm{Star}(v)\) | S3.1 — view, not a table |
| Existing POINTER rows and their backward refs | S4.1 / Q4 CLOSED |
| Prefix freeze: refs only into \(i < n\) | S4.1 |

### Must not take

| Forbidden | Why |
|---|---|
| Campaign SPOKEN Q1/Q0/Q5 *as the function* | U6 — known, not calculated |
| Shadow \(\{A,B,C\}\), OBS, Anchor, “touch grows lace” | S6 #8; dual-universe wall is pass 4 |
| rustc / Cargo / wasm64 receipts, `--print`, G-gates | U12 |
| Adjacency of WORD rows as an emit trigger | Q3 CLOSED |
| Intern / collapse of later PIE into one row | Q0/Q5 CLOSED intern |
| Projection \(\pi(L)\) write-back | S3.4 / S6 #6 |
| Habit, “helpful” default, fixed fan-out | emission Q1 CLOSED refusals |
| A second store of meaning, stars, or documents | S3 / S6 |

### Shaped holes (named, empty)

| Hole | Emission stamp | This pass writes |
|---|---|---|
| Does this arrival append a WORD? | Q0 SPOKEN + HANDS CONFLICT | the *question* against \(L,v,\mathrm{Star}(v)\) only |
| Does this arrival append a POINTER, and which \(R\)? | Q1 SPOKEN ≠ calculated | the *question* against \(L,v\) and existing refs only |
| What is \(k\)? | Q2 CONFLICT | the *question*; do not pick 2 |
| What is leftover adjacency? | Q3 SPOKEN leftover | the *question*; not a stored relation |

An empty hole is an honest product. A filled hole is a breach.

## 3. Optional hygiene (same commit, or omit)

Pass 2 residue: S2 and S3 still say “Q1 OPEN” / leftover OPEN. Execute **may** retie those two restatements to the pass-2 stamps. That is label copy, not a new rule. If omitted, name them again on the receipt.

## 4. Forbidden this pass

- Write \(\Phi_{\mathrm{schedule}}(L,v)=\ldots\)
- Resolve Q2 or silence HANDS CONFLICT
- Merge dual-universe file (pass 4)
- Refresh D1 witness (pass 5)
- Edit `pointer-emission.md`, rust-target, old pass 3–6 products
- Open `src/`
- Start pass 4

## 5. Accept pass 3 when

- The inputs file exists; every May / Must-not / Hole row has a cite.
- No row supplies a when.
- Model S1–S6 equations unchanged except the optional S2/S3 residue retie.
- U6 still MUST-NOT. Emission `[GAP]`.
- This plan `PLAN` → `EXECUTED`. maps released unless pass 4 is immediately authorized.

## Steward test

Shoe in hands. Listing what a calculation may see is not seeing for it. **An interface is not an answer.**
