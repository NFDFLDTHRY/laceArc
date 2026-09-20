# Systems × equations map — Pass 1

**Status:** **EXECUTED** 2026-09-20. Campaign **CLOSED 6/6** at pass 6. **Station:** maps (`Grok-maps`).
**Ticket:** [`systems-eq-map-pass-1-plan.md`](systems-eq-map-pass-1-plan.md).
**Ruling:** wall and U12 are **in the calculation**, not on \(L\).
**Emission:** `[GAP]`. G2 unfilled. No `src/`.

ASCII: [`../systems-manifest-ascii.md`](../systems-manifest-ascii.md).  
Equations: [`../math-execution-model.md`](../math-execution-model.md) · dual-universe Hands §2 + \(W\).

---

## Map

| # | ASCII surface | Equation / object | Mark |
|---|---|---|---|
| 1 | Spine Contract II Arrival (thin, zero store) | S2 / S5 II \(\mathsf{Arrive}\) ingest; dual §2.7 | **I-EQ** |
| 2 | Spine edge `arrive` | \(\mathsf{Arrive}(v): L\mapsto L{}^\smallfrown(\mathsf{WORD},v)\) | **I-EQ** |
| 3 | Spine Contract I rectangle: \(L\) WORD\|POINTER, no rewrite | S1.2–S1.3 | **I-EQ** |
| 4 | Spine: arrive → append → participate → continue | \(\mathsf{Step}_{\mathrm{partial}}\) ; participate half = \(\Phi_{\mathrm{morphism}}\) shape + H-PTR empty | **I-EQ** + **HOLE** |
| 5 | Spine star / sequence / touch / meaning-not-stored | \(\mathrm{Star}(v)\) view; S3.2–S3.3 | **I-EQ** |
| 6 | Spine Layer III Projection, no write-back | \(\pi : L\to\mathsf{View}\) S3.4 | **III-READ** |
| 7 | One-tick figure (pass 5) | pallet = append WORD\|POINTER | **I-EQ** |
| 8 | P27-F caption: one arrival may be several ticks | D1 0005–0007; \(\mathsf{Step}_{\mathrm{partial}}\) bracket; arrival ≠ tick | **I-EQ** (constraint) |
| 9 | Participation figure PTR→(i,j), PTR→PTR | S4.1 Q4 allowed; arity drawing | **I-EQ** + **HOLE** (H-k) |
| 10 | Star figure: view = passes, write = WORD rows | S3.1 | **I-EQ** |
| 11 | Dual presentation, one mechanism | S2 mechanism voice vs array voice; not two engines | **I-EQ** |
| 12 | Not-a-Core-mechanism: HCC / Cup / Water / Reidemeister / query | dual §2.5 / S6; wall | **WALL-CALC** (in calc as *what must not write \(L\)*) |
| 13 | G2 emission unanswered (same fence) | \(\Phi_{\mathrm{schedule}}\) stamp; dual Participate\([GAP]\) | **HOLE** |
| 14 | Core as clock: impulse / pallet / tape / hands | II → Arrive → \(L\) → \(\pi\) | **I-EQ** |
| 15 | Slip table (forward ref, star table, hands write tape) | S4.1 / S3.1 / S3.4 forbids | **I-EQ** |
| 16 | Two clocks, one workpiece | wall \(W : \mathcal{S}\not\hookrightarrow\mathcal{H}\) ; train ≠ Core clock | **WALL-CALC** |
| 17 | Layer III Shadow SOURCE MACHINERY board (pass 7) | dual \(\mathcal{S}\); I→III read/cite | **WALL-CALC** + **III-READ** |
| 18 | Open board G2 / Φ | H-PTR / H-k / H-left | **HOLE** |
| 19 | P27 Carrier | Pass 28 \(K\) / U12 rustc+target as *carrier of a Core*, not a row | **U12-CALC** + **UNMAPPED** as I-EQ |
| 20 | P27 Hopper | Contract II ingest face; not a second store | **I-EQ** (thin II) + **UNMAPPED** as own equation |
| 21 | P27 Seed corpus | dictionary-first campaign; G1 OPEN; OPEN #15 | **HOLE** (G1) + **COMPANION** |
| 22 | P27 Frontier | prefix freeze / next index; S4.1 \(r<n\) | **I-EQ** |
| 23 | P27 refuse edge | Pass 28 REFUSE; S6 forbidden morphisms | **I-EQ** (forbid) + **WALL-CALC** (who refuses) |
| 24 | P27 Layer III Runtime | projection host; rustc/wasm64 runtime beside I | **U12-CALC** + **III-READ** |
| 25 | Pass 28 \(\Sigma=(L,h,K)\), \(L\) alone authoritative | S1.2; \(h,K\) not Core rows (ASCII T1 forbid) | **I-EQ** (\(L\)) + **U12-CALC** (\(K\) carrier) + **WALL-CALC** (\(h\) custody) |
| 26 | Pass 28 SUBMIT | Contract II pending; not yet Arrive | **III-READ** / shell |
| 27 | Pass 28 STEP | Arrive / \(\Phi_{\mathrm{morphism}}\) only | **I-EQ** + **HOLE** (schedule) |
| 28 | Pass 28 REFUSE / PERSIST / PROJECT / OPEN | S6 / prefix freeze / \(\pi\) / session | **I-EQ** or **COMPANION** |
| 29 | Quiet-doors / kit-doors / Order Proposals | Layer III hygiene | **COMPANION** |
| 30 | rustc `wasm64-unknown-unknown` + `build-std` / `core` + 64-bit memories + no-unwind | rust-target P6-R; not Arrive | **U12-CALC** |
| 31 | Dual-universe \(W\) and \(\mathsf{Participate}=[GAP]\) | wall formula; Participate hole | **WALL-CALC** + **HOLE** |

No CONFLICT row this pass. UNMAPPED only where P27 named a box the sealed model has no *named* symbol for (Hopper as own letter; Carrier as I-EQ).

---

## Equations cited (reverse)

| Equation | Rows |
|---|---|
| \(L\), Kind | 3, 25 |
| \(\mathsf{Arrive}\) | 1, 2, 7, 14, 27 |
| \(\mathrm{Star}(v)\) | 5, 10, 15 |
| \(\pi\) | 6, 14, 28 |
| \(\Phi_{\mathrm{morphism}}\) | 4, 9, 27 |
| \(\Phi_{\mathrm{schedule}}\) / Participate | 4, 13, 18, 27, 31 |
| \(W\) | 12, 16, 17, 31 |
| U12 target / `build-std` / memories | 19, 24, 25, 30 |

Every §4 equation has ≥1 row. Every §3 surface has ≥1 row.

---

## What this pass does *not* claim

- A function for H-PTR.
- That rustc writes WORD.
- That Shadow state is a section of \(L\).
- That P27’s six boxes are now Core art. They are on the **map**.

## `P1-R`

| | |
|---|---|
| Rows | 31 |
| I-EQ | majority of spine / tick / star |
| WALL-CALC | 12, 16, 17, 23, 25, 31 |
| U12-CALC | 19, 24, 25, 30 |
| HOLE | 4, 9, 13, 18, 21, 27, 31 — **empty** |
| CONFLICT | 0 |
| Next | pass 2 WALL-CALC inventory; **not opened** |

**Emission `[GAP]`. Shoe in hands. Mapping is not emitting.**
