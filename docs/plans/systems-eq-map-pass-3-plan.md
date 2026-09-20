# Systems × equations map — Pass 3 of 6 PLAN

**Status:** **`EXECUTED`** 2026-09-20 · [`systems-eq-map-pass-3-u12.md`](systems-eq-map-pass-3-u12.md). **Station:** maps (`Grok-maps`).
**Depends on:** pass 1 rows 19, 24, 25, 30 · pass 2 wall cards EXECUTED (`6daa770`).
**Emission:** `[GAP]`. No `src/`. Does not accept `pointer-emission.md`.
**Ruling:** U12 (rustc / Cargo shelf 10) is **in the calculation**. rustc is **not** \(\mathsf{Arrive}\).

Pass 2 said what the wall may compute. Pass 3 says what the **toolchain** may compute without becoming a stitch.

---

## 0. One question

For each U12-CALC object, what constraints can the calculation take from rustc / Cargo / wasm64 without those constraints becoming sections of \(L\) or a when for Φ?

## 1. One result (on execute)

[`systems-eq-map-pass-3-u12.md`](systems-eq-map-pass-3-u12.md) — one card per U12-CALC object.

Columns: object · cite · may compute · must not write · feeds which hole (if any) · still empty?

WALL-CALC is done. Do not rewrite W1–W6. Cite W3 only where the Layer III compile-target *cite* meets the toolchain card.

---

## 2. Cards execute must write

From pass 1:

| Card | Object | Pass-1 row |
|---|---|---|
| U1 | rustc target `wasm64-unknown-unknown` (Tier 3) | 30 |
| U2 | `build-std` / `core` (no prebuilt std) | 30 |
| U3 | 64-bit memories / `usize=8` / i64-as-address | 30 |
| U4 | no `panic=unwind` / abort-only | 30 |
| U5 | P27 Carrier / Pass 28 \(K\) | 19, 25 |
| U6 | P27 Layer III Runtime (host of \(\pi\)) | 24 |

If Cargo A4 extract (`build-std-features` default-when-core-only, lockfile silence, `compiler_builtins`) is needed as its own card, add **U7** as a **toolchain hole**, not as H-PTR.

Do not invent a wasm engine cap as Core law. The rustc book’s 64-bit address space vs a smaller engine cap is a U12 tension (clipboard E8), not a POINTER arity.

## 3. What “may compute” is allowed to mean

Allowed outputs of a U12 card:

- a **target predicate** (this Core, if built, is `wasm64-unknown-unknown`)
- a **width predicate** (indices / memories are 64-bit *in the carrier*)
- a **std predicate** (`core` only; no prebuilt std)
- a **panic predicate** (abort, not unwind)
- a **runtime predicate** (Layer III host may run \(\pi\); it may not write \(L\))

Forbidden outputs:

- a WORD or POINTER
- a when for H-PTR
- a picked \(k\)
- “compiling for wasm64 opens Implementation Law”
- mixing C / libc as a Core path (clipboard E10)

## 4. Forbidden this pass

- Fill G2 / H-PTR / H-k
- Run a build (G-rows stay `NOT_RUN`)
- Put `--print` output into \(L\)
- Rewrite wall cards
- Accept emission
- Open `src/`
- Start pass 4

## 5. Accept pass 3 when

- U1–U6 exist; each has may-compute and must-not-write.
- Zero cards write \(L\) or fill Φ.
- Plan `PLAN` → `EXECUTED`. maps released unless pass 4 is immediately authorized.

## Steward test

Shoe in hands. The compiler constrains the *carrier*. The lace constrains the *strand*. **A target triple is not a stitch.**
