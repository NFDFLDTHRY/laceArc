# MANIFEST RECONCILIATION — Pass 3 PLAN · adversarial composition audit

**Status:** **EXECUTING** 2026-09-21.  
**Campaign:** Manifest Reconciliation. **Pass:** 3.  
**Baseline:** Pass 2 verdict `FOUNDATION SOUND WITH DATED ARTIFACTS` at `17048f5e7f5308aba4a127d6b4a69f44aa581be4`.  
**Primary question:** do the Pass-32 mechanism catalog and systems-manifest contract registry actually compose into one coherent machine, or are there hidden duplicate mechanisms, orphan semantics, untyped authority transfers, state leaks, or disguised GAPs?  
**Lab:** Lab Source Architecture Pass 4 remains **PAUSED** throughout this pass.

## 0. Frozen hypotheses under attack

```
Catalog:
    L-M01 … L-M21
    L-GAP-RM

Contracts:
    SM-C01 … SM-C21
    SM-GAP-RM
    SM-X-BEH / SM-X-RES / SM-X-PLAT / SM-X-L3

Pass-2 verdict:
    FOUNDATION SOUND WITH DATED ARTIFACTS
```

Pass 3 is allowed to falsify any of those claims. If a catalog or contract defect is demonstrated, repair the canonical pair first and rerun the affected audit before certifying anything downstream.

## 1. Mechanism identity audit

For each `L-Mxx` record:
- unique job;
- authority;
- source/human basis;
- inputs;
- outputs;
- what changes because it exists;
- nearest confusing mechanism;
- proof the two are not behaviorally identical.

High-risk collision groups:
- L-M07 Star formation / L-M17 Star-internal traffic / L-M21 Star-search read;
- L-M11 Thread-touch / L-M12 Persistence-re-entry / L-M13 Recursive participation;
- L-M05 Join / L-M18 RootTouch / L-M19 Finite grounding;
- L-M14 N-D presentation / L-M15 Projection / L-M20 Sampling.

Do not merge/split merely because names resemble each other. Record the behavioral collision first.

## 2. Alias and operation map

Classify live architectural vocabulary as:
- canonical mechanism;
- specialization;
- derived operation;
- view name;
- contract verb;
- historical alias;
- candidate/lab term;
- GAP name.

Target terms include WORD, root, RootTouch, Join, POINTER, touch, thread, participation, Ground, sampling, SampleRead, frontier, SearchHandle, star, route, Continue, LAND, Arrive, projection, N-D, relation, point, cluster, variable and tick.

No current architectural term may introduce behavior outside the catalog without being admitted as a defect.

## 3. Reverse census

Search current/canonical/current-proposal surfaces from repository terminology back into the catalog.

Every behavior claim must route to exactly one of:
- L-M01…L-M21;
- SM-X-* external/candidate machinery;
- SM-GAP-RM;
- explicitly historical/non-architectural terminology.

Anything else is an orphan mechanism claim.

## 4. Forward census

For each L-M mechanism record:
- incoming edges;
- outgoing edges;
- governing contract;
- current consumers;
- distinct behavior witness.

A catalog entry with no distinguishable consequence is suspect over-splitting. One entry with multiple unrelated consequences is suspect under-splitting.

## 5. Typed-edge composition audit

Every canonical topology edge receives a type:

```
FEEDS
SPECIALIZES
USES
READS
DERIVES
PERSISTS-AS
CONSTRAINS
CANDIDATE-FEEDS-LAB
BLOCKED-BY
```

For every edge verify:
- source output is a valid destination input;
- authority permits the transfer;
- no hidden transformation sits inside the arrow;
- the destination does not gain write authority by connection.

SM-GAP-RM must remain a visible edge/socket, never hidden inside a direct L-M20 → L-M05 arrow.

## 6. Write-authority audit

For every catalog mechanism and SM-X boundary classify:
- append WORD?
- append POINTER?
- mutate prior entries?
- derive working state?
- read/project only?

Expected authoritative write surface:
- L-M04 WORD entry form / current arrival law;
- L-M05 Join/POINTER constructor once a legal append is warranted;
- L-M18 RootTouch as ruled specialization of L-M05;
- no SM-X write authority;
- no derived sampling/search/projection write authority;
- SM-GAP-RM names the missing decision, not an implemented writer.

## 7. State-ownership audit

