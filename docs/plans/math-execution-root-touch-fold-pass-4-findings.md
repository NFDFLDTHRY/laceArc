# Mathematical execution model - ROOT / TOUCH / FOLD Pass 4 findings

**Status:** PHASE A EXECUTED 2026-09-20. **Station:** maps (Astra-math).
**Plan:** [math-execution-root-touch-fold-pass-4-plan.md](math-execution-root-touch-fold-pass-4-plan.md).
**Phase-A pin:** bf04188421d266df0498ab5e4183fd28a563e032.
**Scope:** reconciliation analysis only. Law files are still unchanged at this point.
**Acceptance:** absent. No src/.

## 0. Phase-A conclusion

Pass 3 closed the physical construction problem:

\[
\mathsf{Join}(a,b)
=
(\mathsf{POINTER},a,b)
\]

with recursive finite-sample grounding.

Pass 4 Phase A finds that the remaining issue is **not** another Core morphism.

The remaining question is:

> What supplies the ordered relation/sample operands to Join?

The evidence supports one boundary statement and no automatic chooser:

\[
\boxed{
\text{selected ordered operands}
\longrightarrow
\mathsf{Join}
}
\]

Core does not discover meaning, infer a relation from similarity, or invent a sample. Once the ordered operands are selected, the append is mechanically determined.

The upstream mechanism that selects a non-root-touch relation/sample remains **OPEN**.

RootTouch is the special case whose selection is already human-ruled:

\[
(\text{new occurrence},\mathrm{Root}(v)).
\]

---

## 1. Selection placement matrix

| Candidate | Source support | Adds new input/state? | Requires meaning/heuristic? | Contract fit | Verdict |
|---|---|---:|---:|---|---|
| **S-A Core derives Select(L,v)** | no deterministic selection rule in Graphics/manifest; old evidence explicitly says selected indices/timing remain GAP | no side store if pure | any concrete rule now would be arbitrary; common proposals require forbidden meaning/similarity | Contract I | **BLOCKED** |
| **S-B punch-card carries (v,S)** | C10/B6/Piece 3 say raw word sequence / punch-card, no interpretation | **yes, expands input schema** | no | Contract II | **REFUTED under current interface** |
| **S-C explicit Ground(S) query/action** | Piece 14 says query/read operator is GAP; no source write/query action is supplied | **yes, adds operation** | no | new interface | **BLOCKED** |
| **S-D route/sample boundary chooses S** | sequence/definition/document routes exist; but sentence/document boundaries are not D row types and C6 family labels are views | no if derivable | no | I/II | **BLOCKED** |
| **S-E relation assertion = ordered operands** | Piece 5 inputs are earlier indices; D1 gives ordered ref pairs; relation itself is the POINTER; Pass 3 proves constructor | **no new store** | no | constructor precondition | **ADMIT as boundary; chooser upstream remains OPEN** |

### S-E exact scope

S-E does **not** claim to solve why a relation is asserted.

It says only:

- a POINTER/Join cannot select its own operands;
- the relation to be written is represented by its selected ordered operands;
- those operands are the inputs to the constructor;
- Core responsibility starts at validating earlier indices and appending Join.

This turns "selection" into an explicit precondition rather than hiding it inside Φ.

The source still does not say what automatic subsystem, if any, originates arbitrary non-root-touch relation assertions.

---

## 2. Q0-Q5 + Slot II current-state adjudication

