# Reason model: a shoe lace in the hands

Repo description: *Put a shoe lace in your hands or get out of here.*

That sentence is the test, not branding. Source of record remains `docs/graphics/` and `docs/systems-manifest.md`. This file only says how five adjacent documents sit on the physical object those graphics already describe.

Core pieces named below are the pieces in `docs/systems-manifest.md`. Adjacent texts do not add a sixth Core piece.

---

## Overview

A shoe lace in the hands is one cord. It grows only by more cord. It is passed through eyelets that already exist. Over and under can be felt. Later tension can grab an earlier wrap without erasing that wrap. A flat lacing chart is a shadow of the same cord. “This is a bow” written on a tag is not a row of the lace.

What you must not do to that object and still call it Lace:

- cut it
- pull a pass out to tidy a diagram
- replace many passes through one eyelet with one node
- write a gloss and throw the cord away
- put the lace in a graph database and declare the graph the shoe

Knot theory’s Reidemeister moves *untie and retie* while claiming the knot is the same. A lace already threaded is not the same object after a pass is pulled out. Rule Zero is that difference.

```
HANDS                         SHADOW
-----                         ------
cord you can pull             2D lacing chart
eyelet + every pass           labeled node "PIE"
over / under you can feel     unsigned edge
later wrap grabbing earlier   pointer to earlier index
keep wrapping                 append-only array
```

Graphic D writes the hands as a line. Graphics A–C are the same cord when you stop flattening it.

### Mapping marks

| Mark | Meaning |
|---|---|
| **kin** | The physical lace already contains the fact. The text names it. |
| **adjacent** | Useful for a reader or steward. Not a Core operator. |
| **conflict** | Importing the text as a write would take the lace out of the hands. |
| **off-shoe** | No contact with cord, eyelet, over/under, or arrival. |
| **[GAP]** | Lace source is silent. Adjacent text does not close the silence. |
| **[CONFLICT]** | Two claims cannot both be operators of one object. |
| **[INFERENCE]** | Coupling stated here, not as a sentence in either source. |

---

## Puzzle Pieces of the physical object (reason-model only)

These are not new Core pieces. They are how the Core pieces feel.

### RM1 — One cord

- **Kind:** Primitive
- **Maps onto:** Piece 1 Continuous Strand (Rule Zero); Piece 6 Append-Only 1D Array
- **Hands test:** There is one lace. A second lace is a different shoe.
- **Failure:** Cut, splice-in-a-new-cord-as-authority, vacuum, reset.

### RM2 — Eyelet plus every pass (star)

- **Kind:** Formation
- **Maps onto:** Piece 7 Star; Piece 4 WORD Entry
- **Hands test:** The metal ring is not the star. The ring plus every wrap through it is the star. Two wraps of the same spelling are two wraps.
- **Failure:** Intern “one node named PIE.”

### RM3 — Next hole is the next hole (arrival)

- **Kind:** Stage
- **Maps onto:** Piece 3 Raw Input / Arrival Order; Piece 2 Governing Rule
- **Hands test:** You do not predict the next eyelet. You put the cord through it and keep the pass.
- **Failure:** Mask a hole, delete a wrap, replace a wrap with another letter.

### RM4 — Later tension grabs an earlier wrap (hitch)

- **Kind:** Mechanism
- **Maps onto:** Piece 5 POINTER Entry; participation / later touch
- **Hands test:** Pull the standing part. An earlier wrap tightens. The earlier wrap is still there.
- **Failure:** Untie the earlier wrap so the diagram looks cleaner. That is Reidemeister, not a hitch.
- **[GAP]:** On a shoe the grab is physics of friction. In Graphic D the grab is a later POINTER row. The five documents do not say when that row is written.

### RM5 — Chart is not the shoe (projection)

- **Kind:** Read
- **Maps onto:** 2D/3D projections in Graphics B–C; “no separate graph” in Graphic D
- **Hands test:** You may photograph the lacing. You may not replace the cord with the photograph.

### RM6 — No tag that replaces the bow (no stored meaning)

- **Kind:** Invariant
- **Maps onto:** “No stored meaning — only routes, touches, and structure.”
- **Hands test:** The bow is the bow. A paper saying “bow = two loops and a knot” is not a section of the lace.

---

## 1. Kauffman — *Knots and Physics* (4ed)

