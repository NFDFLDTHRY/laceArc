# Mathematical execution model — Lace (partial)

**Status:** PARTIAL mathematical execution model. **Not an emitter.**  
**Pass:** 2 execute + prefix-device pass 6 fidelity (S4 split).  
**Pinned main at pass 2:** `3cee660a5f0f1be160271103260a087d7d8cbfb8`.  
**Φ-morphism:** stated on [`pointer-emission.md`](pointer-emission.md) (prefix-device pass 5).  
**Φ-schedule:** Q1 open. Completeness of a Core executor requires human-accepted schedule prose.  
**No `src/`.** File existence here does not authorize code.

**Authority (highest first):** Graphics A–D → [`systems-manifest.md`](systems-manifest.md) → [`systems-manifest-ascii.md`](systems-manifest-ascii.md) (companion) → AGENTS / law → this formalization (lowest).  
**DRAFT questions:** [`pointer-emission.md`](pointer-emission.md).  
**Fidelity sheet:** [`graphics/prefix-device-pass-6.md`](graphics/prefix-device-pass-6.md).  
**Align, do not elevate:** [`atomic-primitives-map.md`](atomic-primitives-map.md) `[PROPOSAL]`; Hands §2 of [`clock/system-mathematical-model.md`](clock/system-mathematical-model.md).

Steward line: *Shoe in hands. This states what the strand already is. Schedule remains open.*

---

## S0 — Header and non-claims

| Claim | This document |
|---|---|
| Partial transition reading of Hands growth | **Yes** |
| Φ-morphism (POINTER-append into earlier cells) | **Yes** — cited from emission file; not invented here |
| Total Core `Step` including Φ-schedule | **No** |
| Answers to when / arity-as-law / leftover-adjacency | **No** — schedule / Q2 / Q3 leftover OPEN |
| Shadow / H×C×W as Core state | **No** |
| Permission to add `src/` | **No** |
| Acceptance of `pointer-emission.md` | **No** — draft remains draft |

Joint readiness: **READY-PARTIAL ∧ BLOCKED-COMPLETE**.

---

## S1 — Universe and state

### S1.1 Universe

Work in the **Hands** universe only. The sole persistent carrier is Graphic D’s append-only line. Holder / Shadow machinery (H×C×W and kin) may operate *upon* Lace; they contribute **zero** rows to the store ([AGENTS](../AGENTS.md); ASCII Core fence).

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

Mechanism voice (“route new wire through that word’s star; continue”) names the same step’s participation half in prose. The append *shape* of that half is Φ-morphism (S4). The algorithm that chooses *when* to fire it is Φ-schedule (Q1), still open.

There is no second engine after ingest (Piece 2; Hands §2.4).

---

## S3 — Readings (not stores)

### S3.1 Star as formation / view

\[
\mathrm{Star}(v) = \{ i < |L| \mid e_i = (\mathsf{WORD},\, v) \}.
\]

Star is accumulated passages through the same word-variable (Pieces 7, 15). It is **not** a row kind and **not** a side table. Installing a Star table beside \(L\) is forbidden. A POINTER-cluster reading (prefix-device pass 4 N2) is not this set and is not a fifth Kind.

### S3.2 Sequence as route

Order of WORD appends is the physical route through stars (Piece 8). No sentence container is added. Adjacency does **not** fire Φ (emission Q3 CLOSED). Whether leftover adjacency *is* a relation remains OPEN.

### S3.3 Touch / re-entry (reading)

Later participation can mention earlier participation because POINTER sections are themselves addressable (Piece 11; Graphic D chains). **Which** touch is written is Φ-schedule (Q1), still OPEN. Observation is not automatically an append (Hands §2.8 item 2).

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

### S4.2 Split (prefix-device pass 5 / 6)

Cited from [`pointer-emission.md`](pointer-emission.md) Φ section. Not invented here.

\[
\mathsf{Arrive}(v):\ L \mapsto L{}^\smallfrown(\mathsf{WORD},\, v)
\]

\[
\Phi_{\mathrm{morphism}}:\ L \times R \mapsto L{}^\smallfrown(\mathsf{POINTER},\, r_1,\ldots,r_k)
\]

with \(R = \{r \mid 0 \le r < |L|\}\), \(k \ge 1\), each \(r_i \in R\).

\[
\Phi_{\mathrm{schedule}} = \text{which arrivals supply } R = \text{emission Q1} = \mathrm{OPEN}.
\]

Session lens “next cell = Φ(prefix)” is prefix-device pass 4 option D. It is not this model’s `Step`.

| # | Question | Status |
|---|---|---|
| 0 | When is a WORD appended? | Arrive defined for first unseen \(v\). Later-arrival kind OPEN |
| 1 | When is a POINTER appended? | schedule OPEN |
| 2 | Arity as law | CONFLICT (not promoted to \(k=2\)) |
| 3 | Adjacent WORDs emit Φ? | CLOSED no. Leftover adjacency *is* a relation? OPEN |
| 4 | Backward same line | CLOSED. POINTER→POINTER allowed CLOSED. Required OPEN. Proof of earlier OPEN |
| 5 | Later pass requires POINTER? | Later pass at least WORD CLOSED. Require POINTER OPEN |

Rejected lookalikes in the emission draft stay **non-answers** here too.

### S4.3 Partial step schema (honest)

\[
\mathsf{Step}_{\mathrm{partial}}
= \mathsf{Arrive}_{\mathsf{WORD}}
;\ [\Phi_{\mathrm{morphism}} \text{ only if schedule says so}]
;\ \mathsf{Continue}.
\]

The bracket is not a when. Schedule is not given. When a schedule is accepted it can only fire \(\Phi_{\mathrm{morphism}}\).

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
| \(\Phi_{\mathrm{schedule}}\) | G2 when | §2.4 Participate when | OPEN in all |
| \(\mathrm{Star}(v)\) view | Piece 7 | §2.3 | Agree — not a table |
| G1 word identity | G1 | §2.1 | OPEN |
| Holder train | Out of Core | §3 | excluded from \(L\) |

No competing atom is introduced.

---

## S8 — Steward receipt

| Field | Value |
|---|---|
| Pass | Math-execution model Pass 2 + prefix-device pass 6 fidelity |
| Product | `docs/math-execution-model.md` |
| Φ-morphism | Stated (emission file + S4.2) |
| Φ-schedule | OPEN (Q1) |
| Arrive/WORD | Defined |
| Star | View only |
| Contracts | I / II / III as in S5 |
| `src/` | Not authorized |
| Fidelity sheet | `docs/graphics/prefix-device-pass-6.md` |

**Steward tests:** this document does not answer when a POINTER is written; does not allocate a Star store; does not place Shadow state in \(L\); does not imply `src/`; keeps Arrive as WORD append; does not treat option D as `Step`; does not leave Φ shapeless.

*Shoe in hands. Partial formalization of what the strand already is. Schedule remains open.*
