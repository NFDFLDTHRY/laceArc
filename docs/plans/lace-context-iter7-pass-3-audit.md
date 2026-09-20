# Iteration 7, pass 3 — the global ASCII companion, audited as a systems diagram

**Status:** record. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Method:** [iteration 7 plan](lace-context-iteration-7-plan.md) §4. [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) (2,704 lines, tip Pass 26) read **top-down as one diagram**: every box on the Spine, Contract map, Piece board, Four interfaces, Core mechanisms (pass 5), Core clock (pass 6), Layer III boards (7–9), C-Mech (10), IX-* edges (20) and Pass 26 becomes a row; then the two questions a systems audit asks and a log audit does not — **is every dependency edge drawn**, and **is any component drawn twice under two names** — plus a third the deliverable forces: **is every component the shipped app needs on the diagram at all**. Absences were confirmed by search before being claimed (`frontier` 0 · `hopper` 0 · `seed` 0 · `service worker` 0 · `offline` 0 · `carrier` 1, the Pass 26 pointer · refusal edge 0).
**Product:** **Pass 27** appended to the companion as Iteration-4 Pass 2 · systems-level audit (P27-A · P27-D · P27-F · P27-R). Three thin fixes applied in the open; six missing boxes admitted cite-only; one OPEN added. Pass 26 extended; Pass 25 not redone.
**Prior structural walks:** P12-A, P18-A, P25-A each scored every surface PASS. They walked the companion **surface by surface**; this pass walks it **edge by edge**, which is why it finds what they did not. That is not a criticism of them; it is a different instrument.

---

## 1. Verdict, first

**As a diagram of Core, the companion is sound and remains so.** Nothing below contradicts the Hands or any sealed product.
**As a diagram of the deliverable, it is incomplete:** the central object has no drawn residence, the arrival surface has no drawn source, the writer/reader seam has no drawn frontier, the refusal path has no edge, and the entire runtime Layer III (shell, service worker, workers, renderer) is absent except through one pointer. **Three drawn things are wrong on a literal reading** and are fixed with captions, not redraws.

---

## 2. Findings