Classify every required state as:
- authoritative Graphic-D Lace;
- derived/reconstructible working state;
- view-only state;
- source/candidate lab state.

Persistent facts outside Lace that cannot be reconstructed from Lace are a one-store breach unless separately authorized.

Target states: root lookup, star membership, sampling cells, SearchHandle, frontiers, route-family labels, projection geometry, candidate/harness state.

## 8. GAP socket

Define both sides of SM-GAP-RM:

LEFT:
- L-M20 produces sampling-derived structural evidence.

RIGHT:
- L-M05 requires addressable ordered earlier Lace operands before Join.

OPEN:
- when structural evidence deserves retention;
- how a non-addressable sampled structure becomes an addressable operand when retention requires it;
- any task-specific role/order information required for the retained relation.

Explicit non-answers remain adjacency, every sampled cell, exact-repeat-only, first-seen-every-cell, semantic similarity, B8 permanence, D1 lookup, platform primitives and external-source citation.

## 9. Piece 1–15 ↔ L-M01–21 audit

Build the complete crosswalk and classify each relation:
- 1:1;
- 1:M historical umbrella;
- M:1 shared detailed contract;
- later specialized mechanism.

Verify that original Pieces do not compete with specialized current contracts as rival authorities.

## 10. Human ruling map

Map H1…H12 to the L-M / SM-C surfaces they amend or create.

For every ruling distinguish:
- source ambiguity/open it resolved;
- later mechanism/specialization it supplies;
- whether any current source citation accidentally absorbs the human amendment.

## 11. SM-X ingress audit

Every behavioral/research/platform/Layer-III source path must enter:
source → source clipboard/product → matching SM-X contract → LAB → bounded evidence.

No candidate may jump directly to L-M/SM-C authority.

## 12. Forbidden-state ownership

For each canonical forbidden state record:
- governing contract;
- mechanism that could otherwise create it;
- boundary responsible for refusing it.

At minimum:
second authoritative store; Star table; meaning/gloss store; projection write-back; sample registry; semantic chooser in Join; interned repeated WORD; forward/dangling POINTER; retargeted POINTER; hidden relation payload in Contract II; sampling-as-Core-store; historical artifact as current authority.

## 13. Erase and swap attacks

For every L-M mechanism:
- erase-one: what observable contract behavior becomes undefined/impossible?

For high-risk pairs:
- swap sampling/projection;
- persistence/retention;
- Join/RootTouch;
- Star/star-view;
- touch/recursive participation;
- sequence/definition route;
- WORD identity/root identity.

A valid distinction must fail the swap for a pointable contractual reason.

## 14. Traceability matrix

Produce an audit artifact mapping:

```
SOURCE / HUMAN
      ↕
L-M mechanism
      ↕
SM contract
      ↕
current consumers
```

The matrix is **not a third canonical architecture source**. If it exposes a defect, repair the canonical pair and rerun the affected rows.

## 15. Falsifiers

| ID | Fires when |
|---|---|
| F1 | two L-M mechanisms have no behavioral distinction |
| F2 | one L-M contains two independently behaving mechanisms |
| F3 | a current architectural term cannot map to L-M / SM-X / GAP / history |
| F4 | a catalog mechanism has no distinct consequence or consumer |
| F5 | a topology edge connects incompatible output/input contracts |
| F6 | an edge implicitly transfers write authority |
| F7 | anything outside the legal row-construction surface obtains authoritative append authority |
| F8 | required persistent side state cannot be reconstructed from Lace |
| F9 | Piece 1–15 and specialized SM-C contracts compete as current definitions |
| F10 | a human ruling is rewritten as PNG/source behavior |
| F11 | a candidate path bypasses SM-X + Lab into Core |
| F12 | SM-GAP-RM is hidden in an edge/input/helper/derived state |
| F13 | a current forbidden state has no contract boundary responsible for it |
| F14 | Pass 3 becomes a third canonical architecture source |

## 16. Verdicts

- **FOUNDATION COMPOSITIONALLY CLOSED**
- **FOUNDATION SOUND WITH EXPLICIT OPEN INTERFACES**
- **FOUNDATION REQUIRES REPAIR**

Expected honest target: **FOUNDATION SOUND WITH EXPLICIT OPEN INTERFACES**.

No verdict resumes Lab Pass 4 automatically.
