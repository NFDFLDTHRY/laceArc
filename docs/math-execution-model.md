# Mathematical execution model — Lace (partial)

**Status:** PARTIAL mathematical execution model. **Not an emitter.**  
**Pass:** 2 execute (authorized by [math-execution-model-pass-2-plan.md](plans/math-execution-model-pass-2-plan.md); readiness from [math-execution-problem-map-pass-1.md](plans/math-execution-problem-map-pass-1.md)).  
**Pinned main:** `d2cd722264c77050c29b44ee16ca9763eaa9ceb3`.  
**Emission / Φ:** `[GAP]`. Completeness of a Core executor requires human-accepted emission prose.  
**No `src/`.** File existence here does not authorize code.

**Authority (highest first):** Graphics A–D → [`systems-manifest.md`](systems-manifest.md) → [`systems-manifest-ascii.md`](systems-manifest-ascii.md) (companion) → AGENTS / law → this formalization (lowest).  
**DRAFT questions only:** [`pointer-emission.md`](pointer-emission.md).  
**Align, do not elevate:** [`atomic-primitives-map.md`](atomic-primitives-map.md) `[PROPOSAL]`; Hands §2 of [`clock/system-mathematical-model.md`](clock/system-mathematical-model.md).

Steward line: *Shoe in hands. This states what the strand already is. Participation cut remains sealed.*

---

## S0 — Header and non-claims

| Claim | This document |
|---|---|
| Partial transition reading of Hands growth | **Yes** |
| Total Core `Step` including POINTER emission | **No** |
| Answers to when / arity / adjacency emission | **No** — Φ `[GAP]` |
| Shadow / H×C×W as Core state | **No** |
| Permission to add `src/` | **No** |
| Acceptance of `pointer-emission.md` | **No** — draft remains draft |

Joint readiness inherited from Pass 1: **READY-PARTIAL ∧ BLOCKED-COMPLETE**.

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

\(V\) is the set of word values. General word-boundary / case / stemming identity is **G1** `[GAP]` ([`pointer-emission`](pointer-emission.md) does not close it; Hands §2.1 same silence).

**POINTER** (Piece 5; Graphic D example shape):

\[
e_j = (\mathsf{POINTER},\, r_1,\ldots,r_k), \qquad 0 \le r_\ell < j.
\]

The binary drawing \((r_A,r_B)\) on Graphic D is **illustrative**. Whether \(k\) is always 2 is **Φ / G2** `[GAP]` — not fixed here.

Graphics: A [`from-words-to-worlds.png`](graphics/from-words-to-worlds.png), B [`mechanisms-in-3d.png`](graphics/mechanisms-in-3d.png), C [`n-dimensional-relationships.png`](graphics/n-dimensional-relationships.png), D [`data-structure-1d-array.png`](graphics/data-structure-1d-array.png).

---

## S2 — Defined morphism: Arrive / WORD

Piece 2 states **one** governing operator in two voices (mechanism / array). This partial model formalizes only the **stated** storage fragment.

\[
\mathsf{Arrive}(v):\; L \;\mapsto\; L{}^\smallfrown (\mathsf{WORD},\, v).
\]

- Belongs to Contract I growth under thin Contract II arrival (Pieces 2–3).  
- Preserves every earlier index and content (K1 / prefix freeze).  
- Repeated \(v\) yields a **new** occurrence at a new index (Piece 4; P1≠P2 distinction in the atomic map’s proposal language).  
- Does **not** schedule POINTER writes.

Mechanism voice (“route new wire through that word’s star; continue”) names the same step’s participation half in prose; the algorithm that would append POINTER rows is **not** defined here:

\[
\mathsf{Participate}(\cdot) = \Phi = [\mathrm{GAP}].
\]

There is no second engine after ingest (Piece 2; Hands §2.4).

---

## S3 — Readings (not stores)

### S3.1 Star as formation / view

\[
\mathrm{Star}(v) = \{ i < |L| \mid e_i = (\mathsf{WORD},\, v) \}.
\]

Star is accumulated passages through the same word-variable (Pieces 7, 15). It is **not** a row kind and **not** a side table. Installing a Star table beside \(L\) is forbidden.

Membership alone is not the full formation story (routes / touches / internal traffic are further readings of \(L\)). Do not substitute \(\mathrm{Star}(v)\) for emission.

### S3.2 Sequence as route

Order of WORD appends is the physical route through stars (Piece 8). No sentence container is added. Whether adjacent WORDs already constitute a relation without a POINTER is **Φ question 3** `[GAP]`.

### S3.3 Touch / re-entry (reading)

Later participation can mention earlier participation because POINTER sections are themselves addressable (Piece 11; Graphic D chains). **Which** touch is written remains Φ `[GAP]`. Observation is not automatically an append (Hands §2.8 item 2).

### S3.4 Projection

\[
\pi : L \rightarrow \mathsf{View}
\]

with **no** write-back \(\mathsf{View} \rightarrow L\) (Contract III / Piece 13). 1D listings, 2D graphs, and 3D star pictures are views. Mistaking \(\pi(L)\) for the store is forbidden.