Source locations below refer to Part I of the 4th edition (World Scientific, 2013), Series on Knots and Everything Vol. 53.

### Where the book treats distinct things

**K1 — Physical knots (clove hitch, windings, bowline, square, granny)**  
Kind: Mechanism / physics. Part I §1°.  
Purpose in source: “the palpable and practical physics of the knots.” Tension at A in a clove hitch makes the line at C grab B “and keep the assemblage from slipping.” Windings: tension needed at A to make the rope slide “increases exponentially with the number of windings.” Square holds by “mutual constriction.” Granny “will not hold.”  
Hands: **kin** of RM4 and Graphic B “touch participates later.”  
Coupling to Core: Piece 5 POINTER is the only storage name for “later grab.” The hitch does **not** specify a POINTER row.  
Non-obvious: Kauffman defers the mathematics of friction to Part II. Lace must not import Bayman-style inequalities as array fields.  
**Verdict on K1:** only strong imported image. Reading of Graphic B/D. Not an emission rule.

**K2 — Closed loop form**  
Kind: Definition change. Part I §2°.  
Source language: “a knot shall correspond to a single closed loop of rope.” Advantage: experiment “without fear of losing the pattern as it slips off the end of the rope.” Cost he names: “some of the original motivation for using the knot may be lost.”  
Hands: **conflict** with an open shoe lace (two ends, still being threaded).  
Coupling: If Core adopted closed-loop identity, arrival would stop. Piece 2’s “Continue.” would die.  
**Verdict on K2:** topology convenience. Illegal as Lace identity.

**K3 — Move Zero (planar deformation)**  
Kind: Projection hygiene. Part I §2°, named “Move Zero.”  
Hands: **adjacent** to RM5. Deforming a drawing of the lace is not deforming the lace.  
**Verdict on K3:** allowed as how a shadow may wiggle. Not a write to the array.

**K4 — Reidemeister I–III**  
Kind: Operator on diagrams. Part I §2°, Figure 8.  
Source language: the three moves “change the graphical structure of the diagram while leaving the topological type of the embedding of the corresponding knot or link the same.” II+III generate *regular isotopy*. I+II+III generate *ambient isotopy*. Reidemeister’s theorem: two links in 3-space deform into each other iff diagrams transform by these moves.  
Hands: **[CONFLICT]** with RM1 / Piece 1. Each move is pull-a-pass-out or invent-a-pass.  
Coupling: Looks like it could “simplify” stars (collapse curls = intern a pass). That is the collapse Graphic B forbids.  
**Verdict on K4:** legal topology, illegal Lace. Pointer emission is not move II.

**K5 — Bracket / Jones / Yang–Baxter / quantum group / Gauss code**  
Kind: Invariants and codes of a *diagram class*. Later Part I.  
Hands: **off-shoe** as physics; **conflict** if treated as history of wraps. Gauss code resembles POINTER rows only as a string of crossings. It codes a closed diagram, not an append-only life.  
**Verdict on K5:** do not store.

**K6 — DNA strand passage / enzyme switch**  
Kind: Topological move.  
Hands: tempting “thread through.” Still a cut-and-rejoin in the topological sense. **conflict** with Rule Zero.

### Interface coherence (Kauffman → Core)

K1’s output (a felt grab that leaves wraps in place) is the only output that matches a Core input (later participation). K4’s output (an equivalent diagram) does **not** match Piece 6’s input (a new section). The entity that would have to flow — “sameness after rewrite” — is exactly what Lace refuses.

---

## 2. Rowlands — *Zero to Infinity*

Series on Knots and Everything Vol. 41 (World Scientific, 2007). Same series frame as Kauffman. Series-adjacent, not axiom-adjacent.

### Where the book treats distinct things

**R1 — Empty start / zero totality / one process**  
Kind: Origin. Preface; ch. 1.1 “An Origin for Everything.”  
Source language: start from the simplest possible idea; reject “model-dependent theories of any kind.”  
Hands: **kin** of Graphic A panel 1 (empty strand, no words yet) and RM1.  
Coupling: Piece 1 already has the empty lace. R1 names it. It does not add WORD or POINTER.

