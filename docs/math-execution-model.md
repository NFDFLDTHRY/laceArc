# Mathematical execution model — Lace (partial)

**Status:** PARTIAL mathematical execution model. **Not an emitter.**  
**Pass:** old 2 execute + prefix-device pass 6 fidelity (S4 split) + UPDATE pass 2 label retie.  
**Pinned main at pass 2:** `3cee660a5f0f1be160271103260a087d7d8cbfb8`.  
**UPDATE pin (pass 1 execute):** `b013337f42d1ecb94a9aa92f92057ad9168f8df5`.  
**Φ-morphism:** stated on [`pointer-emission.md`](pointer-emission.md) (prefix-device pass 5).  
**Φ-schedule:** Q1 **SPOKEN** on the emission file · **not accepted** · **not calculated**. Completeness of a Core executor still requires a calculated, human-accepted schedule.  
**No `src/`.** File existence here does not authorize code.

**Source roles:** Graphics A–D are the source of record; [`systems-manifest.md`](systems-manifest.md) is derived from them. AGENTS / live law govern permitted work. [`systems-manifest-ascii.md`](systems-manifest-ascii.md) is a reading companion; this partial formalization is a derivative model. Neither companion nor model outranks the sources or supplies human acceptance.
**DRAFT questions:** [`pointer-emission.md`](pointer-emission.md).  
**Fidelity sheet:** [`graphics/prefix-device-pass-6.md`](graphics/prefix-device-pass-6.md). Pass 7 Answers: [`graphics/prefix-device-pass-7.md`](graphics/prefix-device-pass-7.md) — **SPOKEN, not acceptance**.  
**Align, do not elevate:** [`atomic-primitives-map.md`](atomic-primitives-map.md) `[PROPOSAL]`; Hands §2 of [`clock/system-mathematical-model.md`](clock/system-mathematical-model.md).

Steward line: *Shoe in hands. This states what the strand already is. Q1 is SPOKEN on the emission file. That is not a calculated schedule.*

---

## S0 — Header and non-claims

| Claim | This document |
|---|---|
| Partial transition reading of Hands growth | **Yes** |
| Φ-morphism (POINTER-append into earlier cells) | **Yes** — cited from emission file; not invented here |
| Total Core `Step` including Φ-schedule | **No** |
| Answers to when / arity-as-law / leftover-adjacency | **No** — Q1 SPOKEN≠calculated · Q2 CONFLICT · Q3 leftover SPOKEN≠calculated · not accepted |
| Shadow / H×C×W as Core state | **No** |
| Permission to add `src/` | **No** |
| Acceptance of `pointer-emission.md` | **No** — draft remains draft |

Joint readiness: **READY-PARTIAL ∧ BLOCKED-COMPLETE**.

---

## S1 — Universe and state

### S1.1 Universe

