# Systems Manifest — Lace (Four Canonical Graphics)

## Overview

Lace is one continuously growing strand. Every word occurrence appends more wire. Each word has a persistent star. A definition is a route through other stars. Documents are physical routes through stars in arrival order. Pointers in a single append-only 1D array let later entries participate in earlier entries, including earlier pointers. Higher dimensions are not new meaning and not extra storage; they are additional independent ways the same wire can participate in existing structure. 2D graphs and 3D renderings are projections. Nothing is deleted, rewritten, parsed away, or stored as meaning.

Source corpus for this manifest (author-presented as the definition of the project):

- Graphic A — *The Lace Model in 3D: From Words to Worlds* (`docs/graphics/from-words-to-worlds.png`, original attachment `13284.png`)
- Graphic B — *Lace Mechanisms in 3D: How the Wire Actually Behaves* (`docs/graphics/mechanisms-in-3d.png`, original attachment `13285.png`)
- Graphic C — *N-Dimensional Relationships in Lace* (`docs/graphics/n-dimensional-relationships.png`, original attachment `13286.png`)
- Graphic D — *Lace Data Structure: One 1D Array, Everything is Lace* (`docs/graphics/data-structure-1d-array.png`, original attachment `13287.png`)

The four graphics are four presentations of one mechanism, not four subsystems. Graphic D is the only storage model. Graphics A–C are behavioral / topological presentations of the same growth rule.

ASCII spine (pass 1, companion): `docs/systems-manifest-ascii.md`. Does not replace this file. Does not fill G2.

### Current human-ruling reconciliation — 2026-09-20

The graphics remain the source corpus. The following current mechanics also incorporate explicit human rulings H1–H6, reconciled in ROOT / TOUCH / FOLD passes 1–4:

- every successful word arrival appends a WORD occurrence;
- if unseen, that arriving WORD becomes the word root;
- if seen, the new occurrence remains a WORD and touches the existing root;
- the one physical POINTER constructor is binary \(\mathsf{Join}(a,b)\) over two earlier same-line Lace points;
- repeated Join can ground any finite selected sample into one later addressable point;
- the dot-to-dot N-D presentation is a projection of recursively grounded points, not N-D storage;
- for arbitrary non-root-touch relations, the authoritative **origin / assertion / ownership** of the ordered operands/sample remains \([GAP]\). Current sources do not establish either an automatic Core chooser or an external assertion interface.

These are not retroactive quotes from the PNGs. Where the graphics are silent, the human ruling or mathematical derivation is named explicitly.



---

## Puzzle Pieces

### Piece 1 — Continuous Strand (Rule Zero)

- **Kind:** Primitive / Invariant
- **Source location:** C1 Rule zero; B1 Continuous wire; A1 Start; D footer “One line. Infinite structure.”
- **Purpose:** Establish that Lace is one continuous strand that only grows.
- **Inputs:** New input that “keeps growing.”
- **Outputs:** An extended strand. History is already part of Lace.
- **Preconditions:** There is a strand (A1 starts empty: a single continuous strand with no words yet).
- **Effects:** Past remains part of Lace. History only grows — never deleted.
- **Invariants:**
  - There is one continuous strand.
  - No cuts, no resets, no rewriting.
  - Every word occurrence adds more wire.
  - History is never changed — only extended.
- **Failure modes / breakdown conditions:** A cut, reset, rewrite, deletion, or second store would violate Rule Zero. Treating Lace as a replaceable record rather than an extending strand.
- **Boundary & Coupling:** Entangled with every other piece. The strand is the shared world. Stars, routes, touches, pointers, and dimensions are all formations *of* this strand, not objects beside it. Extracting Rule Zero as a standalone contract would require reimplementing growth, identity, and participation, because those are how the strand exists. Non-obvious dependency: Rule Zero is not a preamble policy; it is the identity of storage. Graphic D’s append-only array *is* this strand linearized.
- **Implementation implications:** Any second mutable store, compaction that rewrites history, or “update in place” is a breach of the model, not an optimization. Ownership of the strand is ownership of the system.
- **Metaphor / diagnostic role:** Wire / strand / “past Lace extends indefinitely.”
- **Key source language:** “There is one continuous strand.” “History only grows — never deleted.” “No cuts, no resets, no rewriting.”

### Piece 2 — Governing Rule

- **Kind:** Mechanism / Operator
- **Source location:** B12 Governing rule; C12 Governing rule; D footer; A13 last bullet; current human rulings H1–H6
- **Purpose:** State the entire mechanism as one append-only growth rule.
- **Inputs:** An arriving word. For arbitrary non-root-touch relation grounding, an already-specified ordered relation/sample is an additional constructor precondition; **who/what authoritatively originates that assertion remains \([GAP]\)**.
- **Outputs:** Continued Lace: the arriving word becomes a WORD occurrence; an unseen occurrence becomes its root; a seen occurrence touches its root through binary Join; selected relations/samples are grounded through repeated Join.
- **Preconditions:** One append-only Lace. Existing relation operands must already exist before Join.
- **Effects:** Sequence preserved. Every occurrence kept. Root identity stays positional. Touches remain. Join rows remain addressable and can participate later.
- **Invariants:**
  - Mechanism voice remains: “Input word arrives. Route new wire through that word’s star. Continue.”
  - Array voice remains append-only.
  - **Human reconciliation:** every arrival lands as WORD; unseen WORD becomes root; seen occurrence RootTouches the root.
  - **Human + D reconciliation:** selected ordered operands are written by one binary \(\mathsf{Join}(a,b)\) constructor.
  - Join never discovers meaning or invents an arbitrary relation.
