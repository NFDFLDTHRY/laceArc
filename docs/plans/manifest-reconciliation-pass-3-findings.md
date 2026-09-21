# MANIFEST RECONCILIATION — Pass 3 findings

**Status:** **EXECUTED** 2026-09-21.  
**Campaign:** Manifest Reconciliation. **Pass:** 3.  
**Baseline:** Pass 2 verdict `FOUNDATION SOUND WITH DATED ARTIFACTS` at `17048f5e7f5308aba4a127d6b4a69f44aa581be4`.  
**Audit artifact:** [Pass 3 bidirectional traceability](manifest-reconciliation-pass-3-traceability.md).  
**Verdict:** **FOUNDATION SOUND WITH EXPLICIT OPEN INTERFACES.**  
**Lab:** Lab Source Architecture Pass 4 remains **PAUSED**. Pass 3 does not resume it.

## 1. What Pass 3 tested

Pass 1 established the canonical pair.

Pass 2 propagated it through current consumers.

Pass 3 attacked composition itself:

```
SOURCE / HUMAN authority
          ↓
      L-M mechanism
          ↓
       SM contract
          ↓
  typed mechanism edges
          ↓
   state/write ownership
          ↓
current consumers / proposals
```

The audit asked whether individually plausible mechanisms/contracts could still hide:
- duplicate mechanisms;
- overloaded mechanisms;
- orphan vocabulary;
- incompatible edge handoffs;
- write-authority leaks;
- unreconstructible second state;
- competing Piece vs specialized-contract authority;
- human rulings rewritten as PNG source;
- candidate→Core authority jumps;
- a laundered retention/materialization gap.

## 2. Canonical topology defect — FIRED and repaired

Two edges in the original Pass-32 ASCII topology failed literal composition even though the contracts themselves were correct.

### Defect A — star → RootTouch

Original bare ordering visually read:

```
WORD/root → star → RootTouch → Join
```

But current contracts say:
- the new seen WORD occurrence plus existing root are RootTouch inputs;
- RootTouch **specializes Join**;
- the recorded RootTouch then contributes participation to the star formation.

The arrow direction could make an already-formed star appear to *produce* RootTouch.

### Defect B — persistence/re-entry → Join

Original bare ordering visually read:

```
thread/touch → persistence/re-entry → Join
```

That is worse: it can turn B8 permanence into a retain/write trigger.

Current SM-C12 says the opposite:
- its input is participation **already recorded** on Lace;
- persistence/re-entry produces no mandatory new row;
- it never decides which sampled structure is retained.

### Repair

Pass 3 replaced the Pass-32 bare-arrow topology with a typed-edge topology using:

```
FEEDS
USES
SPECIALIZES
READS
DERIVES
CONSTRAINS
BLOCKED-BY
```

Current critical edges are now explicit:

```
L-M03 --FEEDS--> L-M04

L-M18 --SPECIALIZES--> L-M05
L-M18 uses new occurrence + root from L-M04
recorded RootTouch contributes to L-M07

L-M12 --CONSTRAINS--> already-recorded participation
L-M12 NEVER feeds a new Join decision

L-M20 --FEEDS--> L-GAP-RM
L-GAP-RM --BLOCKED-BY--> general retained/materialized L-M19/L-M05 path

L-M19 --USES--> L-M05
only after selection/addressability

L-M20/L-M21/L-M14/L-M15/L-M17
READ/DERIVE only; no append authority
```

**F5 and F6 fired before repair and pass after rerun.**

## 3. Mechanism identity audit

All 21 L-M mechanisms survived the identity/erase/swap attacks at their stated catalog grain.

High-risk groups remain distinguishable:

### Star family

- **L-M07** = retained star formation around a word/root.
- **L-M17** = source-supported view of star-interior traffic.
- **L-M21** = derived search procedure/frontiers/handles.

Formation ≠ source view ≠ search computation.

### Participation family

- **L-M11** = source/topological thread/touch event.
- **L-M12** = persistence/re-entry of participation that already exists.
- **L-M13** = relation-among-relation / POINTER→POINTER recursion.

Event ≠ persistence property ≠ recursive relation structure.

### Constructor family