| # | Kind | Finding | Evidence | Disposition |
|---|---|---|---|---|
| **A1** | **literal reading refuted** | The one-tick figure (pass 5) draws *input arrives → next unused index → append section WORD \| POINTER → continue* — **one section per arrival**. D1 shows arrivals producing 1, 2, 2, 3, 3 sections (fan-out 0, 1, 1, 2, 2 after the WORD). Read literally the figure is a schedule σ with no Φ, which [E5](lace-context-iter6-pass-4-environment.md) refutes by F-H4 / F-N. The figure is a *simplification*; C-Mech-1 CONFIRMed it against the pass-5 prose, not against D1's row counts | companion `## One-tick mechanism (pass 5)`; D1 rows 0005–0007; agent-control CLOCK *"Tick = one legal append"* | **P27-F caption**: *one arrival = one σ-step = one or more ticks; the first tick of an unseen v is Arrive (Q0); later ticks are Φ; see D1 0005–0007* |
| **A2** | **duplicate under two names** | *tick* (pass 6: one append) · *Step* (algebra S4.3: Arrive ; [Φ] ; Continue — one arrival) · the Spine's *arrive → append → participate → continue* (one arrival) — two granularities under three names, and the pass-5 figure sits on the boundary. The environment's σ type is the reconciliation: **arrival ≠ tick** | pass 5/6; S4.3; E2 | recorded in P27-A; the A1 caption states the relation; no rename (sealed refuse: no gear rename) |
| **A3** | **wrong on literal reading** | Four interfaces (pass 2): *"write: arriving words (and pointer sections)"* — copied from the manifest's *"arriving words (and, in D, arriving pointer sections)."* Under the Hands POINTER sections are **used** by the machine (D footer: *"Use pointers to participate"*), never **supplied**; under E2 they are σ's output. A write interface that accepts external POINTER sections lets the host forge participation (sheet H, R5) and bypasses σ | companion line 227; manifest *Major interfaces* §1; D footer | **P27-F note** below the interfaces block; **flagged to law** (the manifest's wording) — not edited there |
| **A4** | **ambiguous write grant** | IX-Core-clock (pass 20): *"May write / append: Y · inside I only"* for the row *impulse / pallet / tape / hands*. Pass 6 says *hands = projections* and *"Views do not turn the tape."* Read strictly the row grants hands a write inside I | companion IX-* table; pass 6 *"What turns what"* | **P27-F note**: the grant covers impulse / pallet / tape; hands read only |
| **B1** | **missing box — residence** | `L` has no drawn physical residence. The manifest's Piece 6 says *"persistence is a single append-only log"*; the companion has no box for it; the shape's sheet C names the options and the tension; the distribution amendment makes it mandatory (offline forever). The central object of the diagram is drawn without a place to be | grep `carrier` 1 (Pass 26 T6 pointer only); Piece 6; sheet C; amendment §3 | **P27-D**: *Carrier* box under Contract I, cite-only → sheet C; ruling R3 |
| **B2** | **missing box — arrival source** | Contract II is drawn *thin, zero store, punch-card* — but nothing supplies `v`. Who cuts an arrival is open #1; **that a component presents arrivals** is not open, and it has no box. For the shipped app it is the hopper (one arrival per submit, bytes as typed, sheet S) | grep `hopper` 0; Piece 3; sheet S arrival law | **P27-D**: *Hopper* box feeding Contract II, cite-only → sheet S |
| **B3** | **missing box — seed corpus** | Piece 9 *dictionary wiring* is *"use of I"* — loading a dictionary is ingest. An app that never reconnects must **ship** its seed corpus in the release, or have none. No box, no edge, no mention of where dictionary text comes from | grep `seed` 0; Piece 9; amendment §3 *precache everything* | **P27-D**: *Seed corpus (shipped data)* box → Hopper, cite-only → amendment; **new OPEN #15**: *is a seed corpus shipped at all, and if so which* — the human's |
| **B4** | **missing box — frontier** | The pass-5 figure says *next unused index*; the strand/ card defines *Frontier*; R9 makes it the only shared state between the one writer and any reader. It is the seam of the whole concurrency model and it has no box | grep `frontier` 0; pass 5; branch-contracts strand/ card; pass 2 §3 | **P27-D**: *Frontier* drawn on the Contract I box as the published index; cite-only → R9 |
| **B5** | **missing edge — refusal** | Contract II → I is drawn as one forward arrow. The strand/ card: exhaustion is *refusal with no change, never wrap / reuse / truncate*; sheet H: a refused arrival stays in the hopper. There is no return edge | grep refusal 0 (the 59 hits are the *Sealed refuse* lists); strand/ card *Resources*; sheet H *Failure model* | **P27-D**: *refuse* back-edge I → II, cite-only → R4 (custody of a refused arrival) |
| **B6** | **missing region — runtime Layer III** | The companion's Layer III is projection (Piece 13), nine cite shelves, kit/quiet doors and Order Proposals — **steward apparatus**. The Layer III the user installs (shell, service worker, manifest, workers W/R/IO, renderer, COOP/COEP synthesis, probes) is absent except via the Pass 26 T6 pointer. For a systems diagram of a deliverable this is the largest missing region | grep `service worker` 0, `offline` 0; inventory C16–C23 | **P27-D**: *Layer III — Runtime* board, cite-only → inventory rows; I → III read only, III ↛ I unchanged |
| **C1** | **recorded conflict without an OPEN** | Piece 13's *"graph databases, embedding spaces, and definition tables may be used only as disposable views"* vs the staking law's *FORBID embedding store* — recorded in the branch contracts as the view-store conflict, cited by iteration 6 pass 5, load-bearing for R10 (WebNN) — and **not on the Open board** | manifest Piece 13; staking law; branch-contracts source difference 3; pass 2 §2.4 | **new OPEN #14** |
| **C2** | **term with three meanings** | *touch*: (i) geometry — B7/B8 threading; (ii) storage — the POINTER row that records it (Piece 11: *"in storage, a pointer that can itself be pointed at"*); (iii) the older lineage's *"touch grows lace"* walker, a rejected non-answer. The companion uses (i) and (ii) as one component (correctly — the dual rule) and does not fence (iii) | Spine *touch = later participation*; emission non-answers; register has no *touch* entry | recorded in P27-A; the register's *touch* row is the register's own leftover (maps) — not written this pass |

**Contradictions of the Hands or of any sealed product: 0.** Literal-reading defects: 3 (A1, A3, A4). Missing boxes/edges/regions: 6 (B1–B6). Opens added: 2 (#14, #15).

---

## 3. What "edge by edge" showed that "surface by surface" did not

| Question | Surface walk (P12/18/25-A) | Edge walk (this pass) |
|---|---|---|
| Is Contract II → I fenced? | yes: thin, no store | yes — **and it has no source node and no return edge** |
| Is Contract I one object? | yes | yes — **and it has no residence and no drawn frontier** |
| Is Layer III read-only? | yes | yes — **and the runtime part of it is not drawn, so the read-only property is asserted for boxes that do not exist** |
| Is the one-tick figure faithful? | yes, to pass-5 prose | **no, to D1's row counts, on a literal reading** |

A diagram can pass every surface check and still be missing the nodes a systems reader needs. That is what the human's phrase *"in need of a critical systems level audit"* named, and it is what Pass 27 admits.

---

## 4. What this pass did not do

Did not redraw the Spine, the Contract map, or any pass-5/6 Core art (sealed refuse). Did not edit the manifest (A3 is flagged to law). Did not choose a carrier, a seed corpus, a frontier memory order, or custody of a refused arrival — each is a ruling (R3, #15, R9, R4). Did not soft-close any OPEN; added two.

## 5. Coverage

| | Fraction |
|---|---|
| Companion sections read as diagram | Spine · Contract map · Piece board · Four interfaces · Presentation ladder · Shared state · Open board · Parameters · Source panels · Panel→Piece · pass 5 mechanisms (4) · pass 6 clock (3) · pass 7 board · pass 8 D1–D6 · G-III-1…9 · C-Mech-1…Spine · IX-* (15 edges) · Pass 26 — **28 of 28 surfaces** |
| Order Proposal bodies (P11-P · P17-P · P24-P) and quiet-door boards (#1–#8) | stamps and edges only; **bodies not re-walked** (0 of 11) — they are steward apparatus and out of this pass's question |
| Absences claimed | 7 of 7 confirmed by search before being written |
| Fixes applied | 3, all captions/notes, all P27-cited, 0 redraws |

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A drawing of a lace with no table under it is a drawing of a lace in the air. Emission remains `[GAP]`.