- **Failure modes / breakdown conditions:** Parsing/discarding arrivals; interning repeated words; creating a second relation store; allowing Join to infer relations from semantic similarity; rewriting earlier rows.
- **Boundary & Coupling:** This operator couples Strand, WORD/root identity, Star, Join participation, and Continue. An arbitrary non-root relation assertion is a constructor precondition; its **provenance / authority / ownership remains open**. Current evidence does not establish that Core must automatically originate it.
- **Implementation implications:** No second graph-building engine. Once retained operands are addressable, physical append is deterministic. The remaining design gap is the **sampling-derived retention/materialization condition**, not POINTER representation and not a semantic chooser.
- **Metaphor / diagnostic role:** Single-rule universe.
- **Key source language:** “Input word arrives. Route new wire through that word’s star. Continue.” “No stored meaning — only routes, touches, and structure.”

### Piece 3 — Raw Input / Arrival Order

- **Kind:** Stage / Interface
- **Source location:** C10 Input treatment; B2; A2–A4, A13 “punch-card style”; B6 “punch-card input”; H3/H4
- **Purpose:** Feed raw word arrivals directly into Lace in order. No parsing-away, no discarding.
- **Inputs:** Raw input text / arriving words.
- **Outputs:** Exactly one new WORD occurrence per successful arrival, appended in order.
- **Preconditions:** Input is treated as a sequence of words. [GAP] Tokenization / equality criteria remain unstated.
- **Effects:** If the value was unseen, the new WORD occurrence becomes its root (H4). If seen, the new occurrence remains distinct; Piece 11 records its RootTouch participation.
- **Invariants:** Every successful word arrival lands on Lace. Arrival order is preserved. No arrival is replaced by an interned root count.
- **Failure modes / breakdown conditions:** Interpreting before append; dropping words; storing the sentence as a unit; normalizing repeated occurrences into one stored row; expanding Contract II into an unstated hidden relation/sample channel.
- **Boundary & Coupling:** Contract II remains a thin raw word feed. It does **not** currently carry arbitrary Join operands/sample metadata. Root/touch/grounding are Contract-I growth once the arrival reaches Lace.
- **Implementation implications:** Any tokenizer is still an unstated degree of freedom. Relation/sample selection must not be smuggled into the input schema without a separate ruling.
- **Metaphor / diagnostic role:** Punch-card: raw sequence, no interpretation.
- **Key source language:** “Raw input is fed directly into Lace, word by word.” “Input is treated exactly as it arrives (punch-card style).”

### Piece 4 — WORD Entry