| Question | Phase-A disposition | Reason |
|---|---|---|
| **Q0 WORD admission** | **CURRENT RULE: all successful word arrivals append WORD** | H3; Graphic D repeated WORD; Piece 3/4 |
| **Q0 unseen root** | **CURRENT RULE: unseen arrival's WORD becomes root** | H4 + first occurrence begins star |
| **Q0 seen root** | **CURRENT RULE: later occurrence remains WORD; root stays first occurrence** | H1 + D1 0003/0004 |
| **Q1 RootTouch** | **CURRENT RULE: seen occurrence emits Join(new occurrence, root)** | H1 + D1 0004 |
| **Q1 physical relation constructor** | **CURRENT RULE: selected ordered pair emits binary Join** | Pass 3 construction + D2/D1/D6 + H5/H6 |
| **Q1 arbitrary relation/sample chooser** | **[GAP] upstream selection** | no source-backed chooser |
| **Q2 arity** | **LAW DELTA: binary for the governing Join constructor** | D2 schema, D1 6/6, H5/H6 n+1 construction; no live source requires non-binary rows |
| **Q3 adjacency** | **unchanged CLOSED: adjacency alone does not emit** | D1 counterexample |
| **Q4 backward/same line** | **CLOSED; proof is index check at append** | operands must be existing indices before Join |
| **Q4 target kind** | **CLOSED: WORD or POINTER** | D6 / D1 |
| **Q5 later pass** | **CURRENT RULE: WORD occurrence + RootTouch Join** | H1-H4 + D1 |
| **Slot II word identity** | **CURRENT RULE: WORD/root is lexical identity anchor; definition-route joins participate in its star** | D2 variable-is-word + H4 root + B4/C9 definition route; route does not replace root |

### Q2 law-side reasoning

The earlier Q2 conflict had one positive side and one absence:
- positive: D2 draws ref_A/ref_B and D1 is 6/6 binary;
- negative side: source did not write the English phrase "exactly two."

There is no positive source requiring \(k\neq2\).

H5/H6 add the human n+1 construction:

\[
n\text{-point} + 1\text{ selected point}
\rightarrow
(n+1)\text{-point}.
\]

Pass 3 proved arbitrary finite samples do not require n-ary physical rows.

**Phase-A verdict:** current law may state **binary Join** as the governing constructor. Preserve the prior Q2 conflict as dated history, but it is no longer the current answer.

This is not human acceptance of the file.

---

## 3. Historical statements inventory

| Stale/currently misleading statement | Disposition |
|---|---|
| "later WORD not required" | **SUPERSEDED current rule; HISTORICAL-RETAIN in Pass 7 record** |
| "later pass is Φ instead of WORD" | **SUPERSEDED; HISTORICAL-RETAIN** |
| "Q2 CONFLICT" as current | **SUPERSEDED current rule; HISTORICAL-RETAIN** |
| "Φ-schedule = one broad unanswered when" | **SUPERSEDED** by RootTouch + Join constructor + upstream selection split |
| "which touch is written is wholly Φ-schedule" | **SUPERSEDED** for root touch and selected Join construction |
| "word is the defining pointer cluster" | **SUPERSEDED current Slot II; HISTORICAL-RETAIN** |
| "post-seed unseen value OPEN" | **SUPERSEDED by H4** |
| "GROUND grouping/cadence/base open" | **SUPERSEDED by Pass 3 Join theorem** |
| "G2 / Φ [GAP]" on global ASCII | **HANDOFF** to later global propagation pass |
| graphics ASCII "emission remains [GAP]" | **HANDOFF** to graphics station if a later source-reading update is wanted; graphics ASCII was intentionally not edited here |
| old crate/atomic maps saying selection/arity/timing all open | **HANDOFF** to later maps/toolchain reconciliation; outside Pass 4 law target |

No historical receipt should be deleted.

---

## 4. Pointer-emission law edit authorized for Phase B

Phase B may add a **Current reconciliation — ROOT / TOUCH / FOLD Pass 4** section above the historical Pass-7 question block.

It should make the current rule explicit:

### Current growth

\[
\mathsf{Arrive}(v)
\Rightarrow
\mathsf{WORD}(v)
\]

then:

\[
\text{unseen}\Rightarrow \text{new WORD is root}
\]

\[
\text{seen}\Rightarrow
\mathsf{Join}(\text{new occurrence},\mathrm{Root}(v)).
\]

For any selected ordered earlier points \(a,b\):

\[
\mathsf{Join}(a,b)
=
(\mathsf{POINTER},a,b).
\]

Finite sample:

\[
P_1=s_1,\qquad P_{n+1}=\mathsf{Join}(P_n,s_{n+1}).
\]

### Current gap

\[
\boxed{
\text{arbitrary non-root-touch relation/sample selection}=[GAP]
}
\]

