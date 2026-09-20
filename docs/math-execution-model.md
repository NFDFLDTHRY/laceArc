# Mathematical execution model — Lace (partial)

**Status:** PARTIAL mathematical execution model. **ROOT / TOUCH / FOLD Pass 2 executed 2026-09-20. Not a complete emitter.**
**Prior pass line:** old math-execution Pass 2 + prefix-device fidelity + UPDATE 6/6 CLOSED; ROOT / TOUCH / FOLD Pass 1 mapped the delta and Pass 2 formalizes arrival landing + seen-word root-touch.
**ROOT / TOUCH / FOLD Pass 2:** [plan](plans/math-execution-root-touch-fold-pass-2-plan.md) · [findings](plans/math-execution-root-touch-fold-pass-2-findings.md).
**Φ-morphism:** append-only POINTER shape remains as stated on [pointer-emission.md](pointer-emission.md).
**Current decomposition:** successful word arrival **LANDS on \(L\)** as a WORD occurrence; if the word was already seen, that occurrence **TOUCHES its word root**; the remaining punch-card **GROUND** schedule that recursively composes larger points is not yet calculated.
**Pointer-emission draft:** still **not accepted**. General arity remains Q2 **CONFLICT**. Grounding cadence/grouping/base remain open. No src/.

**Source roles:** Graphics A–D are the source of record; [systems-manifest.md](systems-manifest.md) is derived from them. AGENTS / live law govern permitted work. [systems-manifest-ascii.md](systems-manifest-ascii.md) is a reading companion; this partial formalization is derivative. Neither companion nor model outranks the sources or supplies blanket acceptance of the law-owned emission draft.
**Human rulings carried here:** H1 seen word → touch word root; H2 punch-card \(n+1\) grounding scales toward one point representing the Lace; H3 all arrivals land on Lace.
**Still separate:** G1 word identity and post-seed unseen-word domain behavior remain open.

Steward line: *Every arrival adds wire. A seen word's new occurrence touches its existing root. Grounding those landed pieces into the next recursively covering point remains the calculation.*
---

## S0 — Header and non-claims

| Claim | This document |
|---|---|
| Partial transition reading of Hands growth | **Yes** |
| Every successful word arrival lands on \(L\) as one WORD occurrence | **Yes** — H3 + Arrive/WORD |
| Previously seen word creates a retained touch to its root | **Yes** — H1; D1 0003→0000 via POINTER 0004 is the bounded witness |
| \(\operatorname{Reach}_L\) as a read over POINTER ancestry | **Yes** — no stored field |
| D1 0010 reaches all eleven D1 rows | **Yes, bounded theorem** |
| General punch-card GROUND schedule / grouping / base | **No** — H2 states the required effect; calculation remains open |
| Universal POINTER arity | **No** — Q2 CONFLICT retained |
| General post-seed unseen-word behavior | **No** — H1/H3 do not settle domain admission |
| Shadow / H×C×W as Core state | **No** |
| Permission to add src/ | **No** |
| Acceptance of pointer-emission.md as a whole | **No** |

Joint readiness is now more specific than the earlier blanket blocker: **LAND defined · seen-root TOUCH defined · GROUND blocked**.

## S1 — Universe and state

### S1.1 Universe