- **Kind:** Primitive
- **Source location:** D1–D2; D5; H3/H4
- **Purpose:** Represent every successful word occurrence as a section of the strand and anchor lexical root identity.
- **Inputs:** A word value arriving now.
- **Outputs:** \(\{index,type:WORD,value\}\).
- **Preconditions:** Next unused index. Array only grows.
- **Effects:** First occurrence of a value becomes the root for that word identity. Later occurrences are additional WORD entries at new indices; they do not replace or move the root.
- **Invariants:** “A word is just its variable. The variable is the word.” Root is a role/read of the first occurrence, not a new type or table. Every later occurrence remains.
- **Failure modes / breakdown conditions:** Updating/interning the first WORD when the word repeats; storing a count; moving identity into a definition cluster; storing a definition payload on the WORD.
- **Boundary & Coupling:** WORD/root anchors identity; definition routes and later Join participation accumulate around it without replacing it. Equality of \`value\` remains G1 [GAP].
- **Implementation implications:** \(\mathrm{Root}(v)\) is the first WORD(v) index read from Lace. No root table.
- **Metaphor / diagnostic role:** First pass through an eyelet establishes the eyelet/root; later passes remain distinct wire.
- **Key source language:** “A word is just its variable. The variable is the word.”

### Piece 5 — POINTER Entry / binary Join

- **Kind:** Primitive / Constructor
- **Source location:** D1–D3, D6; current human H5/H6 reconciliation
- **Purpose:** Join two selected earlier Lace points into one new addressable Lace point.
- **Inputs:** An **ordered selected pair** of earlier indices \(a,b\). Each operand may name a WORD or POINTER.
- **Outputs:** \(\{index,type:POINTER,ref_A:a,ref_B:b\}\).
- **Preconditions:** Both operands already exist on the same line.
- **Effects:** The new Join point can itself be referenced later. Repeated Join grounds finite selected samples and relationship-to-relationship structure without changing the storage model.
- **Invariants:**
  - Physical constructor is binary: \(\mathsf{Join}(a,b)\).
  - Both refs point backward on the same line.
  - WORD and POINTER operands are both legal.
  - A Join row is Lace, not an edge-table record.
  - Adjacency alone does not select operands.
- **Failure modes / breakdown conditions:** Forward/off-line refs; external edge DB; n-ary side object; mutating a Join after append; asking Join to infer semantic relations.
- **Boundary & Coupling:** RootTouch is the closed retention special case: Join(new occurrence, root). General retained participation uses the same constructor. H7–H12 replace the arbitrary-assertion premise with sampling-derived discovery; **the exact general retention/materialization condition remains [GAP]**.
- **Implementation implications:** The physical append is deterministic once the ordered relation operands are specified. Earlier-index legality is proven by checking \(a,b<new\_index\) at append. No separate “prove earlier” operator and no automatic chooser is established here.
- **Metaphor / diagnostic role:** Tie two already-existing pieces with one new piece of the same lace.
- **Key source language:** “A pointer is also a section of Lace. It can be referenced by later entries.” “No separate graph. No separate database.”

### Piece 6 — Append-Only 1D Array (the Lace as stored)

- **Kind:** Region / Store
- **Source location:** Graphic D entire; D1 table; D Key properties
- **Purpose:** Be the only store: one growing line in which words, pointers, and relationships all live.
- **Inputs:** New WORD or POINTER sections.
- **Outputs:** A longer array. Indices as permanent addresses.
- **Preconditions:** Append-only discipline.
- **Effects:** Complex structure emerges from later entries participating in earlier entries. 3D/N-D views can be generated from the array and its references; those views are not stored.
- **Invariants:**
  - One continuous append-only array.
  - Words and pointers are both entries.
  - The array only grows. Nothing is deleted. Nothing is rewritten.
  - No separate graph, no separate database, no N-dimensional storage.
- **Failure modes / breakdown conditions:** Introducing a node store, an edge store, an embedding store, or a per-dimension table. Compacting indices. Treating the 3D visualization as canonical state.
- **Boundary & Coupling:** This *is* the strand at implementation grain. Stars, dimensions, and projections all depend on it and must not duplicate it. Clean as a persistence boundary (one log), entangled as a semantic boundary (the meaning of an index is its history of later references). Non-obvious: “Everything is Lace” means pointers are not metadata about the array; they are further array.
- **Implementation implications:** Persistence is a single append-only log. Indices are forever. Any index reuse or vacuum is a model break. Views must be derived, never authoritative.
- **Metaphor / diagnostic role:** “One line. Infinite structure.”
- **Key source language:** “Words, pointers, and their relationships all live in the same append-only sequence.”

### Piece 7 — Star (persistent word identity)

- **Kind:** Mechanism / Formation
- **Source location:** A5, A12; B2–B3, B9; C4, C6, C8; D4–D5; H1/H4
- **Purpose:** Be the persistent accumulated formation around one word/root and the natural read anchor for derived structural search.
- **Inputs:** WORD occurrences plus retained Join participation that threads them.
- **Outputs:** A richer formation through which later wire can participate; a derived search anchor into repeated multi-scale samples and retained POINTER paths.
- **Preconditions:** First occurrence establishes the root. Later same-value occurrences remain distinct WORD rows.
- **Effects:** Later occurrences RootTouch the root; later Join rows may include those touches and other grounded points.
- **Invariants:**
  - one root role per word identity under the current equality rule;
  - every occurrence remains;
  - full star includes root, occurrences, RootTouch Join rows, and later Join ancestry involving them;
  - no Star table or Star row type.
- **Failure modes / breakdown conditions:** Collapse to one node; split by document; stored gloss; sample registry; external star graph.
- **Boundary & Coupling:** WORD/root anchors lexical identity. Join carries participation. C6 route-family names remain views and do not become fields on the star.
- **Implementation implications:** Star is a derived/indexical structural read over WORD values and Join ancestry. Sampling/search may derive lexical, repeated-pattern, retained-path, and neighboring-star frontiers from it, but no Star table/index becomes authoritative. G1 equality still governs root membership.
- **Metaphor / diagnostic role:** Persistent threaded star.
- **Key source language:** “Each word’s star is its persistent 3D identity.” “The star is not a point. It is an accumulated 3D formation.”

### Piece 8 — Sequence as Physical Route

- **Kind:** Mechanism
- **Source location:** B5; A4; C2
- **Purpose:** Preserve exact successful WORD arrival order as the physical route.
- **Inputs:** Ordered word arrivals.
- **Outputs:** One continuous ordered route through word roots/stars.
- **Preconditions:** Continuous strand; arrivals land as WORD occurrences.
- **Effects:** The sentence is this route, not a stored sentence object.
- **Invariants:** WORD append order is sacred. Later Join grounding adds participation and addressable points but does not replace, reorder, or summarize-away the arrival route.
- **Failure modes / breakdown conditions:** Sentence object; syntax reorder; bag-of-words; treating a grounded sample point as a replacement for its constituent arrival history.
- **Boundary & Coupling:** Sequence is one dimension/read of Lace. Grounded Join ancestry can reference portions of the route while the original WORD route remains intact.
- **Implementation implications:** Arrival order and sample-grounding order are distinct facts; both remain in append history.
- **Metaphor / diagnostic role:** Sentence as wire segment.
- **Key source language:** “The exact word order is the exact physical route.”

### Piece 9 — Dictionary Wiring

- **Kind:** Mechanism / formation, not a separate store
- **Source location:** B4; C9; A6, A11
- **Purpose:** Treat definition text as routes/participation through ordinary word roots and points.
- **Inputs:** Definition-like word sequences.
- **Outputs:** WORD arrivals plus Join participation along the definition route.
- **Preconditions:** Words arrive through the same Piece-3 path; unseen words become roots, seen words reuse existing roots.
- **Effects:** Definition routes accumulate structure around the WORD/root identities. Later documents reuse those roots and retained route structure.
- **Invariants:** Definition is a route, not a stored gloss. **Definition-route POINTER structure does not replace the WORD/root as lexical identity.**
- **Failure modes / breakdown conditions:** Definition payload on WORD; separate lexicon table; treating defining pointer cluster as the only word identity; collapsing route to gloss.
- **Boundary & Coupling:** Same governing rule as document feed. Sampling may expose recurring definition-route structure, but no semantic selector is inferred from definition text; exact retention/materialization beyond RootTouch remains [GAP].
- **Implementation implications:** Loading dictionary text is ingest + participation, not a lexicon API.
- **Metaphor / diagnostic role:** Definition as path.
- **Key source language:** “A word’s definition is a route through other word stars.”

### Piece 10 — Document Feed

- **Kind:** Stage
- **Source location:** B6; A6–A9; C10
- **Purpose:** Feed longer raw word sequences through the same roots/stars while growing one Lace.
- **Inputs:** Document raw word sequence.
- **Outputs:** WORD occurrences in arrival order; RootTouch Join for seen words; any further selected relation/sample grounding as additional Join history.
- **Preconditions:** Same punch-card arrival rule as Piece 3.
- **Effects:** All passages remain in one Lace. Distinct contexts remain distinct.
- **Invariants:** No per-document graph; no document row type; arrivals never disappear into a sample point.
- **Failure modes / breakdown conditions:** Document isolation; coreference collapse; hidden document-selection table; using document boundary as an unstated automatic Join selector.
- **Boundary & Coupling:** Document source differs from dictionary source, not from Core mechanics. Document boundaries remain separately [GAP]; sampling discovery does not by itself settle which sampled structure is retained/materialized.
- **Implementation implications:** Multi-document Lace is still one array. Do not add sample metadata to Contract II.
- **Metaphor / diagnostic role:** Punch-card document.
- **Key source language:** “This is like a punch-card input: raw sequence, no interpretation.”

### Piece 11 — Touch / Higher-Dimensional Participation

- **Kind:** Mechanism / Loop
- **Source location:** B7–B8; C7; A10; D6; H1/H5/H6
- **Purpose:** Retain participation so occurrences, touches, and grounded relations can themselves participate later.
- **Inputs:** Existing Lace points plus new arrival / selected relation operands.
- **Outputs:** Binary Join points that remain Lace.
- **Preconditions:** Referenced operands already exist.
- **Effects:** **RootTouch = Join(new occurrence, root).** General grounding uses the same Join constructor. A Join may name prior Join points, producing points-of-points.
- **Invariants:** Touches are permanent; relations can participate in relations; no separate event log or edge table.
- **Failure modes / breakdown conditions:** Attach-only hub; dropping touches; separate relationship objects; semantic chooser hidden in Join.
- **Boundary & Coupling:** Geometric “thread through” and storage Join are two presentations of participation. The constructor is settled. Human rulings H7–H12 make sampling, not an arbitrary semantic chooser, the discovery mechanism. The exact sampling-derived retention/materialization condition remains [GAP].
- **Implementation implications:** Future retained POINTERs may name earlier WORD/POINTER points across sampling scales. One physical constructor suffices; the general rule deciding when sampled structure is retained and how an ephemeral sampled operand is grounded remains open.
- **Metaphor / diagnostic role:** Threading / re-entry / nested participation.
- **Key source language:** “A touch becomes material for future Lace.”

### Cross-piece amendment — Derived 2D Sampling Surface

- **Kind:** Derived working surface / Read-compute machinery
- **Authority:** Human rulings H7–H12 plus SAMPLING / DENSITY / EMERGENCE Passes 1–5. This is **not** claimed as text recovered from Graphic C.
- **Purpose:** Sample growing Lace/text across source position and sample scale so recurring / overlapping structure becomes discoverable without a semantic chooser.
- **Inputs:** The authoritative one-dimensional Lace, WORD/root identity under G1, and retained POINTER ancestry where present.
- **Outputs:** A reconstructible position × scale sampling surface, recurrence/overlap evidence, and anchor-local structural frontiers.
- **Invariants:**
  - the 2D sampling surface is derived working state, not a second authoritative store;
  - not every sampled cell becomes a retained row;
  - structures at different sample scales may later participate through ordinary POINTERs;
  - exact recurrence is not the universal retention rule;
  - search reads from the sampler / POINTER topology and cannot write Lace.
- **Open boundary:** the exact sampling-derived retention/materialization rule remains **[GAP]**, including how an ephemeral sampled structure becomes an addressable 1D operand when retention requires it.
- **Search consequence:** a star may be used as a derived search anchor; disposable replay handles can be reconstructed from an immutable Lace prefix. These are read artifacts, not Core row types or persistent indexes.
- **Not Piece 12:** Graphic-C dimensional presentation remains a projection/view of retained participation. The sampling surface and the dimensional projection are distinct derived objects.

### Piece 12 — Dimension (independent participation axis)

- **Kind:** Parameter Set / Conceptual axis / View
- **Source location:** C5–C8; C header; D6; H6 reconciliation
- **Purpose:** Describe how recursively participating points present as higher-dimensional relationship structure.
- **Inputs:** The same one-dimensional Lace with WORD/Join points.
- **Outputs:** Read-only N-D presentations of independent participation.
- **Preconditions:** Recursive Join ancestry already exists on the one line.
- **Effects:** POINTER→POINTER / point-of-points supplies the storage correspondent for relations-among-relations. More dimensions appear as denser, more recoverable participation paths.
- **Invariants:**
  - no dimension row type;
  - no coordinate store;
  - no new meaning per dimension;
  - same continuous Lace.
- **Failure modes / breakdown conditions:** Dimension columns; N-D side store; meaning layer per axis; treating C6 family labels as stored metadata.
- **Boundary & Coupling:** C7 relations-among-relations map to Join-of-Join. C6 dictionary/document/conversation/provenance names remain route-family views; their label/discriminator remains [GAP].
- **Implementation implications:** The dot-to-dot N-D view reads Join ancestry. It cannot write back.
- **Metaphor / diagnostic role:** Stacked participation axes over one strand.
- **Key source language:** “More dimensions do not add meaning. They add independent ways the same continuous wire can participate in existing structure.”

### Piece 13 — Projection vs Actual Lace

- **Kind:** Interface / View
- **Source location:** C2–C4, C11; B10–B11; D4; H6 reconciliation
- **Purpose:** Separate the actual WORD/Join Lace from any dot-to-dot rendering.
- **Inputs:** The one-dimensional append-only Lace and derived Join ancestry/reach.
- **Outputs:** 1D, 2D, 3D, or N-D views.
- **Preconditions:** Projection is requested for seeing only.
- **Effects:** None on Lace.
- **Invariants:** Dot-to-dot N-D connections are read from Join participation. Projection never becomes the authority and cannot write back.
- **Failure modes / breakdown conditions:** Graph/mesh as Core; coordinates as truth; projection edge creating a Join; bidirectional sync.
- **Boundary & Coupling:** Clean read-only boundary. Any selection performed in the UI does not become a legal Core write unless a separately authorized input/interface contract exists.
- **Implementation implications:** Renderers may traverse ancestry. They may not own relation truth.
- **Metaphor / diagnostic role:** Shadow vs thing.
- **Key source language:** “A 2D view is a projection, not the real thing.”

### Piece 14 — No Stored Meaning / No Collapse

- **Kind:** Invariant set
- **Source location:** A13; B10; C9, C12; D key properties; current H5/H6 reconciliation
- **Purpose:** Forbid meaning objects, second stores, and collapse of distinct construction histories.
- **Invariants:**
  - no stored meaning;
  - no Star/root/sample registry beside Lace;
  - no global “sample-size-n” row shared by distinct samples;
  - equal-cardinality samples may remain distinct grounded histories;
  - no rewrite/canonicalization merely because two grounding trees cover similar leaves.
- **Failure modes / breakdown conditions:** Embedding-as-truth; sense inventory; sample registry; canonical graph replacement; rewriting history to collapse duplicate structures.
- **Boundary & Coupling:** Cross-cuts dictionary/document/dimension/projection. The finite-sample theorem creates one point by **adding Lace**, never by replacing the represented rows.
- **Implementation implications:** Derived caches may never become authoritative.
- **Metaphor / diagnostic role:** Anti-collapse fence.
- **Key source language:** “No meaning stored, only structure, sequence, and participation.”

### Piece 15 — Star-Internal Traffic

- **Kind:** Region / View
- **Source location:** B9; A12
- **Purpose:** Describe the retained WORD/Join traffic inside a word's accumulated star formation.
- **Inputs:** Root, later occurrences, RootTouch joins, and later grounding paths that include them.
- **Outputs:** A denser projected formation with many reusable participation paths.
- **Preconditions:** Multiple passages/joins already exist.
- **Effects:** None beyond append-only accumulated participation.
- **Invariants:** All passes remain; none are merged. Interior crossings are Join ancestry/participation, not stored coordinates.
- **Failure modes / breakdown conditions:** Hub-node flattening; coordinate store; merging route families; discarding older grounded branches.
- **Boundary & Coupling:** Interior is a view of Piece 7 + Piece 11 history. N-D rendering may expose it but does not own it.
- **Implementation implications:** Traverse WORD/root and Join ancestry; do not store a second geometry.
- **Metaphor / diagnostic role:** Zoomed threaded star.
- **Key source language:** “Many distinct strands pass through the same star.” “None are merged or lost.”

## Relational Mapping (Second Pass)

### Shared state

There is one authoritative append-only world: the Graphic-D line \(L\). WORD/root roles, RootTouch, Join, grounded points, and N-D ancestry are all rows/readings of that one world.

Shared lexical identity anchor: first WORD occurrence under the current value-equality rule.  
Shared address key: permanent array index.  
Shared relation constructor: binary Join over selected ordered earlier indices.

### Control flow (current reconciliation)

1. Input word arrives.
2. Append one WORD occurrence.
3. If unseen, that row becomes the word root.
4. If seen, append \(\mathsf{Join}(\text{new occurrence},\text{root})\) as RootTouch.
5. If an arbitrary relation/sample has **selected ordered operands**, ground it with binary Join; repeated Join handles finite samples and already-grounded branches.
6. Continue. WORD append order remains the physical arrival route.
7. Projection may read WORD/Join ancestry as 1D/2D/3D/N-D but cannot write back.

Dictionary and document feeds use the same flow. They differ in source stream, not Core machinery.

### Interface-coherence check

- **I4-1 Arrival → WORD:** PASS. Contract II produces an arrival; Piece 4 consumes it as one occurrence.
- **I4-2 Unseen → root:** PASS. Root is the new WORD index; no new field/store.
- **I4-3 Seen → RootTouch:** PASS. RootTouch is one Join over two existing WORD indices.
- **I4-4 Join → reusable point:** PASS. POINTER row is Lace and can be named by later Join.
- **I4-5 finite selected sample → point:** PASS by repeated Join; no sample store.
- **I4-6 point ancestry → N-D view:** PASS under Piece 13 no-write-back.
- **I4-7 sampling-derived retention/materialization:** PARTIAL / [GAP]. Sampling discovers structure; the exact general condition that retains a POINTER, and the grounding step for an ephemeral sampled operand when needed, remain open.

### Sampling-derived retention/materialization boundary

The lawfully known boundary is now split between derived discovery and retained append:

\[
L
\longrightarrow
\text{derived 2D sampling}
\longrightarrow
\text{structural evidence}
\longrightarrow
[\text{OPEN retain/materialize}]
\longrightarrow
\mathsf{Join}/\mathsf{Ground}.
\]

RootTouch remains the closed special case under H1: new occurrence + root. The earlier \(Origin(\rho)\) analysis is retained only as historical provenance-era reasoning.

For sampling-derived non-root participation:

- a semantic/arbitrary Core chooser is **not the intended current model** under H7–H12;
- Contract-II hidden relation/sample payload remains **REFUSED** by the raw-word interface;
- a general Core relation-write/query assertion surface remains **BLOCKED**, not source-specified;
- route/document boundaries remain separate open questions and are not promoted to retention metadata;
- the 2D sampling surface supplies derived structural evidence, not write authority;
- **the exact condition that retains a POINTER, and the exact grounding step for an ephemeral sampled operand when needed, remain [GAP]**.

The earlier ROOT / TOUCH / FOLD Pass 6 provenance result is retained as historical narrowing of the then-assumed arbitrary-relation question. Later H7–H12 and SAMPLING / DENSITY / EMERGENCE Passes 1–5 supersede that assumption as the active problem. Mandatory whole-prefix grounding, one persistent active-sample ladder, automatic materialization of all portions, exact-repeat-only retention, and first-seen-every-cell retention are all rejected as universal rules.

### Failure propagation

- Break Rule Zero → false ancestry/dangling history.
- Intern WORD occurrences → destroys sequence and RootTouch witness.
- Hide relation discovery inside Join → imports unstated semantics.
- Treat N-D projection as store → forks Lace.
- Collapse equal-cardinality samples → loses distinct construction history.
- Forward/off-line refs → violates one-line temporal construction.

### Hidden couplings

- Geometric thread/touch and storage Join are presentations of one participation act.
- Root identity and definition route are coupled but not identical: WORD/root anchors identity; definition Join structure participates around it.
- More dimensions are more recursive participation paths, not more storage dimensions.
- Continue means the construction remains open-ended; it does not supply the still-open sampling-derived retention/materialization rule.

---

## System-Level Composition & Interfaces

### Composition point 1 — The single rule

The system composes as one operator over one store:

`arrive → append WORD / RootTouch as ruled → derive multi-scale samples → discover recurring structure → [OPEN retain/materialize] → append POINTER participation → continue`

All named capabilities (dictionary, document, conversation, provenance, 4D axes, touches) are applications of that operator.

### Composition point 2 — Two-layer presentation, one object

| Presentation | What it shows | What it must not become |
|---|---|---|
| 1D array | Storage, addresses, append, pointer participation | A mere log from which a “real graph” is extracted |
| 1D sequence view | Before/after only | Proof that Lace is only a list |
| 2D paper/graph | Crossings as flat adjacencies | The schema |
| 3D star/thread view | Persistent identity + distinct passes | A coordinate store |
| N-D relation families | Independent participation axes | N-dimensional storage or extra meaning |

### Composition point 3 — Growth dynamics

Repetition does not update a count; it adds a passage. Structure densifies. Later structure can include earlier structure as material. The dynamics are accumulative and re-entrant, never reductive.

### Major interfaces the source actually gives

1. **Write interface:** arriving words become WORD rows; selected ordered earlier operands are written by Core as binary Join POINTER rows. POINTER sections are produced, not supplied as a second arrival stream.
2. **Identity interface:** word variable → star; index → exact occurrence.
3. **Participation interface:** pointer to earlier index (word or pointer).
4. **View interface:** projections downward; not upward writes.

No query interface, no delete interface, no transaction interface, no multi-Lace interface.

### Topology

Not a graph database topology. A single directed-in-time line with backward references, whose repeated value-hits are read as stars and whose reference-to-reference chains are read as higher-D participation.

---

## Decomposition Seams / Candidate Contract Boundaries (Ranked)

Author’s panels do not separate into independently ownable modules. Stars, touches, dimensions, dictionary, and documents are names for formations of one append-only strand under one rule. Fusing factors: shared mutable-by-append state, tight single control flow, closed re-entry loop (touches become future material), cross-cutting invariant of no second store / no stored meaning.

That is the beginning, not the end. Contract units sit above the panels.

### Proposed contract set: 2 contracts + 1 dependent layer

**Contract I — Lace Core (irreducible)**  
Contains Pieces 1, 2, 4, 5, 6, 7, 8, 11, 14, 15.

Fused core: strand + array + WORD + POINTER + star-as-formation + sequence-as-route + touch/re-entry + no-collapse invariants + governing rule.

Dependency coupling if split: total. A Star service without the array is a second store. A Pointer service without WORD occurrences has nothing to name. A Rule service with no strand is a slogan.

State coupling if split: the entire state is one line.

This is one contract.

**Contract II — Arrival Surface**  
Contains Piece 3, and the document/dictionary *feeds* as the same surface applied to different streams (Pieces 9–10 as *use of I*, not extra engines).

This surface still cannot function without I (high dependency coupling) but is the only place a second owner could exist: tokenization / byte-to-word arrival. Even here the source wants punch-card fidelity, so the surface is thin.

State coupling: should be zero beyond appending into I. If Arrival keeps documents, vocabularies, or parses, it has become a second store (Piece 14 breach).

Rank: viable only as a dependent adapter, not as an equal module.

**Layer III — Projection / Visualization (dependent layer, not a strong cut)**  
Piece 13, plus 3D pictures of Pieces 7, 12, 15.

Low state coupling if read-only. High dependency coupling: presupposes the whole of I. Flag as a view layer over I, not a peer contract. The moment it supports edit, it is an illegal fork.

Piece 12 (Dimension) is **configuration/reading of I**, not Contract IV. Axes are not a schema to cut on.

### Ranked seams

1. **Strongest legal seam:** read-only projection over the append-only array. Weak as independence; strong as “do not put this in the core.”
2. **Thin ingest seam:** bytes/words in, appends out. Exists only if it cannot refuse, rewrite, or interpret.
3. **False seams (do not cut):** Star vs Array; Dictionary vs Document; 3D Mechanism vs 1D Data Structure; Dimension vs Touch; Meaning layer (source forbids it).

### Verdict

Resolves into **one irreducible contract (Lace Core)** with a **thin arrival adapter** and a **read-only projection layer**. The author’s 12-panel structure is pedagogical slicing of one mechanism, not contract slicing.

---

## Cross-Cutting Parameters & Variation

- **Word identity rule** — what counts as “the same word” / same variable / same star. Examples mix `PIE` and `pie`, and split `Golden` / `Skillet`. Unspecified, system-wide.
- **Sampling-derived retention / materialization** — binary Join construction, arity, backwardness, and recursive grounding are reconciled, and H7–H12 establish sampling as relationship discovery. What remains system-wide and unspecified is the exact retain/materialize condition, including grounding an ephemeral sampled operand when needed. No semantic chooser or external relation-write interface is established.
- **Route-family labels** — Dictionary / Document / Conversation / Provenance (C6). Named as independent axes; not stored as types in D. Variation in labeling must not become extra stores.
- **Projection choice** — 1D / 2D / 3D / “N-D symptoms” (C8). View parameter only.
- **Growth bound** — source says unbounded growth, no pruning parameter. Absence of pruning is itself a cross-cutting choice.

No priority, arbitration, or filtering parameters appear.

---

## Purpose, Assumptions & Diagnostic Use

Purpose stated by the graphics: define Lace as a growing 3D (and higher) history of language in motion, produced by one rule, stored as one line. The model is explanatory and constitutive, not a user-facing product spec.

Assumptions:

- Language is handled as word occurrences in time.
- Identity of a word is reuse of a variable, not a stored sense.
- Structure is enough; meaning is refused.
- Visualization is allowed; visualization is not memory.
- Past is reusable material, never edited.

Diagnostic use:

- If you see a node-edge graph and think that is Lace, you are looking at a shadow (C11, B11).
- If you see a definition string, you are looking at a collapse (B10).
- If a new dimension seems to add information content, you have left the model (C header, C5).
- If history was rewritten to keep the model tidy, Rule Zero has already failed.
- Visible symptoms of N-dimensionality (C8): more independent passes through the same star; more simultaneous contexts; richer/denser structure; more recoverable routes; more ways to revisit without rewriting; naturally formed from repeated threading.

Intended use of the four graphics together: A = growth story; B = 3D mechanism; C = what “more dimensions” does and does not mean; D = the only data structure.

---

## Open Questions or Remaining Design Degrees of Freedom

1. **[GAP] Word identity / tokenization:** boundaries, punctuation, case, \`PIE\` vs \`pie\`, multiword names.
2. **[GAP] Sampling-derived retention / materialization:** sampling discovery and binary Join are reconciled; the exact general retain-when condition and the grounding/resolution of an ephemeral sampled operand remain open. No semantic chooser or external relation-write interface is introduced.
3. **[GAP] Document / conversation / provenance boundaries:** D still stores only WORD and POINTER/Join; no boundary row type is established.
4. **General traversal / query remainder:** star-search structural reads are now mapped as derived lexical/pattern/pointer/star-hop frontiers, but no general Core retrieval/write-query interface is established; geometry/route-family traversal questions outside that mapped read remain open.
5. **[GAP] Concurrency:** one strand suggests a single writer; multi-writer append remains unstated.
6. **Projection/geometric remainder:** storage participation is represented by WORD + binary Join ancestry. Exact rendered over/under coordinates remain projection concerns, not Core row fields.
7. **Adjacent references:** Kauffman materials remain adjacent reference only; no knot rewrite axioms are imported into Lace.
8. **No multi-Lace / snapshot / export rule is given.**
9. **Operand ordering:** physical Join preserves an ordered pair. D1 shows \`ref_A\` as the described subject in its six examples; no universal semantic subject chooser is admitted. Task-specific ordered-operand/slot proof remains required where retention uses it.
10. **[GAP] Eventual reference:** D1 happens to reference every row except newest; no rule requires every row to be used later.
11. **[GAP] C6 route-family labels:** dictionary/document/conversation/provenance are views/families; no stored discriminator is defined.

### Pointer-emission status after SAMPLING / DENSITY / EMERGENCE Pass 6

The old broad “pointer emission remains unanswered” statement is superseded.

**Closed current mechanics:**
- every successful arrival appends WORD;
- unseen WORD becomes root;
- seen occurrence remains WORD and RootTouches root;
- physical POINTER constructor is binary \(\mathsf{Join}(a,b)\);
- operands are earlier same-line WORD or POINTER points;
- repeated Join grounds finite selected samples;
- Join-of-Join supplies relation-among-relation storage;
- adjacency alone does not emit;
- N-D remains projection-only.

**Still open:**
- exact sampling-derived retention/materialization, including ephemeral-sample grounding when required;
- G1/tokenization;
- the other independent questions above.

**Acceptance:** [\`pointer-emission.md\`](pointer-emission.md) remains a reconciled draft and still requires explicit human acceptance before implementation authorization.

---

## Conceptual reference analysis — HCC-A

HCC-A is a **conceptual reference / behavioral-goal source** describing target behavior families around cognition, including perception, story, meaning, emotion, identity, and behavior. The same classification applies to The Coffee Cup and Where the Water Is Loud; see the [human correction and clarification](law-why-these-documents.md#conceptual-reference-documents). **laceArc is the lab that explores which systems are required for Lace to function as described by those goals.** The concrete enabling mechanisms are therefore experimental unknowns: the goal documents do not predeclare holder machinery, compiler/runtime components, or Core structure.

The table retains comparisons from the earlier pipeline interpretation as **candidate-system probes and refusal fences**. Holder, housing, oil, state-machine, and other correspondences may be tested by the lab; none becomes required machinery without surviving evidence and the repository's authority/acceptance rules. Independent Core exclusions still apply.

| Found | Hands reading |
|---|---|
| RIC keeps order | Kind-kin of Piece 3 only. Not a second log. `[I]` / `[X]` if stored |
| PFC priors / ISL snapshot | Not a star (Piece 7). `[X]` |
| L add/merge/reindex/delete | Housing-legal. Tape-illegal. K1 / Piece 6 `[X]` |
| M weights; “meaning is directive” | Not project-meaning (routes / touches / participation). Piece 14 `[X]` |
| E affect “not transmissible” | Only structure crosses. Not a row |
| B / freeze / fawn | Holder act. Not P4. Not POINTER. `[GAP]` if used to close Q2 |
| H10b “new structure” | World change. Not APPEND |
| Dual shaft RIC∥PFC + valve P4 | Holder intake. Not Contract II |
| Two S7 sinks (R′ and next PFC) | Unordered in the source. Not a Core scheduler |
| Act VI writes templates | Oil. Not WORD rewrite |
| YAML person_model / event_trace | Trace of the holder pipe. Second store if it owns identity `[X]` |
| Cluster / variable labels | Layer III names on index geometry. Label merge ≠ L merge |
| Mode C (emotion rewrite) | Recursion into L. Not Compiler C. K1 if on tape |
| Parameters ≠ presence | Holder knobs. Not L0 atoms P0–P4 |

Do not add an R table, RIC table, Story Ledger type, meaning weights, ISL star, or emission stub because this table exists.

---

## Executive Seams Summary

- One contract: the append-only strand/array under “arrive, route/point into what exists, continue.”
- Stars, dictionary routes, documents, touches, and dimensions are formations and readings of that contract, not sibling services.
- The only safe extra surfaces are thin ingest and read-only projection; both become model-breaks if they keep their own state.
- The remaining Core-adjacent [GAP] is **exact sampling-derived retention/materialization**. Binary Join, the human-ruled sampling architecture, and derived star/search reads are reconciled; dimensionality remains a separate projection of retained participation structure.