- **L-M05** = one generic binary Join constructor.
- **L-M18** = mandatory seen-word RootTouch specialization.
- **L-M19** = repeated Join construction over an already-selected/addressable finite sample.

Constructor ≠ ruled special case ≠ finite grounding construction.

### Derived/view family

- **L-M14** = semantics of N-D participation presentation.
- **L-M15** = generic projection/no-write-back boundary.
- **L-M20** = derived position×scale sampling computation.

N-D meaning ≠ projection fence ≠ structural discovery computation.

**F1, F2 and F4 do not fire after audit.**

## 4. Reverse vocabulary census

Current mechanism-shaped vocabulary was mapped without inventing new substrate mechanisms.

Key results:

| Vocabulary | Current classification |
|---|---|
| LAND / Arrive | contract transition: L-M03 → L-M04 |
| Continue | L-M02 contract verb |
| WORD | L-M04 row kind |
| root | role/read inside L-M04 |
| POINTER / Join | L-M05 row/constructor |
| RootTouch | L-M18 specialization |
| Ground / GROUND | L-M19 derived construction |
| SampleRead / sampling | L-M20 |
| SearchHandle / frontier / star-search result | L-M21 |
| star | L-M07 |
| star traffic | L-M17 |
| route / sequence | L-M08 |
| dictionary route | L-M09 |
| document feed/route | L-M10 |
| thread / touch | L-M11 |
| persistence / re-entry | L-M12 |
| relation-among-relation | L-M13 |
| N-D / dimension | L-M14 |
| projection/shadow | L-M15 |
| cluster / visual variable label | SM-X-L3 view terminology |
| tick | append-event metaphor over current row/storage mechanisms |
| Φ | historical broad emission alias, now decomposed |
| σ | dated scheduler/search-space terminology; not current mechanism |

No live architectural term inspected requires a new L-M substrate mechanism.

**F3 does not fire.**

## 5. Current-proposal apparatus is not orphan Core machinery

The reverse census also reached the whole-app proposal layer:

- Carrier;
- Hopper;
- Seed corpus;
- published Frontier;
- refusal edge;
- Runtime Layer III;
- `Σ=(L,h,K)`.

These were already cataloged by Pass 27/28 as **cite-only proposal apparatus**.

Pass 3 classifies them as current/dated **whole-app proposals**, not adopted L-M substrate mechanisms:
- Carrier/residence remains R3;
- refusal/custody remains R4;
- Frontier/concurrency remains R9;
- seed corpus remains Open #15;
- Runtime Layer III remains proposal/SM-X-L3 territory.

They therefore are not orphan mechanism claims and do not gain Core authority.

## 6. Open #14 stale-premise defect — FIRED and repaired

Pass-27 Open #14 was correct **at that historical revision**:

> Piece 13 allowed graph databases / embedding spaces / definition tables as disposable views while staking forbade embedding store.

That premise is no longer current.

Current Piece 13 / SM-C15:
- permits read-only projection;
- forbids write-back;
- grants no graph/embedding/definition-table store;
- says renderers may not own relation truth.

Current SM-C16 separately forbids embedding-as-truth and authoritative side registries. Staking still forbids graph DB / embedding store / Star table.

Pass 3 therefore records:

```
Open #14
    = SUPERSEDED as a CURRENT ARCHITECTURAL CONFLICT
    = preserved as historical Pass-27 evidence
```

R10 is reframed rather than silently deleted:

> May WebNN be used in the shipped app solely as a non-authoritative recomputed projection under SM-C15 / SM-X-PLAT / SM-X-L3, with no embedding store and no inferred relation truth?

That is an **application proposal**, not a conflict between governing texts.

Current proposal surfaces repaired:
- `rust-nostd-branch-contracts.md`;
- `lace-context-iter7-pass-2-compute-and-inventory.md`;
- current Pass-32 qualification in the global ASCII.

The historical Pass-27 audit remains unchanged.

## 7. Write-authority audit

The canonical write surface remains narrow.

### Direct/current row construction

- **L-M04 WORD**: successful-arrival WORD append.
- **L-M05 Join**: POINTER append once a legal retained relation / ordered earlier operands are warranted.

### Specialization/construction using L-M05