**R2 — Refusal of extra-dimensional store**  
Kind: Constraint. Preface.  
Source language: avoided approach is “restructuring of particle physics in terms of multidimensional space-time strings or membranes.” A unified theory “has to explain the concept of dimension,” not assume extra rooms. Ch. 2.6 / ch. 18 continue dimensionality as something to derive.  
Hands: **kin** of Graphic C header and Graphic D “no N-dimensional storage.” Extra dimensions on a shoe are extra participations of the same cord (Piece 5 pointing at earlier Piece 5), not new eyelets invented off to the side.

**R3 — Universal rewrite system**  
Kind: Generative algebra. Ch. 1 (with Diaz); later “rewrite process as Nature’s code”; §20.16 “DNA as a Rewrite System.”  
Source language: a computing analogy shows “how a zero totality can be used to create a universal rewrite system” so mathematics can be structured “without first assuming the number system.” Assume something, force a complement, recover zero.  
Hands: the *operation* is not a hand on a wrap. The *name* is a **[CONFLICT]** with Piece 1 “no rewriting.”  
Coupling: If AGENTS.md or Core prose says “rewrite,” readers will hear mutate-WORD. Rowlands’ rewrite is generate-from-empty. Opposite object, same English.  
**Verdict on R3:** keep the algebra out of Core. Do not leak the word “rewrite” into standing orders.

**R4 — Nilpotent Dirac, vacuum, particle tables, cosmology, brains as engines**  
Kind: Physics stack. Most of the book after ch. 3.  
Hands: **off-shoe.** Importing it makes Lace a TOE with a lace sticker.

### Interface coherence (Rowlands → Core)

R1 output (empty totality) matches A1. R2 output (dimension must be explained, not stored) matches Graphic D. R3 output (a generated alphabet) does **not** match Piece 4/5 inputs. Nothing in Rowlands says when a POINTER is written.

---

## 3. Xiao & Zhu — *Foundations of Large Language Models*

arXiv:2501.09223v2, June 17, 2025. CC BY-NC 4.0. Cite; do not fold body text into Apache Core.

### Where the book treats distinct things

**X1 — Token sequence / arrival order**  
Kind: Presentation. Ch. 1–2.  
Source language: decoder-only models “predict the distribution of tokens at a position given its preceding tokens.” Sequences \(x_0,\ldots,x_i\).  
Hands: **weak kin** of RM3 / Piece 3 only. Before/after on one wire.  
Stops being kin the moment the token is an interned vocab atom.

**X2 — Interned vocabulary token**  
Kind: Primitive of the book.  
Hands: **[CONFLICT]** with RM2 / Piece 4 / Piece 7. Two passes of “the” on a shoe are two wraps. The book’s token is one id plus positions. That is “one node named THE.”  
Coupling: intern-in-place is the Star-table Graphic D forbids.

**X3 — Causal language modeling (next-token loss)**  
Kind: Training objective. §1.2.1.  
Source language: at each position the decoder produces \(\mathrm{Pr}_\theta(\cdot \mid x_0,\ldots,x_i)\); gold is one-hot; minimize cross-entropy.  
Hands: **conflict** with RM3. A lace does not predict the next eyelet. It is put through the next eyelet. The occurrence is kept.  
Coupling: next-token probability is a *projection that talks about* a lace. It is not the lace. Piece 2’s output is a new section, not a distribution.

**X4 — Masked language modeling / BERT recipe**  
Kind: Corruption operator. §1.2.2; BERT example.  
Source language: select tokens (standard BERT: 15%); then “Token Masking. 80% of the selected tokens are masked and replaced with the symbol [MASK].” Other selected tokens are randomly replaced or left. Example: “It is raining” → “It is [MASK].”  
Hands: **[CONFLICT]** with Piece 1 and Piece 3. Mask, delete, and random-replace are cut-and-retie.  
This is the anti-model for any future tokenizer note.

**X5 — Embeddings (token + position + segment; rotary)**  
Kind: Second store. Ch. 2.  
Hands: **conflict** with RM6 and Graphic D “no separate database.” Vectors glued onto tokens are tags beside the cord.

**X6 — Soft prompts / alignment / RLHF**  
Kind: Steward and adaptation. Ch. 3–4.  
Hands: **adjacent** as policy over a holder of language. **conflict** if stored as Core rows.

### Interface coherence (Xiao & Zhu → Core)

