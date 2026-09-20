# System Mathematical Model — Lace Hands + Shadow Clock

**Conceptual-reference status, corrected 2026-09-20:** HCC-A, The Coffee Cup, and Where the Water Is Loud are conceptual reference documents. The [human correction](../law-why-these-documents.md#conceptual-reference-documents) supersedes their classification as required holder machinery. This file retains an analysis of their concepts; H/C/W or A/B/C gears, states, ratios, and contracts are interpretive notation. They establish no required LaceArc components, runtime dependencies, or conditions for legal append. Historical readings remain recorded at their original evidence strength.

**Status:** Formal conceptual interpretation derived from Hands and earlier Shadow readings. The second mathematical universe models reference concepts, not a required second subsystem. Not Core executable code. Not a sixth graphic.
**Primary derivation:** `docs/clock/shadow-clock-gear-contracts.md` (walks 1–7).  
**Hands authority:** Graphic D (`docs/graphics/`), `docs/systems-manifest.md` Contracts I–III.  
**Shadow companions:** `docs/clock/shadow-clock-hologram.md`, `docs/staking-the-workspace.md`, `docs/law-why-these-documents.md`.  
**Hard law:** POINTER emission remains \([GAP]\). Shadow \(\{A,B,C\}\) is interpretive notation for concepts from the reference documents, not required holder machinery or Lace Core rows. Hands win over Shadow on conflict. No `src/` is implied by this document.

---

## 0. Scope and completeness claim

This document states a **complete dual-universe mathematical model relative to** the contracted meshes of `docs/clock/shadow-clock-gear-contracts.md` walks 1–7, together with every Hands piece that those walks and the systems manifest already state about Contract I (Lace Core), Contract II (Arrival), and Contract III (Projection). “Complete” here means: every MESH header in walks 1–6, every Walk 7 \([X]\) audit, and every Hands object named in Graphic D / Pieces 1–14 that those meshes cite, appears below as a formal object, map, FSM edge, or co-presence cell, each stamped with the boundary predicates defined in §1.

It is **not** complete as a Core executable. The governing step that would turn an arrival into a POINTER cut — when a POINTER is written, at what arity, and whether adjacency of WORDs implies a relation — is Hands-silent and is left sealed as \([GAP]\). Shadow language (Anchor, OBS, “touch grows lace” as intent) is never used to invent that rule. Consequently this model is a specification of two universes and of the wall between them, not a program that grows Graphic D.

**Sources (in authority order).** Hands: Graphics A–D, especially Graphic D (WORD/POINTER append-only array); `docs/systems-manifest.md`. Law: `docs/staking-the-workspace.md`, `docs/law-why-these-documents.md`. Shadow: `docs/clock/shadow-clock-hologram.md`, `docs/clock/shadow-clock-gear-contracts.md` (primary mesh inventory). Train composition (H×C×W clocks, not a replacement of this algebra): `docs/clock/train-h-c-w-systems-manifest.md`. Projections and briefs: `docs/shadow-clock-gearing.html`, `docs/clock/shadow-clock-agent-brief.md`, `docs/reason-model-map.md`.

---

## 1. Notation and universes

### 1.1 Universes

We work in two disjoint universes of state.

- **Hands universe** \(\mathcal{H}\). Objects of Lace Core (Contract I), thin Arrival (Contract II), and read-only Projection (Contract III). The only persistent store in \(\mathcal{H}\) is the append-only array \(L\) of Graphic D.
- **Shadow universe** \(\mathcal{S}\). Mathematical objects used to interpret concepts from HCC-A / Coffee Cup / Water in gear-contracts walks 1–6. Story ledger, meaning, emotion, identity, OBS/DELTA talk types, and trajectory windows are concepts represented in this analysis. Defining \(\mathcal{S}\) does not require an implemented holder subsystem.

The wall morphism is deliberately **not** an embedding of Shadow into Hands:

$$
W : \mathcal{S} \not\hookrightarrow \mathcal{H}
$$

except for a restricted family of **kin-read** functors \(\kappa\) (defined in §5) that carry analogy of discipline, never state. Writing Lace \(\in \{A,B,C\}\) is forbidden; equivalently Lace \(\notin \{A,B,C\}\).

### 1.2 Boundary stamps as predicates

Every formal object \(x\) and every map \(f\) carries zero or more stamps, treated as predicates:

| Stamp | Predicate (informal) | Formal role |
|---|---|---|
| \([I]\) | Contract I kin (ground / strand / Rule Zero) | May name Core ground or a kin-read of it |
| \([II]\) | Contract II kin (thin arrival / fidelity of order) | May name Arrival discipline or a kin-read of it |
| \([III]\) | Contract III (projection / drawing) | Read-only view; no write-back |
| \([H]\) | Holder-only | Lives in \(\mathcal{S}\); not a Lace row type |
| \([X]\) | Forbidden as a morphism into Contract I state | Member of \(\mathsf{Stop}\) (§5) |
| \([GAP]\) | Hands silent; Shadow must not fill | Left open; not a rule |

Stamps compose by conjunction on an object (e.g. PFC knobs \([H]\) and PFC-as-Star-table \([X]\)). When Hands and Shadow disagree, Hands wins and the Shadow claim is discarded or demoted to \([H]\) / \([X]\) as Hands require.

### 1.3 Shared deadbolt (axle)

Reality \(R\) constrains both universes as an external parameter of \(\mathcal{S}\) and as a kin of ground truth for \(\mathcal{H}\). Structure may cross a mind-boundary; meaning, emotion, and identity stay local in \(\mathcal{S}\). This axle is stated in the hologram and is not a Lace store \([I]\) kin / not Graphic D.

---

## 2. Hands Core formal model (Contract I)

Sources: Graphic D; `docs/systems-manifest.md` Pieces 1–14 and Decomposition Seams I / II / III.

### 2.1 Index set and entry alphabet

Let \(\mathbb{N}_0 = \{0,1,2,\ldots\}\) be the set of **permanent addresses** (array indices). Indices are forever; reuse and vacuum are model breaks.

The only entry kinds drawn on Graphic D are

$$
\mathsf{Kind} = \{\mathsf{WORD},\, \mathsf{POINTER}\}.
$$

Let \(V\) be the set of word values (variables). Word-identity rules (case, stemming, homographs such as \(\mathsf{PIE}/\mathsf{pie}\)) are unresolved Hands silence and remain \([GAP]\).

### 2.2 State as append-only sequence

A Lace state is a finite sequence

$$
L = (e_0,\ldots,e_{n-1}), \qquad n = |L| \in \mathbb{N}_0,
$$

with each \(e_i\) an entry at address \(i\). Growth is concatenation only. There is no delete, rewrite, or in-place mutate operator on \(L\) \([I]\).

**WORD entry shape** \([I]\):

$$
e_i = (\mathsf{WORD},\, v), \qquad v \in V.
$$

**POINTER entry shape** (example form drawn on Graphic D) \([I]\); arity not closed:

$$
e_j = (\mathsf{POINTER},\, r_A,\, r_B), \qquad r_A, r_B < j.
$$

The binary shape is illustrative. Whether other arities exist, and when a POINTER is appended at all, is

$$
\text{emission rule} = [GAP].
$$

Forward references (\(r \ge j\)) and external edges outside \(L\) are not shown and are treated as forbidden relative to “earlier positions in the same line.”

### 2.3 Star as formation (reading, not table)

Star is not a stored object and not a second table \([I]\); Piece 14 / Piece 4 / Piece 7. Define the **value star** as the index set

$$
\mathrm{Star}(v) \;=\; \{ i \in \mathbb{N}_0 \mid i < |L|,\; e_i = (\mathsf{WORD},\, v) \}.
$$

Participation of those occurrences via POINTER chains is a further reading of \(L\): chains of entries of kind \(\mathsf{POINTER}\) whose refs eventually name members of \(\mathrm{Star}(v)\). That reading is projection language over \(L\), not a Star table. Installing \(\mathrm{Star}\) as a mutable identity store is \([X]\).

### 2.3.1 Labels on observed clusters (view algebra)

The premise is structure. Objects do not carry a relation field. A **label** \(\lambda\) is a name used to describe an observed cluster of indices at a time \(|L|=n\):

$$
\mathrm{bind}(\lambda;L_n)\;=\;\{ i < n \mid \text{the projection calls } i \text{ by }\lambda \}\qquad [III].
$$

As \(n\) increases the observed cluster may change. The naming view then admits three acts that do **not** act on \(e_i\):

$$
\mathsf{Create}(\lambda),\quad \mathsf{Split}(\lambda\to\lambda_1,\lambda_2),\quad \mathsf{Merge}(\lambda_1,\lambda_2\to\lambda)
\qquad [III]/[H].
$$

Applying any of those as \(\mathrm{rew}(e_i)\) is \([X]\). The cat fragment (`cat`, `cat-1`, observed `tail`/`fur`/`tongue`) is a specimen of two labels on observed structure. The operator written `>` in that fragment remains \([GAP]\) / OPEN-SEARCH. Do not finish it.

Project **meaning** is this naming plus the Hands fact that a definition is a route through other stars. Let \(\mathrm{Def}(\sigma)\) be a reading of participation from \(\mathrm{Star}(\sigma)\) through other stars and back into further stars. The reading may be walked without bound because \(|L|\) is unbounded (Continue). That walk is not a closed splice of \(L\) (Kauffman closed loop remains \([X]\)). \(\mathrm{Def}\) is \([III]\). The cut that would *write* a POINTER to materialize a particular route remains \(\Phi\in[GAP]\). HCC-A \(M\) is not \(\mathrm{Def}\).

### 2.4 Governing operator (geometry / storage as one step)

Piece 2 states one closed step. In storage voice, the **stated** fragment is WORD append:

$$
\mathsf{Arrive}(v):\; L \;\mapsto\; L{}^\smallfrown (\mathsf{WORD},\, v) \qquad [I]\text{–}[II].
$$

Geometry voice says the same: input word arrives; route new wire through that word’s star; continue. Routing / participation that would append POINTER entries is the second half of the same step in Hands prose, but the algorithm that chooses refs is Hands-silent:

$$
\mathsf{Participate}(\,\cdot\,) = [GAP]\quad\text{(emission when / arity / adjacency)}.
$$

Thus the full governing operator is only partially formalized: \(\mathsf{Arrive}\) is Contract I; \(\mathsf{Participate}\) is sealed \([GAP]\). There is no second engine after ingest.

### 2.5 Forbidden operators on \(L\)

Relative to Graphic D and Pieces 1, 6, 13, 14, the following are not morphisms of Contract I state (each \([X]\) if proposed as Core):

- delete, rewrite, reset, cut, index reuse;
- intern / collapse many occurrences to one row with a count;
- Star table, meaning table, embed store, N-D storage beside the line;
- graph database or edge table outside \(L\);
- a second Lace / second schema of row types;
- next-token dynamics as Core;
- write-back from any projection.
- split / merge / create of a label implemented as mutate-WORD.

### 2.6 Projection layer (Contract III)

A projection is a map

$$
\pi : L \to \mathsf{View}
$$

with **no write-back** path \(\mathsf{View} \to L\) \([III]\). 1D listings, 2D node-edge drawings, and 3D star pictures are all \(\mathsf{View}\). Mistaking \(\pi(L)\) for the store is a Piece 13 breach \([X]\).

### 2.7 Arrival surface (Contract II)

Arrival is a thin ingest face: bytes/words in, appends out \([II]\). If Arrival keeps documents, vocabularies, parses, or a lexicon of its own, it has become a second store \([X]\). Kin-read: RIC fidelity in Shadow is analogy of this discipline, not a Lace tokenizer.

### 2.8 Explicit Hands \([GAP]\) set (sealed)

The following remain open; this model does not fill them:

1. POINTER emission: when; arity; whether adjacent WORDs imply a relation without a POINTER \([GAP]\).
2. Whether a *read* of Graphic D itself appends (“touch grows lace” is intent, not emission) \([GAP]\).
3. Word identity tokenization / case / stemming \([GAP]\).
4. Document / conversation / provenance as entry kinds (D shows only WORD and POINTER) \([GAP]\).
5. Read / query / traversal operator as Core dynamics \([GAP]\).
6. Concurrency / single-writer discipline \([GAP]\).

Physical encoding of “thread through existing 3D structure” beyond “append WORD + pointer to prior formation” is treated as projection language for pointer participation unless Hands later speaks; it is not closed here.

---

## 3. Shadow machine formal model (from gear-contracts)

Throughout §3, state lives in \(\mathcal{S}\). No component below is a row type of \(L\) unless explicitly stamped as a kin-read into \(\mathcal{H}\). Holder story ledger is written \(L_{\mathrm{story}}\) to avoid collision with Lace \(L\).

### 3.1 Gear A (HCC-A) as dynamical system

#### State

A holder-A state is a tuple

$$
s_A = \bigl(R,\, I,\, \mathrm{RIC},\, \mathrm{PFC},\, C,\, L_{\mathrm{story}},\, M,\, E,\, \mathrm{ISL},\, B\bigr)
$$

with phase \(\phi_A \in \{S0,S1,S2,S3,S4,S5,S6,S7\}\) \([H]\).

| Component | Role (contract grain) | Stamp |
|---|---|---|
| \(R\) | Constraint-bearing Reality; not a Lace store | \([I]\) kin |
| \(I\) | Raw internal signals (thin face); not tokenizer | \([II]\) kin; I-as-tokenizer \([X]\) |
| \(\mathrm{RIC}\) | Structure kept (order, “X said Y”, timing) | \([II]\) |
| \(\mathrm{PFC}\) | Schema-colored interpretations / knobs | knobs \([H]\); as Star/intern \([X]\) |
| \(C\) | Local compiler structure \(\to\) story | local \([H]\); as Core op \([X]\) |
| \(L_{\mathrm{story}}\) | Holder ledger (add/merge/re-index/delete allowed *here*) | private \([H]\); as Lace write \([X]\) |
| \(M\) | Directive weights / transitions inside holder | local force \([H]\); as Core sense store \([X]\) |
| \(E\) | Meaning-in-flight; not transmissible | \([H]\) |
| \(\mathrm{ISL}\) | Identity snapshot / priors for next PFC | \([H]\); as Star \([X]\) |
| \(B\) | Observable act (speech, silence, motion) | \([H]\); if graphed \([III]\); as emission \([GAP]\)/\([X]\) if filled |

#### Parallel escapement

Intake is parallel, not serial:

$$
I \;\longrightarrow\; \mathrm{RIC} \parallel \mathrm{PFC} \qquad (S0\text{–}S1).
$$

Both shafts must turn. PFC-only lock means the workpiece never enters (failure mode of Walk 1).

#### Transition cycle \(S0\ldots S7\)

Define the Walk 1 chain as a dynamical cycle on \(s_A\):

\begin{align}
S0\text{–}S1:&\quad R \xrightarrow{\iota} I \xrightarrow{} \mathrm{RIC}\parallel\mathrm{PFC}, \\
S2:&\quad (\mathrm{RIC},\mathrm{PFC}) \xrightarrow{\gamma} C \xrightarrow{} L_{\mathrm{story}}, \\
S3:&\quad L_{\mathrm{story}} \xrightarrow{} M, \\
S4:&\quad M \xrightarrow{} E, \\
S5:&\quad (L_{\mathrm{story}},M,E) \xrightarrow{} \mathrm{ISL}, \\
S6:&\quad (\mathrm{ISL},M,E) \xrightarrow{} B, \\
S7\to S0:&\quad B \xrightarrow{} R' \xrightarrow{} I.
\end{align}

Here \(\iota\) converts Reality to signals without Lace write; \(\gamma\) is local compile, **not** Piece 2’s governing rule. Feedback \(B\to R'\) is recirculation metaphor \([I]\) kin of growth and \([H]\) as next start; as mutate-WORD-at-\(i\) it is \([X]\).

#### Recursion Act VI \(\to\) PFC'

Identity priors update the next PFC (hologram recursion (4); Walk 6 fold):

$$
\mathrm{ActVI}:\; \mathrm{ISL} \mapsto \mathrm{PFC}' \qquad [H];\quad \mathrm{PFC}'\text{ as Star table }[X].
$$

Only \(B\) is directly observable; only \(B\) may change \(R\) and thus may *request* more strand. Request \(\neq\) POINTER emission \([GAP]\).

### 3.2 Gear B (Coffee Cup) as staged process

#### Stages as a chain

$$
\mathrm{Cond} \to \mathrm{Rel} \to \mathrm{Traj} \to \mathrm{Imp} \to \mathrm{After} \to \mathrm{Cond}'
$$

with recirculation \(\mathrm{After}\to\mathrm{Cond}'\) (tooth 5 drives next tooth 1). Stamps: Cond \([H]|[II]\); Rel \([H]\); Traj \([H]\); Imp \([I]\); After \([H]\), mutate-WORD \([X]\); Cond' \([H]\), metaphor growth \([I]\), mutate \([X]\).

Conditions make fall possible; they do not cause it. Release initiates; it is not POINTER emission. Impact is ground-truth kin \([I]\) — Graphic D as it is, not a chart mistaken for the strand.

#### Window function on Trajectory

Let \(\mathcal{I}\) be the set of admissible interventions during Trajectory. The live window is a shrinking set

$$
W_{\mathrm{traj}}(t) \subseteq \mathcal{I}, \qquad
W_{\mathrm{traj}}(t) \supseteq W_{\mathrm{traj}}(t') \quad (t \le t'),
$$

passing through grades \(\mathsf{easy}\supset\mathsf{costly}\supset\mathsf{partial}\supset\mathsf{LOCKED}=\emptyset\) relative to cheap control. The window is mechanical, not moral \([H]\). Work after LOCKED as if still Traj is a failure mode. Intervention on a shoe is more cord, not less — kin of Hands growth, not rewrite of Impact.

### 3.3 Gear C (Water / Proof) as FSM + bridge

#### FSM states

$$
Q_C = \{S0_{\mathrm{Banks}},\, S1_{\mathrm{Rapids}},\, S2_{\mathrm{Delta}},\, S3_{\mathrm{Crossing}},\, S4_{\mathrm{Rebuild}}\}
$$

with edges (Walk 3):

\begin{align}
S0 &\to S1, \\
S1 &\to S2 \quad\text{(requires Locate then Anchor)}, \\
S2 &\to S3, \\
S3 &\to S4, \\
S4 &\to S0'.
\end{align}

All FSM states are \([H]\). Banks are normal isolation, not failure; pressure \(\neq\) transfer; not two Laces.

#### Bridge alphabet

Bridge operations are an alphabet on talk in \(\mathcal{S}\):

$$
\Sigma_{\mathrm{bridge}} = \{\mathsf{Locate},\, \mathsf{Anchor},\, \mathsf{Pair},\, \mathsf{Unknowns},\, \mathsf{Reject}\}.
$$

| Op | In \(\to\) Out (contract grain) | Stamp |
|---|---|---|
| \(\mathsf{Locate}\) | heat / place-claim \(\to\) BANKS\|RAPIDS\|DELTA\|CROSSING + route | \([H]\) |
| \(\mathsf{Anchor}\) | pointable thing \(\to\) OBS node (talk metadata) | \([H]\); emission \([GAP]\); as mechanism \([X]\) |
| \(\mathsf{Pair}\) | \((\mathrm{OBS}_A,\mathrm{OBS}_B)\to\mathrm{DELTA}\) | \([H]\); as array type \([X]\) |
| \(\mathsf{Unknowns}\) | missing context \(\to\) UNK naming required OBS | \([H]\); fill-Hands \([X]\)/\([GAP]\) |
| \(\mathsf{Reject}\) | heat without OBS \(\to\) INVALID + request OBS/UNK | \([H]\) |

Conversation types \(\mathrm{OBS},\,\mathrm{DELTA},\,\mathrm{UNK},\,\mathrm{INVALID}\) live in \(\mathcal{S}\) only. Placing them as rows of \(L\) is \([X]\) (Hands BREACH: D shows WORD and POINTER only).

#### Anchor does not emit

$$
\mathsf{Anchor} \nrightarrow \mathsf{POINTER}\text{-append on }L.
$$

Talk address \(\neq\) lace index. Filling Hands emission from OBS format is \([X]\). Water’s own OBS format / INVALID stop-list / UNK budget remain clutch tolerances \([GAP]\) in \(\mathcal{S}\), not Lace rules.

#### Repair sentence as re-entry

The repair utterance (hologram) is a re-entry map into Locate:

$$
\rho_{\mathrm{repair}} : \text{“loud / stuck”} \;\mapsto\; \mathsf{Locate}\text{-mode at }S1,
$$

then \(\mathsf{Locate}\to\mathsf{Anchor}\) may open \(S1\to S2\). This is the manual escapement clutch \([H]\), not a Core scheduler and not emission \([GAP]\).

### 3.4 Product / co-presence

#### Co-presence cells \(t0\ldots t6\)

Define a co-presence state as a triple from Walk 4:

$$
c_t = \bigl(\sigma_B(t),\, q_C(t),\, \phi_A(t)\bigr) \in \mathcal{S}_B \times Q_C \times \Phi_A.
$$

| Cell | \((\sigma_B,\, q_C,\, \phi_A)\) | Stamp (summary) |
|---|---|---|
| \(t0\) | Cond \(\times\) Banks \(\times\) A.S0–S1 | \([H]|[II]\) |
| \(t1\) | Rel \(\times\) Rapids↓ \(\times\) A.S2 | \([H]\) (C \(\neq\) Core op) |
| \(t2\) | Traj \(\times\) Locate* \(\times\) A.S3–S4 | Locate \([H]\); A.M \([X]\); A.E \([H]\) |
| \(t3\) | window \(\times\) DELTA/CROSS \(\times\) A.force | \([H]\); force-as-sense \([X]\) |
| \(t4\) | Imp \(\times\) OBS-ground \(\times\) A.R | \([I]\) kin; OBS-as-row \([X]\) |
| \(t5\) | After \(\times\) Rebuild \(\times\) A.ActVI | \([H]\); mutate \([X]\) |
| \(t6\) | Cond' \(\times\) Banks' \(\times\) A.PFC' | \([H]\); PFC' table \([X]\) |

Cell \(t4\) is the invariant-kin \([I]\) cell across B.Imp, C.OBS-ground, and A.R. Cell \(t2\) is the escapement seat.

#### Escapement (Walk 5) at \(t2\)

Two modes on the same cell:

- **Lock** (Rapids LOCK): \(A\times A\) in Rapids, no OBS, Traj window burning \(\Rightarrow\) grind, no tick on the tape. Stamp \([H]\); grind-as-tick / grind-as-append \([X]\). Loud \(\neq\) transfer. Do not emit to soothe lock \([GAP]\) sealed.
- **Release** (Locate/Anchor RELEASE): one pointable thing \(\Rightarrow\) structure shared; each A keeps own \(M/E\); window may be used. Stamp \([H]\); Release-as-emission \([GAP]\). Repair sentence is the clutch lever.

#### Master recursion (Walk 6)

Three names, one fold:

$$
\mathrm{After} \;\equiv\; S4_{\mathrm{Rebuild}} \;\equiv\; \mathrm{ActVI}
\;\longrightarrow\;
(\mathrm{Cond}',\, S0',\, \mathrm{PFC}') = \text{next start}.
$$

Three-way stamp: holder recirculation \([H]\); metaphor more-world / maybe-later-more-cord \([I]\) kin; mutate WORD @ \(i\) / merge \(L_{\mathrm{story}}\) onto Graphic D / Reidemeister-as-write \([X]\). Closed ring on the workpiece is forbidden (Kauffman); holder loop may repeat.

---

## 4. Mapping from gear-contracts to the model

Each MESH id maps to a formal arrow, equation, or FSM edge above. Walk 7 audits map into \(\mathsf{Stop}\) (§5). Adjacent meshes are grouped only where the formal object is the same cycle segment; no \([X]\) audit is dropped.

| MESH / AUDIT | Formal object in this document |
|---|---|
| **Walk 1 — Train A** | |
| A.R → A.I | \(\iota: R\to I\); stamps \([I]\)/\([II]\); tokenizer \([X]\) |
| A.I → A.RIC ∥ A.PFC | parallel map \(I\to\mathrm{RIC}\parallel\mathrm{PFC}\) at S0–S1 |
| A.RIC ∥ A.PFC → A.C | \(\gamma\) local compile; Core-op \([X]\) |
| A.C → A.L | write into \(L_{\mathrm{story}}\); Lace write \([X]\) |
| A.L → A.M | \(L_{\mathrm{story}}\to M\); sense-store \([X]\) |
| A.M → A.E | \(M\to E\) \([H]\) |
| A.E → A.ISL | \((L_{\mathrm{story}},M,E)\to\mathrm{ISL}\) \([H]\); Star \([X]\) |
| A.ISL → A.B | \(\to B\) observable; emission \([GAP]\)/\([X]\) |
| A.B → A.R' → A.I | feedback; growth kin \([I]\); rewrite \([X]\) |
| *(cycle)* | \(\phi_A: S0\to\cdots\to S7\to S0\) |
| **Walk 2 — Train B** | |
| B.Cond → B.Rel | stage edge; Cond \([H]|[II]\); Rel \([H]\) |
| B.Rel → B.Traj | stage edge; \(W_{\mathrm{traj}}\) opens \([H]\) |
| B.Traj → B.Imp | window shrinks to Imp \([I]\) |
| B.Imp → B.After | scripts \([H]\); mutate-WORD \([X]\) |
| B.After → B.Cond' | recirculation; fold toward master recursion |
| **Walk 3 — Train C** | |
| C.S0 → C.S1 | FSM edge Banks→Rapids \([H]\) |
| C.S1 → C.S2 | FSM edge; Locate+Anchor required; Anchor≠emission \([GAP]\) |
| C.S2 → C.S3 | FSM edge; Pair; DELTA not Lace type \([X]\) as rows |
| C.S3 → C.S4 | FSM edge Crossing→Rebuild \([H]\) |
| C.S4 → C.S0' | FSM edge; next Banks' \([H]\) |
| C.Locate | \(\mathsf{Locate}\in\Sigma_{\mathrm{bridge}}\) \([H]\) |
| C.Anchor | \(\mathsf{Anchor}\); emission sealed \([GAP]\); as mechanism \([X]\) |
| C.Pair | \(\mathsf{Pair}\); array type \([X]\) |
| C.Unknowns | \(\mathsf{Unknowns}\); fill-Hands \([X]\)/\([GAP]\) |
| C.Reject | \(\mathsf{Reject}\to\mathrm{INVALID}\) \([H]\) |
| **Walk 4 — cells** | |
| t0 … t6 | triples \(c_t\) table in §3.4 |
| **Walk 5 — escapement** | |
| Rapids LOCK | Lock mode at \(t2\); grind≠tick \([X]\) |
| Locate/Anchor RELEASE | Release mode at \(t2\); emission \([GAP]\) |
| **Walk 6 — master fold** | |
| After ≡ Rebuild ≡ ActVI → next | equivalence + next-start map; three-way stamp |
| **Walk 7 — \([X]\) audits** | |
| A.L merge/delete as Lace write | \(\in\mathsf{Stop}\) |
| A.M as word sense | \(\in\mathsf{Stop}\) |
| A.PFC as Star table | \(\in\mathsf{Stop}\) |
| C.OBS / C.DELTA as array rows | \(\in\mathsf{Stop}\) |
| C.Anchor as POINTER emission | \([GAP]\) if open; \([X]\) if used as rule; \(\in\mathsf{Stop}\) when filled |
| B.After as rewrite WORD @ i | \(\in\mathsf{Stop}\) |

Walk results at summary grain match gear-contracts: 10 A meshes, 5 B meshes, 5 C edges + 5 bridge ops, 7 co-presence cells, 2 escapement modes, 1 master fold, 6 \([X]\) audits; emission unfilled.

---

## 5. Great contract wall as formal restriction

### 5.1 Allowed kin-read functors

Kin-reads are functors (analogy of discipline) that do **not** transport state from \(\mathcal{S}\) into \(L\):

\begin{align}
\kappa_{II} &:\; \text{RIC fidelity} \;\leadsto\; \text{Arrival discipline (Contract II)}, \\
\kappa_{I} &:\; \text{Impact / Reality} \;\leadsto\; \text{Rule Zero / ground truth (Contract I)}, \\
\kappa_{III} &:\; \text{drawings / authority graphs of }B \;\leadsto\; \text{Projection (Contract III)}.
\end{align}

Each \(\kappa\) is read-only analogy. None appends to \(L\). None closes emission \([GAP]\).

### 5.2 STOP set from Walk 7

$$
\mathsf{Stop} \;=\;
\left\{
\begin{aligned}
&L_{\mathrm{story}}\text{-merge/delete as Lace write},\\
&M\text{ as stored word sense},\\
&\mathrm{PFC}\text{ as Star table},\\
&\mathrm{OBS}/\mathrm{DELTA}\text{ as array rows},\\
&\mathsf{Anchor}\text{ as POINTER emission rule},\\
&\mathrm{After}\text{ as rewrite WORD @ }i
\end{aligned}
\right\}.
$$

Additional \([X]\) failure modes contracted in walks 1–6 (I-as-tokenizer, A.C as Core operator, grind-as-tick, Release-as-emission when filled, second lace, Reidemeister-as-write, etc.) enlarge the practical stop-list; the six audits above are the explicit Walk 7 core.

### 5.3 Prove-by-cases: no map in \(\mathsf{Stop}\) is a morphism into Contract I state

We argue casewise that each element of \(\mathsf{Stop}\) fails to be a legal map \(-\to L\) (or a legal Core operator on \(L\)).

- **\(L_{\mathrm{story}}\) merge/delete as Lace write.** Contract I invariant: the array only grows; nothing is deleted or rewritten (Piece 1 / Graphic D). Merge/delete on \(L\) would violate Rule Zero. Holder oil may churn inside \(L_{\mathrm{story}}\) \([H]\); that churn is not a map into \(L\). Hence not a morphism into Contract I state.
- **\(M\) as stored word sense.** Piece 14: no stored meaning; a word is its variable. Storing sense on WORD (or as a Core meaning row) is exactly the collapse Hands forbid. Local directive force in the holder \([H]\) does not enter \(L\).
- **PFC as Star table.** Star is \(\mathrm{Star}(v)\) as a reading of WORD occurrences (Piece 4 / Piece 7), not a template library. A PFC table of identity would be a second store beside Graphic D (Xiao FORBID intern). Knobs may update \(\mathrm{PFC}'\) in \(\mathcal{S}\) \([H]\); they do not allocate Star rows in \(L\).
- **OBS / DELTA as array rows.** Graphic D’s alphabet is \(\{\mathsf{WORD},\mathsf{POINTER}\}\) only. Talk types as rows would add a second schema (Hands BREACH; false “meaning layer”). They remain conversation objects in \(\mathcal{S}\) \([H]\).
- **Anchor as POINTER emission.** Hands are silent on when a POINTER is written (manifest Q2). Anchor produces talk metadata about a pointable OBS; talk address \(\neq\) lace index. Using Anchor as the emission rule would be Shadow filling Hands silence — stamped \([X]\) if filled, left \([GAP]\) if open. Either way it is not a Hands morphism into \(L\).
- **After as rewrite WORD @ \(i\).** Aftermath may script the next Cond in \(\mathcal{S}\) \([H]\). Mutating an existing WORD occurrence would break Piece 1 / Rowlands FORBID rewrite. Recirculation is more world / maybe later more cord, not retie of index \(i\).

Therefore every map in \(\mathsf{Stop}\) is excluded from \(\mathrm{Hom}(-,L)\) under Contract I. The wall \(W:\mathcal{S}\not\hookrightarrow\mathcal{H}\) holds for these cases; only \(\kappa_{I},\kappa_{II},\kappa_{III}\) remain as legal kin-reads.

---

## 6. Completeness theorem (relative)

**Theorem (relative completeness).** Relative to `docs/clock/shadow-clock-gear-contracts.md` walks 1–7 and to the Hands pieces those walks and `docs/systems-manifest.md` state for Contracts I–III, the model of §§1–5 is complete as a **dual-universe specification**: Hands is formalized for every stated Core/Arrival/Projection object (with emission left open), and Shadow is formalized for every contracted mesh of trains A, B, C, co-presence cells \(t0\)–\(t6\), escapement Lock/Release, and the master fold After ≡ Rebuild ≡ ActVI.

**Proof sketch.** Walk 1’s ten meshes are the edges of §3.1; Walk 2’s five meshes are the edges and window of §3.2; Walk 3’s five FSM edges and five bridge ops are §3.3; Walk 4’s seven cells are §3.4’s table; Walk 5’s two modes are Lock/Release; Walk 6 is the master equivalence; Walk 7’s six audits are \(\mathsf{Stop}\). Hands objects Graphic D / Pieces 1–14 appear in §2. Kin-reads and the wall appear in §5. No contracted MESH header is left without a formal counterpart. \(\square\)

**Corollary (executable incompleteness).** The model is incomplete as a Core executable if and only if POINTER emission remains \([GAP]\). Equivalently: \(\mathsf{Arrive}\) is stated; \(\mathsf{Participate}\) is not; therefore no total program on \(L\) that claims to implement Piece 2’s full governing rule is licensed by this document.

### Open \([GAP]\)s left sealed

From Hands silence and gear-contracts’ open list (Shadow must not fill):

1. POINTER emission: when, arity, whether adjacent WORDs imply a relation \([GAP]\).
2. Whether a read of Graphic D appends (“touch grows lace” remains intent) \([GAP]\).
3. Word identity (\(\mathsf{PIE}/\mathsf{pie}\), case, stemming) \([GAP]\).
4. Document / conversation / provenance as entries \([GAP]\).
5. Read / query / traversal operator \([GAP]\).
6. Concurrency / single writer \([GAP]\).
7. Water OBS pointer format, INVALID stop-list, UNK budget — clutch tolerances in \(\mathcal{S}\), not emission \([GAP]\).
8. Provenance chain from 14 Sep images to current Graphics A–D (history) \([GAP]\).
9. Scheduler (eleven rules / 4:3:2:1) — historical; not a mesh of this clock \([GAP]\) relative to Core.
10. Contact-admission among historical artifacts — conflict stays visible; unused as emission \([GAP]\).

---

## 7. Steward test (non-mathematical but binding)

From `docs/staking-the-workspace.md` / `docs/law-why-these-documents.md` and the gear-contracts steward close:

> If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.  
> If a crate did it for you, you may not.

Holder gears diagnose the steward. They do not grow a second store beside Graphic D. Lace \(\notin\{A,B,C\}\). Lace \(=\) append \(\to\) star \(\to\) continue. POINTER emission \(=[GAP]\).

This test binds implementation posture (no crates.io graph, no foreign Core dynamics) as law beside the mathematics: a morphism that a physical lace cannot suffer is not a morphism of Contract I.

---

## Related paths

| Path | Role |
|---|---|
| [docs/clock/shadow-clock-hologram.md](shadow-clock-hologram.md) | Holder machine \(\{A,B,C\}\) hologram; stamps and axle |
| [docs/clock/shadow-clock-gear-contracts.md](shadow-clock-gear-contracts.md) | Primary MESH inventory (walks 1–7) |
| [docs/clock/shadow-clock-agent-brief.md](shadow-clock-agent-brief.md) | Standing brief for contract walks |
| [docs/systems-manifest.md](../systems-manifest.md) | Hands Contracts I–III; Graphic D pieces; open Q gaps |
| [docs/staking-the-workspace.md](../staking-the-workspace.md) | Hands vs Shadow staking; steward test |
| [docs/law-why-these-documents.md](../law-why-these-documents.md) | Repo law; KEEP/FORBID; shoe/crate lines |
| [docs/reason-model-map.md](../reason-model-map.md) | Physical shoe lace as reason model |
| [docs/shadow-clock-gearing.html](../shadow-clock-gearing.html) | Layer-III interactive projection of the clock |
| [docs/history/history-recovered-pass-3-2026-09-18.md](../history/history-recovered-pass-3-2026-09-18.md) | Pass 3 recovery; graphics kin; emission still [GAP] |

---

*End of system mathematical model. Emission remains \([GAP]\). No `src/` authorized by this file.*