- **L-M18 RootTouch**: mandatory ruled special case; no independent constructor.
- **L-M19 finite grounding**: repeated use of L-M05 after selection/addressability; no independent retain decision.

### No independent write authority

- L-M07…L-M17 except the L-M18 specialization;
- L-M20 sampling;
- L-M21 search;
- L-M14/15/17 views;
- all SM-X integration classes;
- L-GAP-RM, which is not an implemented mechanism.

No READS / DERIVES / CONSTRAINS edge transfers append authority.

**F7 does not fire after the topology repair.**

## 8. State-ownership audit

Only Graphic-D Lace is authoritative retained state.

Reconstructible/non-authoritative:
- root role;
- star view/membership;
- sequence read;
- N-D geometry;
- projection layout;
- star-interior view;
- sampling cells/ridges;
- SearchHandle/frontiers;
- route-family labels where derivable.

Candidate/tool state stays outside Core and cannot become Lace truth by persistence alone.

No current canonical mechanism requires an unreconstructible authoritative side store.

**F8 does not fire.**

## 9. SM-GAP-RM socket is explicit

Pass 3 reduces the open interface to a pointable socket:

```
L-M20 sampling
  output: structural evidence
             |
             v
       SM-GAP-RM
       ----------
       retain when?
       ephemeral sample → addressable point how?
       role/order evidence when needed?
             |
             X
             |
L-M19 / L-M05
  require lawful/addressable ordered Lace operands
```

Known non-answers remain:
- adjacency;
- every sampled cell;
- exact-repeat-only;
- first-seen-every-cell;
- cheapest-contiguous universal grounding;
- semantic/embedding similarity;
- B8 persistence;
- D1 lookup;
- platform primitives;
- citation to behavioral/research machinery.

RootTouch is the closed special case and does not cross this socket.

**F12 does not fire after topology repair.**

## 10. Piece 1–15 vs specialized contract audit

The old Pieces remain useful detailed/source contracts but are not rival authorities.

Important umbrella splits:

- Piece 5 primarily → L-M05, while its recursive source/detail contributes to L-M13.
- Piece 11 → L-M11 primary plus source/detail behind specialized L-M12/L-M13 and RootTouch context.
- Piece 12 → L-M14 primary with L-M13 as storage correspondence.
- L-M18/L-M19/L-M20/L-M21 are later HUMAN/DERIVED specializations that lack original one-to-one Pieces.

The **Current Mechanism Contract Registry** is the lookup authority. Where a specialized contract exists, it defines that precise current mechanism; the old Piece remains its detailed/source umbrella.

No current contradictions were found between Piece prose and the specialized contracts after reading them through the registry.

**F9 does not fire.**

## 11. Human ruling provenance

H1–H12 map cleanly without becoming PNG retrofits.

- H1 → seen-root touch / L-M18.
- H2 → historical precursor requirement for n+1/whole-Lace grounding; later refined by H5/H6.
- H3 → all arrivals land / L-M03→04.
- H4 → unseen arrival becomes root / L-M04.
- H5 → arbitrary existing portions groundable as one point / L-M19.
- H6 → n+1 construction and point-of-points consequence / L-M19, storage correspondent for N-D.
- H7/H8 → sampling discovers relationships rather than semantic/manual choice / L-M20 + GAP framing.
- H9 → star is view/search aid / L-M21.
- H10 → WORD/POINTER retained history lives on 1D / L-M06 boundary.
- H11 → derived 2D sampling working surface / L-M20.
- H12 → cross-level participation may eventually be retained / L-M20 evidence → GAP → L-M05/L-M13 after lawful retention.

**F10 does not fire.**

## 12. External integration audit

All four external classes preserve their authority fence:

```
behavioral source → SM-X-BEH → LAB
research source   → SM-X-RES → LAB
platform source   → SM-X-PLAT → LAB / feasibility
Layer III         → SM-X-L3 → read/cite/test
```

No current path bypasses those boundaries into L-M/SM-C authority.

**F11 does not fire.**

## 13. Forbidden-state ownership

Every tested forbidden state has a named contract boundary:

- second store → SM-C01/C06/C16;
- Star table → SM-C07/C16/C21;
- meaning/gloss store → SM-C09/C16;
- projection write-back → SM-C15/SM-X-L3;
- graph/embedding truth → SM-C06/C15/C16 + staking;
- sample registry → SM-C19/C20/C16;
- semantic chooser hidden in Join → SM-C05/C02/GAP;
- interned repeated WORD → SM-C03/C04/C08/C16;
- forward/dangling/retargeted POINTER → SM-C05/C06/C13;
- hidden relation payload in Contract II → SM-C03/C02/GAP;
- sampling promoted to authoritative store → SM-C20/C06/C16;
- historical artifact promoted to current authority → catalog authority order + current entrance qualifications;
- external candidate writing Core by citation → SM-X-*.

**F13 does not fire.**

## 14. Erase/swap attacks

All 21 mechanisms have a pointable consequence if erased.

The dangerous swaps all fail contractually:

- sampling ↔ projection;
- persistence ↔ retention;
- Join ↔ RootTouch;
- star formation ↔ star search;
- touch ↔ recursive participation;
- sequence ↔ definition route;
- WORD occurrence ↔ root role;
- N-D presentation ↔ sampling.

The full reasons are recorded in the traceability artifact.

## 15. Falsifier board

| F | Result |
|---|---|
| F1 duplicate L-M semantics | **did not fire** |
| F2 overloaded L-M requires split | **did not fire** |
| F3 orphan current mechanism term | **did not fire** |
| F4 decorative/no-consequence L-M | **did not fire** |
| F5 incompatible topology edge | **FIRED before repair** — RootTouch/star direction + persistence→Join |
| F6 edge transfers write authority | **FIRED before repair** — persistence→Join literal reading; repaired with typed edges |
| F7 non-writer gains append authority | **did not fire after repair** |
| F8 unreconstructible authoritative side state | **did not fire** |
| F9 Piece/specialized dual current authority | **did not fire** |
| F10 human ruling rewritten as source | **did not fire** |
| F11 candidate bypasses Lab | **did not fire** |
| F12 GAP hidden in edge/helper | **did not fire after typed-edge repair** |
| F13 forbidden state lacks refusal owner | **did not fire** |
| F14 audit becomes third canon | **did not fire** — traceability file explicitly non-canonical |

Additional current-proposal drift:
- historical Open #14 premise found on current proposal consumers → **repaired/qualified**, historical receipt preserved.

## 16. Explicit open interfaces that remain

The foundation is sound **because these are visible, not because they are solved**.

### Substrate / semantic opens

- **SM-GAP-RM:** exact sampling-derived retention/materialization.
- **G1:** word equality/tokenization/segmentation.
- C6 dictionary/document/conversation/provenance family discriminator/boundaries.
- general traversal/geometry remainder outside mapped star-search.
- concurrent arrival ordering beyond current proposals.

### Whole-app / implementation proposals

- R3 residence/recovery/Carrier.
- R4 capacity/refusal custody.
- R9 frontier/concurrency publication.
- R10 WebNN projection proposal as reframed.
- Open #15 seed corpus identity/presence.
- concrete encoding/resources/failure/durability premises.
- exact implementation ownership of derived sampling/search.
- human acceptance of the pointer contract remains absent.

These are explicit interfaces/decisions, not hidden arrows.

## 17. Final verdict

```
FOUNDATION SOUND WITH EXPLICIT OPEN INTERFACES
```

Meaning:
- mechanism identities are distinguishable;
- all 21 current catalog mechanisms have contracts and consequences;
- canonical edges are typed and composition-compatible;
- write and state ownership are explicit;
- the retention/materialization hole is visible as a socket;
- original Pieces and later specialized contracts compose without rival authority;
- human rulings retain human provenance;
- candidate families remain behind SM-X/Lab boundaries;
- proposal apparatus remains proposal-scoped;
- no hidden second store or hidden write edge was found after repair.

This verdict is stronger than Pass 2's semantic-consistency verdict but deliberately weaker than “compositionally closed,” because real interfaces remain open.

**Lab Source Architecture Pass 4 remains paused.** The next Lab action must be a fresh post-foundation replan aimed specifically at SM-GAP-RM rather than execution of the inherited Pass-4 plan.