X1’s output (an ordered list of atoms) looks like Piece 3’s input and is not. Piece 3 consumes raw arrival and emits WORD sections without discarding. X4’s output is a *damaged* sequence. That cannot be an input to Piece 2.

**[GAP] opened, not closed:** how an arriving spelling becomes a WORD without intern, mask, or delete. Tokenization remains unstated in the graphics. This book only constrains it from below: whatever it is, it may not be BERT-style corruption or vocab intern-as-identity.

---

## 4. Petersen & Zech — *Mathematical theory of deep learning*

arXiv:2407.18384v4, January 16, 2026.

### Where the book treats distinct things

**P1 — Feedforward network as parameterized map**  
Kind: Primitive. Def. 2.1.  
Source language: \(\Phi:\mathbb{R}^{d_0}\to\mathbb{R}^{d_{L+1}}\) realized by affine maps and activation \(\sigma\); parameters collected as \(w\); also written \(\Phi(x,w)\). Depth \(L\), width \(d_{\max}\).  
Hands: **off-shoe** as physics. **conflict** if a star is called a hidden unit or N-D participation is called width.

**P2 — Architecture drawn as a graph**  
Kind: Presentation. Ch. 1–2.  
Hands: **conflict** with RM5 / Graphic C “node-edge is a shadow.” The drawing is how people will try to store Lace.

**P3 — Universal approximation / ReLU pieces / depth**  
Kind: Existence theorems. Ch. 3, 7, 8.  
Source claim: some \(\Phi\) can approximate a target \(f\) on a compact set.  
Hands: **conflict** with possession. Approximating how a lace behaves is a second object. Lace does not store \(f\).

**P4 — Training mutates weights**  
Kind: Mechanism. Ch. 10. Gradient descent, SGD, backprop.  
Hands: **[CONFLICT]** with Piece 1 and Piece 6. Training is rewrite of a second world. History of wraps is not a loss landscape.

**P5 — Remark 2.2 (function ≠ construction)**  
Kind: Internal warning.  
Source language: different architectures/weights can realize the same function \(\Phi\); “we cannot associate a unique meaning to these notions solely based on the function realized by \(\Phi\).”  
Hands: **kin of a negation.** Lace *is* only the construction (the route). Behavior-sameness is Reidemeister-shaped thinking.

**P6 — Graph neural nets (named, omitted)**  
Kind: Exclusion list in the introduction.  
Source language: GNNs “are a natural choice for graph-based data.” They omit them.  
Hands: that “natural choice” is the exact false Core a reader reaches for after Graphic B.

### Interface coherence (Petersen & Zech → Core)

No output of this book is an input to Piece 2. \(\Phi(x,w)\) does not append. The useful product is a refusal: do not train a model of the lace and call the weights the lace.

---

## 5. Bi et al. — AgentScope (arXiv:2609.02371)

*Diagnosing with Insights: Structured Analysis of Agent Failures via Behavioral Abstractions.* Tool name in paper: AGENTSCOPE.

### Where the paper treats distinct things

**A1 — Trajectory of an LLM agent**  
Kind: Observed life of a *holder*.  
Hands: not the lace. The person (or Bot) holding the lace.

**A2 — ReAG (Reasoning-Action graph)**  
Kind: Projection. §3.  
Source language: vertices from instrumented steps; edges “represent control or data dependencies between steps.” Unstructured logs converted into “structured graphs.”  
Hands: **adjacent** as a photograph of steward behavior. **conflict** if written into the 1D array. Same warning as Graphic C: the graph is not the thing.

**A3 — Neural invariants**  
Kind: Diagnostic predicates over A2. §3.2.  
Source language: specify behavioral properties; LLM-guided check; localize the vertex where failure starts; classify by taxonomy. Not Hoare invariants: semantic conditions via neural functions.  
Hands: **adjacent** over AGENTS.md (“did the steward violate standing orders?”). **conflict** as extra Lace rows.

**A4 — Failure taxonomy (Table 1)**  
Kind: Library of steward breaches. Three dimensions: Reasoning, Control-flow, Action.