The law file must say:
- Join does not discover relations;
- selected operands are its inputs;
- root-touch operands are already ruled;
- no automatic general chooser is supplied by current sources.

### Acceptance

Retain:
- DRAFT / reconciled but not accepted;
- no src/;
- no Cargo;
- no emit stub;
- explicit human acceptance still required.

### Historical Pass 7

Retain verbatim or clearly dated.
Do not let its old answers appear as current after the reconciliation section.

---

## 5. Systems-manifest Piece delta authorized for Phase B

### Piece 2 Governing Rule

Add current human-ruling qualification:
- every arrival lands as WORD;
- unseen row becomes root;
- seen row root-touches;
- selected relations use the same binary Join constructor.

Selection source remains OPEN except root-touch.

### Piece 3 Raw Input

Update:
- every successful arriving word produces one WORD occurrence;
- unseen occurrence becomes root;
- seen occurrence does not replace root.

Do **not** add sample metadata to Contract II.

### Piece 4 WORD

Add:
- first occurrence/root role;
- later occurrence role;
- Root is a read/role, not type.

### Piece 5 POINTER

Replace "example form" uncertainty with current reconciliation:
- binary \(\{index,type,ref_A,ref_B\}\);
- both refs earlier;
- each operand may be WORD or POINTER;
- binary Join is the one physical relation constructor;
- new pointer is itself an addressable point;
- repeated Join grounds finite selected samples.

Retain:
- adjacency alone does not choose operands;
- arbitrary relation/sample selection remains GAP.

### Piece 7 Star

Clarify full star:
- root;
- later WORD occurrences;
- RootTouch Join rows;
- later Join participation that reaches those touches.

No Star table.

### Piece 8 Sequence

Retain sacred WORD arrival order.
Add:
- grounding adds participation without replacing arrival sequence.

### Piece 9 Dictionary

Clarify:
- word identity remains anchored by WORD/root;
- definition is route/participation through roots/points;
- definition Join structure does not replace lexical identity.

### Piece 10 Document

Add:
- arrivals land and seen words root-touch;
- additional relation/sample grounding uses Join once operands are selected;
- document boundary remains unstated.

### Piece 11 Touch

Make explicit:
- RootTouch = Join(new occurrence, root);
- touch and general grounding use same physical binary constructor;
- Join rows can participate in later Join.

### Piece 12 Dimension

Add current reconciliation:
- points-of-points / Join ancestry supplies the storage correspondent for relation-among-relation N-D participation;
- dimension labels remain views, not row types.

Do **not** claim C6 route-family labels are stored.

### Piece 13 Projection

Add:
- dot-to-dot N-D projection reads Join ancestry;
- no write-back.

### Piece 14 No Collapse

Add:
- no global sample-size registry;
- equal-cardinality samples remain distinct construction history.

### Piece 15 Star-Internal Traffic

Clarify:
- interior crossings are WORD/Join participation;
- no coordinates.

---

## 6. Manifest control-flow replacement authorized

Replace stale current flow:

    arrive -> WORD -> route star -> optional POINTER [GAP] -> continue

with:

    arrive
      -> append WORD
      -> if unseen: this WORD is root
         if seen: append RootTouch Join(new occurrence, root)
      -> for a selected relation/sample:
           append binary Join rows by n+1 grounding
      -> continue

Selection qualification:

> For root-touch, operands are fixed by H1. For arbitrary relation/sample grounding, current sources do not specify an automatic selector. Join consumes selected ordered operands; it does not infer them.

---

## 7. Interface-coherence I4 audit

| Check | Result |
|---|---|
| **I4-1 arrival -> WORD** | **PASS** |
| **I4-2 unseen -> root without new field** | **PASS** |
| **I4-3 seen -> RootTouch with one Join** | **PASS** |
| **I4-4 Join -> reusable point** | **PASS** |
| **I4-5 arbitrary finite selected sample -> point without second store** | **PASS** by Pass 3 theorem |
| **I4-6 point ancestry -> N-D projection without write-back** | **PASS** |
| **I4-7 selection handoff** | **PARTIAL: ordered operands are Join inputs; upstream arbitrary chooser remains [GAP]** |