Work in the **Hands** universe only. The sole persistent carrier is Graphic D’s append-only line. HCC-A, Coffee Cup, and Water are conceptual reference documents; the H×C×W diagrams interpret their concepts and establish no required holder machinery. Their conceptual model states introduce no Core rows or row types ([human correction](law-why-these-documents.md#conceptual-reference-documents); ASCII Core fence). The wall is \(W : \mathcal{S} \not\hookrightarrow \mathcal{H}\) ([dual-universe §1.1](clock/system-mathematical-model.md#11-universes)). Kin-read only. Shadow state is not a row of \(L\).

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

## S2 — Defined morphism: arrival lands as WORD

Piece 2 states one governing operator in mechanism and array voices. H3 now resolves the admission half explicitly: **all successful word arrivals land on Lace**.

\[
\mathsf{Arrive}(v):\; L \mapsto L^\smallfrown(\mathsf{WORD},v).
\]

Let the newly appended occurrence index be

\[
j=|L| \quad\text{(measured before the append).}
\]

Properties:

- Every successful word arrival appends exactly one new WORD occurrence.
- The prior prefix is unchanged.
- Repeated \(v\) still yields a new occurrence at a new permanent index.
- First occurrence versus later occurrence changes **wordspace role**, not whether the arrival lands.
- A later occurrence is more Lace, not a new lexical root and not an interned count.

The exact equality rule on \(v\) remains G1 OPEN. This model therefore states the landing morphism without pretending to have solved case, stemming, punctuation, or other identity policy.

For a value already seen in the pre-arrival state, landing is only the first act of the arrival. S3.3 gives the required root-touch. The later GROUND operation remains separate and unresolved.

## S3 — Readings (not stores)

### S3.1 Star occurrence membership, root, and full formation

Define the WORD-occurrence view:

\[
\mathrm{StarWords}_L(v)=\{\,i<|L|\mid e_i=(\mathsf{WORD},v)\,\}.
\]

This is a read, not a table.

For a seen value, define the distinguished word root as the first occurrence:

\[
\mathrm{Root}_L(v)=\min \mathrm{StarWords}_L(v),
\qquad \mathrm{StarWords}_L(v)\neq\varnothing.
\]

This root notation is derived from the source fact that the first occurrence begins the star plus H1's “touch to word root.” It introduces no root store.

The distinction is now explicit:

- first WORD occurrence of \(v\) = root for that identity;
- later WORD occurrence of \(v\) = new wire / new occurrence;
- later occurrence \(\neq\) new lexical root.

The **full star formation** is larger than \(\mathrm{StarWords}_L(v)\): it includes the root, later occurrences, retained root-touch POINTERs, and later participation that threads those touches. None of those readings is a fifth row kind or a side table. G1 still controls what counts as the same \(v\).

### S3.2 Sequence as route

Order of WORD appends is the physical route through stars (Piece 8). No sentence container is added. Adjacency does **not** fire Φ (emission Q3 CLOSED). Leftover adjacency is emission Q3 **SPOKEN** as arrival order on the wire (B5), not a stored relation — **not accepted**, **not calculated**.

### S3.3 Touch / re-entry and reach

H1 resolves the ordinary seen-word touch target.

Take a pre-arrival state \(L\) with \(\mathrm{StarWords}_L(v)\neq\varnothing\). Let

\[
r=\mathrm{Root}_L(v),\qquad j=|L|.
\]

After \(\mathsf{Arrive}(v)\) appends the new WORD occurrence at \(j\), the seen-word arrival requires a root-touch. D1 supplies the bounded binary storage witness:

\[
\mathsf{RootTouch}(j,r):
\quad
L^\smallfrown(\mathsf{WORD},v)
\mapsto
L^\smallfrown(\mathsf{WORD},v)^\smallfrown(\mathsf{POINTER},j,r).
\]

For D1, \(j=0003\), \(r=0000\), and POINTER 0004 is “New PIE relates to first PIE.”

This does **not** establish universal binary POINTER arity. It establishes the storage shape of the witnessed seen-root touch family. The Graphic-D close reading supports ref_A = occurrence and ref_B = root for this family because ref_A is the described subject on row 0004; it does not establish that slot rule for every POINTER.

Touches remain Lace and can themselves be referenced by later POINTERs.

Define transitive backward reach as a read:

\[
\operatorname{Reach}_L(i)=
\begin{cases}
\{i\}, & e_i\text{ is WORD},\\[3pt]
\{i\}\cup\displaystyle\bigcup_{r\in refs(i)}\operatorname{Reach}_L(r),
& e_i\text{ is POINTER}.
\end{cases}
\]

No reach set is stored.

On the fixed D1 specimen:

\[
\boxed{\operatorname{Reach}_{D1}(0010)=\{0000,\ldots,0010\}}.
\]

That is a bounded witness of H2's “one point represents the entire Lace” effect. It is not yet a general grounding recurrence or base theorem.

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

### S4.2 Arrival / touch / grounding decomposition

The model now separates three obligations that the earlier single “Φ-schedule” label blurred.

#### LAND

\[
\mathsf{Arrive}(v):L\mapsto L^\smallfrown(\mathsf{WORD},v).
\]

H3: every successful word arrival lands on Lace. This is no longer open in the mathematical model.

#### SEEN-ROOT TOUCH

If \(v\) was already present in the pre-arrival state:

\[
r=\mathrm{Root}_L(v),\qquad j=|L|,
\]

then after landing the new occurrence, H1 requires the root-touch witnessed by D1 0004:

\[
\mathsf{RootTouch}(j,r)
=
\mathsf{POINTER}(j,r).
\]

This closes the ordinary seen-word root target / touch obligation in this model. It does not decide general arity.

#### GROUND

H2 requires punch-card \(n+1\) pointer creation that grounds landed material into recursively larger participation until one point represents the current Lace.

The general operation is deliberately left abstract:

\[
\mathsf{Ground} = [GAP]_{\text{grouping/cadence/base}}.
\]

What remains to calculate:

- which prior grounded pieces are operands at each grounding step;
- how many grounding POINTERs an arrival requires;
- the general base/completion condition for whole-Lace reach;
- whether general grounding is always binary;
- how the current whole-Lace point is selected from \(L\) without becoming a second store.

The D1 rows 0002, 0006, 0007, 0009, 0010 are bounded grounding/relationship witnesses. They do not by themselves provide the universal Ground algorithm.

The general POINTER append morphism remains:

\[
\Phi_{\mathrm{morphism}}:\;
L\times R\mapsto
L^\smallfrown(\mathsf{POINTER},r_1,\ldots,r_k),
\]

with each \(r_i\) naming an earlier same-line index and general \(k\ge1\). Q2 remains CONFLICT.

| Question | Current mathematical status |
|---|---|
| Q0-LAND: does a successful arrival enter \(L\)? | **CLOSED by H3 in this model** — yes, one WORD occurrence |
| Q1-TOUCH: what does a seen word touch? | **CLOSED by H1 in this model** — its word root; D1 0004 bounded witness |
| Q1-GROUND: how are pieces recursively grounded? | **OPEN calculation** — H2 states required effect, not grouping algorithm |
| Q2: general POINTER arity | **CONFLICT** |
| Q3: adjacency itself fires a relation? | **CLOSED no**; arrival order remains physical route |
| Q4: refs earlier/same line; POINTER→POINTER allowed | **CLOSED** |
| Q5: later pass through a known word | **WORD landing + root touch**; not “touch instead of WORD” |
| post-seed unseen value | **OPEN** — H1/H3 do not settle whether domain excludes it or whether its landed WORD becomes a new root |

### S4.3 Partial step schema after ROOT / TOUCH / FOLD Pass 2

For a successful word arrival \(v\), let \(L_0\) be the pre-arrival strand and \(j=|L_0|\).

Landing is always first:

\[
L_1=\mathsf{Arrive}(v)(L_0).
\]

If \(v\) was already seen in \(L_0\), the arrival then performs the required root-touch:

\[
L_2=\mathsf{RootTouch}\bigl(j,\mathrm{Root}_{L_0}(v)\bigr)(L_1).
\]

If \(v\) was not seen in \(L_0\), no root-touch target exists under H1; the post-seed unseen-word policy remains OPEN.

After landing and any required root-touch:

\[
L_{\mathrm{next}}
=
\mathsf{Ground}(L_2\text{ or }L_1),
\]

where \(\mathsf{Ground}\) is still the unresolved punch-card \(n+1\) grounding calculation. H2 fixes its required scaling effect but not the general grouping/cadence/base rule.

So the honest current schema is:

\[
\mathsf{STEP}_{\mathrm{partial}}
=
\mathsf{LAND};
\ [\mathsf{ROOT\ TOUCH}\text{ if seen}];
\ [\mathsf{GROUND}\ [GAP]];
\ \mathsf{Continue}.
\]

This keeps arrival, touch, and grounding in one Core growth operation over one \(L\) while no longer pretending they are the same unanswered question.

## S5 — Contracts I / II / III

| Contract | Role in this partial model | Contains (manifest) | Must not |
|---|---|---|---|
| **I Core** | Carrier \(L\), universal LAND/Arrive, seen-root TOUCH, general POINTER morphism, unresolved GROUND, readings | Pieces 1, 2, 4, 5, 6, 7, 8, 11, 14, 15 | Star/root table; holder oil; second store |
| **II Arrival** | Thin ordered feed; every successful word arrival lands through \(\mathsf{Arrive}\); zero own store | Piece 3; 9–10 as *use of I* | Lexicon / document store at the edge |
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
8. Filling the remaining GROUND schedule from Shadow Anchor / OBS / unrelated conceptual machinery  
9. Treating ASCII companion or emission DRAFT commit as Hands acceptance  
10. Adding `src/` or Cargo under color of this document

---

## S7 — Alignment note (soft diff)

| This partial model | Source / prior | Current stance |
|---|---|---|
| \(L\) append-only | Graphic D / Piece 6 | unchanged |
| \(\mathsf{Arrive}(v)\) WORD append | Piece 2 / H3 | **universal successful word landing** |
| \(\mathrm{Root}_L(v)\) | first occurrence begins star + H1 | read only; no root table; G1 still OPEN |
| later WORD occurrence | Graphic D 0003 / Rule Zero | new wire, not new lexical root |
| seen-root touch | H1 + D1 0004 | required for seen word; bounded binary witness |
| \(\operatorname{Reach}_L\) | D1 refs + H2 interpretation | read only; D1 0010 covers 11/11 rows |
| general \(\Phi_{\mathrm{morphism}}\) | Graphic D / pointer-emission draft | append POINTER to earlier same-line refs |
| \(\mathsf{Ground}\) | H2 + D1 grounding witnesses | required effect; grouping/cadence/base still \([GAP]\) |
| general arity | D2/D1 vs manifest qualification | Q2 CONFLICT retained |
| adjacency as emit trigger | Q3 / D1 close reading | CLOSED no |
| POINTER→POINTER | D6 / Q4 | allowed; essential to recursive grounding |
| Star occurrence view | Piece 7 | partial observation only; full formation includes touches/grounding |
| post-seed unseen word | H1/H3 boundary | OPEN |
| Holder conceptual references | live law | excluded from Core state / scheduler |

No second store, no new row kind, and no competing atom is introduced.

## S8 — Steward receipt

| Field | Value |
|---|---|
| Current campaign | ROOT / TOUCH / FOLD Pass 2 **EXECUTED** |
| Product | docs/math-execution-model.md |
| Successful word landing | **DEFINED / human-grounded by H3** |
| Later occurrence preserved | **YES** — WORD append remains |
| Word root | first WORD occurrence read; no table |
| Seen-word root touch | **DEFINED / human-grounded by H1**; D1 0004 bounded witness |
| Reach | read only |
| D1 final reach | Reach(0010)=0000..0010 bounded theorem |
| General GROUND | **[GAP] grouping/cadence/base** |
| General arity | **Q2 CONFLICT** |
| G1 identity | OPEN |
| Post-seed unseen word | OPEN |
| pointer-emission.md | unchanged / not blanket-accepted |
| src/ | not authorized |

**Current steward tests:** every successful word arrival adds a WORD occurrence; repeated occurrence is not interned; a seen occurrence touches its root; touch remains addressable Lace; Reach is derived rather than stored; D1 grounding witnesses do not become the universal grounding algorithm; general arity is not silently fixed; GROUND remains the explicit residual blocker.

*Shoe in hands. Every arrival adds wire. Seen wire passes back through its existing root. Grounding those retained passages into the next recursively covering point is the remaining calculation.*