Work in the **Hands** universe only. The sole persistent carrier is Graphic D’s append-only line. HCC-A, Coffee Cup, and Water are conceptual reference documents; the H×C×W diagrams interpret their concepts and establish no required holder machinery. Their conceptual model states introduce no Core rows or row types ([human correction](law-why-these-documents.md#conceptual-reference-documents); ASCII Core fence).

### S1.2 State

Let \(\mathbb{N}_0 = \{0,1,2,\ldots\}\). A Lace state is a finite sequence

\[
L = (e_0,\ldots,e_{n-1}), \qquad n = |L| \in \mathbb{N}_0.
\]

Indices are permanent addresses. Growth is concatenation only. There is no delete, rewrite, reset, cut, or index reuse (Pieces 1, 6; Graphic D).

### S1.3 Entry alphabet

\[
\mathsf{Kind} = \{\mathsf{WORD},\, \mathsf{POINTER}\}.
\]

**WORD** (Piece 4; Graphic D):

\[
e_i = (\mathsf{WORD},\, v), \qquad v \in V.
\]

\(V\) is the set of word values. General word-boundary / case / stemming identity is **G1** OPEN ([`pointer-emission`](pointer-emission.md) does not close it; Hands §2.1 same silence).

**POINTER** (Piece 5; Graphic D example shape):

\[
e_j = (\mathsf{POINTER},\, r_1,\ldots,r_k), \qquad 0 \le r_\ell < j.
\]

The binary drawing \((r_A,r_B)\) on Graphic D is **illustrative**. Whether \(k\) is always 2 is emission **Q2 CONFLICT** — not fixed here. Φ-morphism writes only \(k \ge 1\).

Graphics: A [`from-words-to-worlds.png`](graphics/from-words-to-worlds.png), B [`mechanisms-in-3d.png`](graphics/mechanisms-in-3d.png), C [`n-dimensional-relationships.png`](graphics/n-dimensional-relationships.png), D [`data-structure-1d-array.png`](graphics/data-structure-1d-array.png).

---

## S2 — Defined morphism: Arrive / WORD

Piece 2 states **one** governing operator in two voices (mechanism / array). This partial model formalizes the **stated** storage fragment and, after prefix-device pass 5, the POINTER-append *shape*.

\[
\mathsf{Arrive}(v):\; L \;\mapsto\; L{}^\smallfrown (\mathsf{WORD},\, v).
\]

- Belongs to Contract I growth under thin Contract II arrival (Pieces 2–3).  
- Preserves every earlier index and content (K1 / prefix freeze).  
- Repeated \(v\) yields a **new** occurrence at a new index (Piece 4).  
- Does **not** schedule POINTER writes. First unseen \(v\) is Arrive, not Φ (emission Q0).

Mechanism voice (“route new wire through that word’s star; continue”) names the same step’s participation half in prose. The append *shape* of that half is Φ-morphism (S4). The algorithm that chooses *when* to fire it is Φ-schedule (Q1): **SPOKEN** on the emission file, **not accepted**, **not calculated**.

There is no second engine after ingest (Piece 2; Hands §2.4).

---

## S3 — Readings (not stores)

### S3.1 Star occurrence membership (partial view)

\[
\mathrm{Star}(v) = \{ i < |L| \mid e_i = (\mathsf{WORD},\, v) \}.
\]

The notation \(\mathrm{Star}(v)\) here records only WORD-occurrence membership. The **full star formation** is accumulated passages through the same word-variable with route context and recorded participation retained (Pieces 7, 15); that structure is not exhausted by this set ([atomic map](atomic-primitives-map.md) §3; witness pass 3). Neither the membership view nor the formation is a row kind or a side table. Installing a Star table beside \(L\) is forbidden. A POINTER-cluster reading (prefix-device pass 4 N2) is not this membership set and is not a fifth Kind. A complete structural readout remains open.

### S3.2 Sequence as route

Order of WORD appends is the physical route through stars (Piece 8). No sentence container is added. Adjacency does **not** fire Φ (emission Q3 CLOSED). Leftover adjacency is emission Q3 **SPOKEN** as arrival order on the wire (B5), not a stored relation — **not accepted**, **not calculated**.

### S3.3 Touch / re-entry (reading)

Later participation can mention earlier participation because POINTER sections are themselves addressable (Piece 11; Graphic D chains). **Which** touch is written is Φ-schedule (Q1): **SPOKEN** on the emission file, **not accepted**, **not calculated**. Observation is not automatically an append (Hands §2.8 item 2).

### S3.4 Projection

\[
\pi : L \rightarrow \mathsf{View}
\]

with **no** write-back \(\mathsf{View} \rightarrow L\) (Contract III / Piece 13). 1D listings, 2D graphs, and 3D star pictures are views. Mistaking \(\pi(L)\) for the store is forbidden.

---

## S4 — POINTER shape, Φ-morphism, Φ-schedule

### S4.1 Hands-supported constraint (not schedule)

References name **earlier** positions on the **same** line (Piece 5; [`pointer-emission.md`](pointer-emission.md) Q4). Forward refs and off-line edges are out of model.

POINTER-to-POINTER is **allowed** (D6; Q4 CLOSED). Whether every later participation *must* write that shape remains OPEN.

### S4.2 Split (prefix-device pass 5 / 6; Answers written in pass 7, not accepted)

Cited from [`pointer-emission.md`](pointer-emission.md) Φ section. Not invented here.

\[
\mathsf{Arrive}(v):\ L \mapsto L{}^\smallfrown(\mathsf{WORD},\, v)
\]

\[
\Phi_{\mathrm{morphism}}:\ L \times R \mapsto L{}^\smallfrown(\mathsf{POINTER},\, r_1,\ldots,r_k)
\]

with \(R = \{r \mid 0 \le r < |L|\}\), \(k \ge 1\), each \(r_i \in R\).

\[
\Phi_{\mathrm{schedule}} = \text{which arrivals supply } R = \text{emission Q1} = \text{SPOKEN, not accepted, not calculated}.
\]

Session lens “next cell = Φ(prefix)” is prefix-device pass 4 option D. It is not this model’s `Step`.

| # | Question | Status |
|---|---|---|
| 0 | When is a WORD appended? | Arrive defined for first unseen \(v\). Later-arrival kind: emission Q0 **SPOKEN** + HANDS CONFLICT on D1 `0003` + CLOSED intern. Not accepted |
| 1 | When is a POINTER appended? | emission Q1 **SPOKEN** pay-into-prefix + CLOSED refusals (adjacency / fixed fan-out). Not accepted. **Not** \(\Phi_{\mathrm{schedule}}\) as a calculated rule |
| 2 | Arity as law | CONFLICT (not promoted to \(k=2\)) |
| 3 | Adjacent WORDs emit Φ? | CLOSED no. Leftover adjacency: emission Q3 **SPOKEN** = arrival order on the wire (B5), not a stored relation. Not accepted |
| 4 | Backward same line | CLOSED. POINTER→POINTER allowed CLOSED. Required OPEN. Proof of earlier OPEN |
| 5 | Later pass requires POINTER? | emission Q5 **SPOKEN** later pass is Φ payment; second WORD not required for the document encoding; HANDS CONFLICT D1 `0003`+`0004`. Not accepted |

Rejected lookalikes in the emission draft stay **non-answers** here too.

### S4.3 Partial step schema (honest)

\[
\mathsf{Step}_{\mathrm{partial}}
= \mathsf{Arrive}_{\mathsf{WORD}}
;\ [\Phi_{\mathrm{morphism}} \text{ only if schedule says so}]
;\ \mathsf{Continue}.
\]

The bracket is not a when. Schedule is not given. A SPOKEN Q1 on the emission file is not the missing schedule. When a schedule is *calculated and accepted* it can only fire \(\Phi_{\mathrm{morphism}}\).

**Scope of later refinements:** this partial schema places `Arrive` before its Φ bracket. A later model that types the whole arrival as an arbitrary sequence of `{Arrive, Φ}` must state whether it inherits this ordering. Final-row equality alone does not establish arrival boundaries; [environment E2/E6/E9](plans/lace-context-iter6-pass-4-environment.md) and [reduction M3](plans/reduction-pass-2-execution-model.md#x5--theorems) keep the per-STEP frontier claim conditional. This qualification supplies no schedule.

Continue means the same rule remains available for further arrivals without closing or resetting the strand — not a scheduler and not a promise of infinite runtime.

---

## S5 — Contracts I / II / III

| Contract | Role in this partial model | Contains (manifest) | Must not |
|---|---|---|---|
| **I Core** | Carrier \(L\), \(\mathsf{Arrive}\), \(\Phi_{\mathrm{morphism}}\), open schedule, readings | Pieces 1, 2, 4, 5, 6, 7, 8, 11, 14, 15 | Star table; holder oil; second store |
| **II Arrival** | Thin ordered feed into \(\mathsf{Arrive}\); zero own store | Piece 3; 9–10 as *use of I* | Lexicon / document store at the edge |
| **III Projection** | \(\pi\) read-only | Piece 13; views of 7, 12, 15; Graphics A–C as views | Write-back into \(L\) |

Piece 12 (dimension) is a **reading of I**, not Contract IV.

No query / delete / transaction / multi-Lace interface is supplied by Hands.

---

## S6 — Forbidden morphisms `[X]`

Relative to Graphic D and Pieces 1, 6, 13, 14 — each is **not** a Core morphism:

1. Delete, rewrite, reset, cut, index reuse  
2. Intern / collapse many occurrences into one counted row  
3. Star table, meaning table, embedding store, N-D store beside the line  
4. Graph DB / edge table outside \(L\)  
5. Second Lace / second row-kind schema  
6. Write-back from any projection  
7. Label split/merge/create implemented as mutate-WORD  
8. Filling Φ-schedule from Shadow Anchor / OBS / “touch grows lace” intent  
9. Treating ASCII companion or emission DRAFT commit as Hands acceptance  
10. Adding `src/` or Cargo under color of this document

---

## S7 — Alignment note (soft diff)

| This partial model | Atomic map `[PROPOSAL]` | Hands §2 | Stance |
|---|---|---|---|
| \(L\) append-only | P0 + P4 + K1 | §2.2 | Agree |
| WORD entry | P2 | §2.2 | Agree |
| POINTER shape + backward refs | P3 + K3 | §2.2 | Agree on constraint; arity CONFLICT |
| \(\mathsf{Arrive}\) | P4 on WORD | §2.4 | Agree |
| \(\Phi_{\mathrm{morphism}}\) | G2 shape | emission pass 5 | Agree with law file; not a new atom |
| \(\Phi_{\mathrm{schedule}}\) | G2 when | §2.4 Participate when | Q1 SPOKEN on emission file; not accepted; not calculated |
| \(\mathrm{Star}(v)\) membership view | Piece 7 | §2.3 | Partial observation only; not the complete formation or a table |
| G1 word identity | G1 | §2.1 | OPEN |
| Holder train | Out of Core | §3 | excluded from \(L\) |

No competing atom is introduced.

---

## S8 — Steward receipt

| Field | Value |
|---|---|
| Pass | Old math-execution Pass 2 + prefix-device pass 6 fidelity + UPDATE pass 2 label retie |
| Product | `docs/math-execution-model.md` |
| Φ-morphism | Stated (emission file + S4.2) |
| Φ-schedule | Q1 SPOKEN on emission file · not accepted · not calculated |
| Arrive/WORD | Defined |
| Star | View only |
| Contracts | I / II / III as in S5 |
| `src/` | Not authorized |
| Fidelity sheet | `docs/graphics/prefix-device-pass-6.md` · pass 7 Answers `docs/graphics/prefix-device-pass-7.md` (SPOKEN, not acceptance) |

**Steward tests:** this document does not answer when a POINTER is written; does not allocate a Star store; does not place Shadow state in \(L\); does not imply `src/`; keeps Arrive as WORD append; does not treat option D as `Step`; does not leave Φ shapeless.

*Shoe in hands. Partial formalization of what the strand already is. SPOKEN is not a calculated schedule.*