This is the only open handoff in the corrected chain.

---

## 8. Manifest open-question delta

Current open questions should be updated as follows:

1. Tokenization / G1 — **remain OPEN**.
2. Broad "POINTER emission algorithm / arity / adjacency" — **replace** with:
   - arbitrary relation/sample selection remains OPEN;
   - constructor = binary Join;
   - adjacency alone does not emit.
3. Document/conversation/provenance boundaries — remain OPEN.
4. Read/query/traversal — remain OPEN.
5. Concurrency — remain OPEN.
6. "physical encoding of threading beyond WORD + pointer" — narrow: storage correspondent is Join participation; geometric rendering remains projection.
7. Kauffman adjacent reference note — unchanged.
8. Multi-Lace/snapshot/export — unchanged.
9. Slot assignment — narrow: Join consumes ordered selected operands; automatic subject/operand chooser remains part of selection OPEN.
10. Every entry eventually referenced — remain OPEN / not required by current construction.
11. C6 family labels — remain OPEN as labels/views; no row field.
12. "Pointer emission remains unanswered" — **SUPERSEDE**. Replace with:
    - constructor/grounding mechanics reconciled;
    - arbitrary relation/sample selection remains OPEN;
    - law acceptance remains absent.

---

## 9. Selection-placement final verdict

\[
\boxed{
\text{S-E ADMITTED as constructor boundary}
}
\]

Join's inputs are the selected ordered operands.

\[
\boxed{
\text{upstream arbitrary chooser remains [GAP]}
}
\]

S-A BLOCKED, S-B REFUTED under current input contract, S-C BLOCKED, S-D BLOCKED.

This is intentionally narrower than inventing a scheduler.

---

## 10. Phase-B preconditions

Before law edits:

1. release maps;
2. claim law at current main;
3. re-fetch pointer-emission.md and systems-manifest.md;
4. verify their blob SHAs remain:
   - pointer-emission.md: dc01b4fbf23791da91a89427c89646db32ea4689
   - systems-manifest.md: 01587dbe3f894812dc11c72436003cf0d46cf277
5. if either changed materially, stop and rebase Phase A.

If unchanged, apply the authorized deltas only.

---

## 11. Phase-C propagation docket seed

After law stabilizes, maps must record a later propagation docket.

Known stale targets already visible:

- docs/systems-manifest-ascii.md:
  - Spine G2 / Φ [GAP];
  - Contract-I flow still broad;
  - Pass 26-28 qualifications referring to old emission gap.
- docs/graphics/graphic-b-ascii.md:
  - B8 says POINTER-when [GAP].
- docs/graphics/graphic-c-ascii.md:
  - C7 G2 [GAP];
  - C6-to-D seam needs current Join/N-D reading without turning C into storage law.
- docs/atomic-primitives-map.md:
  - P3 trigger/selection/arity grouped under old G2.
- crate/branch contracts:
  - arity / admission / target-selection language may be stale.
- environment/reduction:
  - sigma treated as broad free schedule; needs later bounded reconciliation.

Pass 4 does not edit these.

---

## 12. Phase-A receipt

| Field | Result |
|---|---|
| Q0-Q5 + Slot II | **adjudicated** |
| Q2 law recommendation | **binary current Join; historical conflict retained as history** |
| selection candidates | S-A BLOCKED · S-B REFUTED · S-C BLOCKED · S-D BLOCKED · **S-E ADMIT boundary** |
| automatic chooser | **[GAP]** |
| manifest I4 audit | 6 PASS + I4-7 PARTIAL |
| exact law deltas | **prepared** |
| global ASCII | unchanged |
| law files | unchanged |
| acceptance | absent |
| src/ | 0 |
| Next | release maps -> claim law -> reconcile pointer-emission + manifest |

## Steward test

The law should now say exactly what the machine can do without pretending the machine knows why two arbitrary pieces should relate. The relation's selected operands are enough to build the point. Choosing an arbitrary relation is a separate question and stays named.