---

## S4 — POINTER shape and sealed Φ

### S4.1 Hands-supported constraint (not emission)

Whatever emission becomes, Hands already require: references name **earlier** positions on the **same** line (Piece 5; [`pointer-emission.md`](pointer-emission.md) §4 hard constraint). Forward refs and off-line edges are out of model relative to that constraint.

POINTER-to-POINTER chains appear in Graphic D’s example; whether that is general law remains listed open in the emission draft.

### S4.2 Φ hole

\[
\Phi = \text{POINTER emission rule} = [\mathrm{GAP}].
\]

This file **does not** answer:

| # | Question (from [`pointer-emission.md`](pointer-emission.md)) | Status |
|---|---|---|
| 1 | When is a POINTER appended? | `[GAP]` |
| 2 | What is the arity? | `[GAP]` |
| 3 | Do adjacent WORD rows already constitute a relation? | `[GAP]` |
| 4 | Beyond backward-same-line: general POINTER-to-POINTER / WORD-only / proof of “earlier”? | constraint partial; remainder `[GAP]` |
| 5 | Does a later pass through a star require a POINTER? | `[GAP]` |

Rejected lookalikes in the emission draft (Kauffman hitch-as-when, next-token, intern, Shadow Anchor-as-emit, etc.) stay **non-answers** here too.

### S4.3 Partial step schema (honest)

\[
\mathsf{Step}_{\mathrm{partial}} = \mathsf{Arrive}_{\mathsf{WORD}}\ ;\ \Phi_{\mathrm{[GAP]}}\ ;\ \mathsf{Continue}.
\]

Continue means the same rule remains available for further arrivals without closing or resetting the strand — not a scheduler and not a promise of infinite runtime.

---

## S5 — Contracts I / II / III

| Contract | Role in this partial model | Contains (manifest) | Must not |
|---|---|---|---|
| **I Core** | Carrier \(L\), \(\mathsf{Arrive}\), sealed \(\Phi\), readings | Pieces 1, 2, 4, 5, 6, 7, 8, 11, 14, 15 | Star table; holder oil; second store |
| **II Arrival** | Thin ordered feed into \(\mathsf{Arrive}\); zero own store | Piece 3; 9–10 as *use of I* | Lexicon / document store at the edge |
| **III Projection** | \(\pi\) read-only | Piece 13; views of 7, 12, 15; Graphics A–C as views | Write-back into \(L\) |

Piece 12 (dimension) is a **reading of I**, not Contract IV (ASCII contract map; Pass 1 K13).

No query / delete / transaction / multi-Lace interface is supplied by Hands (Pass 1 K16).

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
8. Filling Φ from Shadow Anchor / OBS / “touch grows lace” intent  
9. Treating ASCII companion or emission DRAFT commit as Hands acceptance  
10. Adding `src/` or Cargo under color of this document

---

## S7 — Alignment note (soft diff)

| This partial model | Atomic map `[PROPOSAL]` | Hands §2 (`clock/system-mathematical-model.md`) | Stance |
|---|---|---|---|
| \(L\) append-only | P0 + P4 + K1 | §2.2 sequence state | Agree — proposal language aligned, not newly elevated |
| WORD entry | P2 | §2.2 WORD shape | Agree |
| POINTER shape + backward refs | P3 + K3 | §2.2 example POINTER; arity open | Agree on constraint; arity open in all three |
| \(\mathsf{Arrive}\) | P4 on WORD | §2.4 \(\mathsf{Arrive}\) | Agree |
| \(\mathsf{Participate}\)/Φ | G2 open | §2.4 Participate = `[GAP]` | Agree — sealed |
| \(\mathrm{Star}(v)\) view | Piece 7 composition | §2.3 Star as index set | Agree — not a table |
| G1 word identity | G1 open | §2.1 / §2.8.3 | Agree — open |
| Holder train | Out of Core | §3 Shadow separate universe | Agree — excluded from \(L\) |

No competing atom is introduced. Proposal tags on the atomic map remain proposal tags.

---

## S8 — Steward receipt

| Field | Value |
|---|---|
| Pass | Math-execution model Pass 2 **EXECUTED** (partial) |
| Product | `docs/math-execution-model.md` |
| Pinned SHA | `d2cd722264c77050c29b44ee16ca9763eaa9ceb3` |
| Φ | `[GAP]` |
| Arrive/WORD | Defined |
| Participate/POINTER emission | Sealed hole |
| Star | View only |
| Contracts | I / II / III as in S5 |
| `src/` | Not authorized |
| Parent plan | `docs/plans/math-execution-model-pass-2-plan.md` |
| Parent map | `docs/plans/math-execution-problem-map-pass-1.md` |

**Steward tests (Pass 2 plan §6):** this document does not answer when a POINTER is written; does not allocate a Star store; does not place Shadow state in \(L\); does not imply `src/`; keeps Arrive walkable as WORD append only; does not rank ASCII over Graphics.

*Shoe in hands. Partial formalization of what the strand already is. Participation cut remains sealed.*
