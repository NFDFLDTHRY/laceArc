# Systems × equations map — Pass 3 · U12-CALC cards

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (`Grok-maps`).
**Ticket:** [`systems-eq-map-pass-3-plan.md`](systems-eq-map-pass-3-plan.md).
**Parent map:** [`systems-eq-map-pass-1.md`](systems-eq-map-pass-1.md) rows 19, 24, 25, 30.
**Wall cards:** [`systems-eq-map-pass-2-wall.md`](systems-eq-map-pass-2-wall.md) — not rewritten. W3 cite-only for compile-target.
**Ruling:** U12 is in the calculation. rustc is not \(\mathsf{Arrive}\).
**Emission:** `[GAP]`. No `src/`. G-rows remain `NOT_RUN`.

---

## U1 — Target `wasm64-unknown-unknown`

**Cite:** rust-target clipboard E-page; rustc book wasm64 Tier 3.

**May compute:** target predicate — if a Core is ever built, the triple is `wasm64-unknown-unknown`.

**Must not write:** a section; “accepted target ⇒ Implementation Law.”

**Feeds:** carrier identity. Not H-PTR.

**Still empty?** yes.

---

## U2 — `build-std` / `core`

**Cite:** rustc E2; Cargo A4 extract; no prebuilt std.

**May compute:** std predicate — `core` only; `build-std` is how `core` is obtained for this triple.

**Must not write:** a `std` world into \(L\); a Cargo feature as a WORD.

**Feeds:** crate-shape *after* acceptance. Not Arrive.

**Still empty?** yes.

---

## U3 — 64-bit memories / `usize=8`

**Cite:** rustc E8 64-bit address space; F4 64-bit memories; engine cap may be smaller.

**May compute:** width predicate — carrier addresses are 64-bit. The *smaller* of book space vs engine cap binds the host, not \(k\).

**Must not write:** arity \(k=2\) from “64-bit”; Graphic D indices as wasm i64 ops.

**Feeds:** U12 tension E8. Not Q2.

**Still empty?** yes (H-k).

---

## U4 — abort-only panic

**Cite:** rust-target F2; no `panic=unwind` on this target.

**May compute:** panic predicate — abort, not unwind.

**Must not write:** a POINTER “because panic strategy.”

**Feeds:** runtime of a future Core. Not Φ.

**Still empty?** yes.

---

## U5 — Carrier / \(\Sigma.K\)

**Cite:** P27 Carrier; pass 28 \(\Sigma=(L,h,K)\); \(K\) not a Core row.

**May compute:** \(K\) is the bytes/toolchain that would *carry* \(L\). \(L\) remains the only row store.

**Must not write:** \(K\) as WORD or POINTER.

**Feeds:** W5 custody is \(h\); this card is \(K\). Distinct.

**Still empty?** yes.

---

## U6 — Layer III Runtime

**Cite:** P27 Layer III Runtime; \(\pi : L\to\mathsf{View}\); W3 compile-target cite.

**May compute:** runtime predicate — a host may run \(\pi\) (projection). It may not write \(L\).

**Must not write:** view-back into the strand.

**Feeds:** S3.4 / S6 #6. Not Arrive.

**Still empty?** yes.

---

## U7 — Cargo silences (toolchain hole)

**Cite:** Cargo A4: `compiler_builtins` 0 hits; lockfile under `build-std` silent; `build-std-features` default-when-core-only unstated.

**May compute:** that these are **U12 holes**, not Hands holes.

**Must not write:** a default that closes them; must not move them onto H-PTR.

**Feeds:** Wave B / G-rows `NOT_RUN`. Not Φ.

**Still empty?** yes (toolchain).

---

## What U12 may compute, together

\[
\mathrm{U12Calc} \subseteq \{\mathrm{TARGET},\;\mathrm{STD},\;\mathrm{WIDTH},\;\mathrm{PANIC},\;K,\;\mathrm{RUNTIME}_\pi\}
\]

\[
\mathrm{U12Calc} \cap \{\mathsf{WORD},\;\mathsf{POINTER},\;\Phi_{\mathrm{schedule}}\} = \emptyset
\]

A target triple is not a stitch. Compiling for wasm64 does not open Implementation Law.

## `P3-R`

| | |
|---|---|
| Cards | U1–U7 |
| Writes to \(L\) | **0** |
| Builds run | **0** |
| Holes filled | **0** |
| Next | pass 4 UNMAPPED/CONFLICT; **not opened** |

**Emission `[GAP]`. Shoe in hands.**