| Mode | Holder of the lace |
|---|---|
| Wrong Context | Treats Kauffman / Xiao–Zhu / Petersen–Zech as Core |
| Instruction Unfollowing | Adds `src/`, a Star table, Reidemeister writes, or a deleting tokenizer |
| Insufficient Context | Diagnoses without the four graphics |
| Context Miss | Drops Rule Zero mid-task |
| Termination Miss | Keeps emitting after the assigned file |
| Premature Termination | Stops before Graphic D |
| Step Loop | Restates the brief forever |
| Action Mismatch | Says append-only, writes a graph DB |
| Invocation / Execution Failure | GitHub write that is not the assigned file |

**Verdict on A4:** tooling for the Bot, layered *over* Lace. Not WORD/POINTER.

### Interface coherence (AgentScope → Core)

A2’s output (a DAG of steps) does not match Piece 5’s input (earlier indices on the same lace). The real entity that flows is *steward behavior*, which Core does not store.

---

## Relational Mapping (Second Pass)

### Edges that already exist on the shoe

```
RM1 one cord  ──is──  Piece 1 + Piece 6
RM2 eyelet+passes  ──is──  Piece 7 read off many Piece 4 rows
RM3 next hole  ──is──  Piece 3 + Piece 2
RM4 later grab  ──is──  Piece 5   [GAP: when written]
RM5 chart  ──reads──  Pieces 1–7 without becoming them
RM6 no tag  ──forbids──  meaning table / embedding store
```

### Edges the five texts try to add

| Proposed edge | What would flow | Status |
|---|---|---|
| K4 Reidemeister → Piece 6 | equivalent diagram after local rewrite | **[CONFLICT]** Rule Zero |
| K1 hitch → Piece 5 | felt participation | **kin**, does not close [GAP] |
| R3 rewrite-from-zero → Piece 2 | generated alphabet | name clash; wrong object |
| X2 intern token → Piece 4/7 | vocab id as identity | **[CONFLICT]** intern |
| X4 [MASK] → Piece 3 | damaged sequence | **[CONFLICT]** cut |
| X3 next-token → Piece 2 | \(\mathrm{Pr}(x_{i+1}\mid x_{\le i})\) | wrong output type |
| P1 \(\Phi(w)\) → Piece 7 | hidden unit as star | **[CONFLICT]** |
| P4 train \(w\) → Piece 6 | mutated weights | **[CONFLICT]** rewrite |
| A2 ReAG → Piece 5 | steward DAG as pointers | second store |

### Failure propagation

If K4 is accepted as a write, Piece 1 dies and every other piece becomes a diagram class.  
If X2/X4 are accepted as ingest, Piece 7 becomes a vocab table and Piece 3 lies.  
If P1/P4 are accepted as Core, Piece 6 becomes a weight file.  
If A2 is accepted as storage, Graphic D’s “no separate graph” dies.  
If R3’s *name* enters AGENTS.md, stewards will mutate WORD rows and call it theory.

Change amplification: any one of those imports forces a second store. The second store then claims authority over the cord.

### Interface-coherence summary

Piece 2’s input is an arriving word. Piece 2’s output is more strand.  
None of the five documents emit that pair except as analogy (order, empty start, felt grab).  
The unstated entity between “later grab on a shoe” and “POINTER row” is pointer-emission. Still **[GAP]**.

---

## System-Level Composition

```
physical lace in hands
        │
        ▼
docs/graphics  (only Core)
        │
        ├── docs/systems-manifest.md   (same Core, linearized)
        │
        ├── Kauffman K1 hitch          (reading of RM4 / Piece 5)
        ├── Rowlands R1+R2             (reading of empty + no extra store)
        ├── Xiao–Zhu X1                (reading of order only)
        ├── Petersen–Zech P5           (reading of “function ≠ construction”)
        └── AgentScope A3+A4           (reading of the holder)
```

Illegal fusion is any arrow from K4, R3-as-mutate, X2–X5, P1–P4, A2 into Piece 6.

Two presentation layers already inside Core stay fused: geometry rule and storage rule are one operator. Adjacent books do not split them.

---

## Decomposition Seams / Candidate Contract Boundaries (Ranked)

This overlay resolves into **two contracts**, not five book-shaped modules.

1. **Lace Core** — irreducible. Pieces 1–7 plus RM1–RM6. Fusing factors: one mutable world (the strand), one operator (arrive / route / append / continue), closed loop between star-as-reading and array-as-store. Do not cut Core by book chapter.

2. **Adjacent reading / steward layer** — depends on Core, shares no array state. Holds: citations in `docs/references.md`, this map, AGENTS.md constraints, optional AgentScope-style checks *over* steward traces. High dependency coupling, low state coupling. Not a clean module for WORD/POINTER. A dependent layer.

Rejected cuts:

- “Knot engine” beside the array (K4 would leak).
- “Tokenizer service” that owns identity (X2 would leak).
- “Learned star” as a net (P1 would leak).
- “ReAG store” beside Graphic D (A2 would leak).

Pointer-emission is **not** a third contract yet. It is a missing rule *inside* Core. Writing it from these five books would be a fidelity violation.

---

## Cross-Cutting Parameters & Variation

| Parameter | Who owns it | Allowed variation |
|---|---|---|
| Tokenization | Core [GAP] | Constrained by X4: no mask/delete/random-replace; constrained by Piece 4: no intern-as-identity |
| When POINTER is written | Core [GAP] | Not K4, not next-token, not GNN message-pass |
| Word identity (case, stem, homograph) | Core [GAP] | Graphics show both “PIE” and “pie”; do not resolve from Xiao vocab |
| Projection choice (1D/2D/3D) | Read layer | Any shadow; none authoritative |
| Steward stop/start | AGENTS.md | AgentScope taxonomy may label breaches |
| License | Repo vs citation | Xiao–Zhu CC BY-NC stays out of Apache body text |

---

## Purpose, Assumptions & Diagnostic Use

Purpose of this file: stop adjacent authority from becoming Core operators.

Assumption: if a claim cannot be shown on one physical lace — one cord, two hands, eyelets, over/under — it does not enter Core.

Diagnostic use:

- Asked to add Reidemeister / bracket / Jones → K4 conflict.
- Asked to “rewrite” a WORD because Rowlands → R3 name clash.
- Asked to tokenize like BERT → X4 conflict.
- Asked to train a net of stars → P1–P4 conflict.
- Asked to store agent graphs in the array → A2 conflict.
- Asked when to emit POINTER → answer: **[GAP]**. Next honest file is `docs/pointer-emission.md` as unanswered questions from the four graphics, not from these volumes.

---

## Coupling matrix (what may touch Core)

|  | Strand / Rule Zero | Star as eyelet+passes | POINTER / hitch | Projection vs thing | No stored meaning | Pointer-emission [GAP] |
|---|---|---|---|---|---|---|
| Kauffman hitch / friction | kin | kin | **strong kin** | kin (diagram≠rope) | — | does **not** close |
| Kauffman closed-loop + Reidemeister | **conflict** | collapse risk | conflict | — | — | false solution |
| Rowlands empty + one process | kin | — | — | — | kin (no extra store) | no |
| Rowlands rewrite-from-zero | name clash | — | — | — | — | no |
| Xiao & Zhu sequence | weak kin (order) | **conflict** (intern) | — | — | **conflict** | no (opens tokenizer gap) |
| Xiao & Zhu mask/replace | **conflict** | — | — | — | — | no |
| Petersen & Zech nets | conflict | conflict | — | shadow | conflict | no |
| Petersen Remark 2.2 | — | — | — | kin of negation | — | no |
| AgentScope ReAG | — | — | — | steward shadow | — | no |
| AgentScope taxonomy | — | — | — | — | — | no (steward only) |

“Kin” means the physical lace already contains the fact. “Conflict” means importing the text as operator would take the lace out of the hands.

---

## Open Questions (none closed by these documents)

They do not say when a POINTER is written.  
They do not say POINTER arity.  
They do not say whether adjacent WORD rows are already a relation.  
They do not license Reidemeister, next-token prediction, or a ReLU star as Core.

The clove hitch is the only imported *image* that already lives on a shoe: later tension participates in an earlier wrap, and the wrap stays. Write that, if you write anything from Kauffman, as a reading of Graphic B/D — not as inequalities copied into the array.

## Steward rule

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

## Executive seams

- Core is one contract. The five books are not five contracts.
- Only Kauffman hitch, Rowlands empty/no-extra-store, and AgentScope-on-the-holder may sit beside Core.
- Reidemeister, intern/mask, \(\Phi(w)\), and ReAG-in-the-array are illegal fusions.
- Pointer-emission remains an internal Core [GAP]. Do not fill it from these volumes.
