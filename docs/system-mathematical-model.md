# System mathematical model

**Status:** Formal reading of Hands + Shadow. Not Core code. Not pointer-emission.  
**Mapped from:** `docs/systems-manifest.md`, `docs/philosophy-map.md`, `docs/shadow-clock-hologram.md`, `docs/shadow-clock-gear-contracts.md`, `docs/reason-model-map.md`.  
**Authority:** `docs/graphics/` A–D. If this file would change WORD, POINTER, STAR, or the governing rule, discard that sentence for Core.

Two algebras. One wall.

\[
\mathbf{L}\ \text{(Hands / workpiece)}\quad\not=\quad\mathbf{H}\ \text{(Shadow / holder clock)}
\]

\(\mathbf{L}\) is the lace. \(\mathbf{H}=A\times B\times C\) is the machine that may *operate upon* \(\mathbf{L}\). Gears are not entries.

---

## 0. Sorts

| Sort | Name | Lives in |
|---|---|---|
| \(\mathcal{I}=\mathbb{N}_0\) | indices | \(\mathbf{L}\) |
| \(\Sigma\) | word labels (variables-as-names) | marks, not meanings |
| \(\{W,P\}\) | entry kinds WORD, POINTER | Graphic D |
| \(\mathcal{R}\) | Reality (constraint) | axle; not a store |
| \(\mathcal{S}_A,\mathcal{S}_B,\mathcal{S}_C\) | holder phase sets | \(\mathbf{H}\) |
| \(\{0,1\}\) | pallet drop | escapement |

No sort named Relation-as-field.

---

## 1. Hands — workpiece algebra \(\mathbf{L}\)

### 1.1 Carrier

An entry is a tagged record on one line:

\[
e \in E \;=\; (W,\sigma)\ \cup\ (P,\rho)
\]

where \(\sigma\in\Sigma\) and \(\rho\) is a finite tuple of earlier indices. Arity of \(\rho\) is **not** fixed here.

A lace at time \(n\) is a finite sequence

\[
L_n = (e_0,e_1,\ldots,e_{n-1}),\qquad |L_n|=n.
\]

Empty start (Graphic A1, Rowlands KEEP empty):

\[
L_0 = ().
\]

### 1.2 Rule Zero (Piece 1)

The only total operation on \(L\) is append:

\[
\mathrm{app}(L_n,e) = L_n{}^\smallfrown(e) = L_{n+1}.
\]

Forbidden (not in the signature):

\[
\mathrm{del},\;\mathrm{rew},\;\mathrm{merge},\;\mathrm{mask},\;\mathrm{intern}:\quad\text{undefined on }\mathbf{L}.
\]

Kauffman Reidemeister-as-write, Rowlands “rewrite” as mutate-WORD, Xiao \([\mathrm{MASK}]\) are outside \(\mathbf{L}\).

### 1.3 Governing rule (Piece 2) as a pair of presentations

Mechanism:

\[
\sigma\ \text{arrives}\ \Longrightarrow\ \text{route new wire through }\mathrm{Star}(\sigma)\ \Longrightarrow\ \mathrm{Continue}.
\]

Storage:

\[
\text{input arrives}\ \Longrightarrow\ \mathrm{app}(L,e)\ \Longrightarrow\ \text{participate in earlier indices by }P\text{ if and only if emission says so}.
\]

Emission is **not** an element of this signature. Write

\[
\Phi:\;\text{arrival context}\to\{\varepsilon\}\cup P\text{-payloads}
\]

and set \(\Phi\in[\mathrm{GAP}]\). Hands are silent. Shadow must not define \(\Phi\).

### 1.4 Arrival (Piece 3 / Contract II)

Let \(w=(w_0,w_1,\ldots)\) be a punch-card of labels. Ingest is order-preserving:

\[
\mathrm{arr}(L,(w_k)) = \mathrm{app}(L,(W,w_k))\quad\text{then possibly }\mathrm{app}(\cdot,P)\ \text{via }\Phi.
\]

No parse-away, no discard. Token identity \(w\equiv w'\) (case, `PIE`/`pie`) is \([\mathrm{GAP}]\).

Contract II may not keep a private store. If it does, it has left \(\mathbf{L}\).

### 1.5 Variable, cluster, star (views — not a second array)

A **variable** is a label \(\sigma\in\Sigma\).

Its **cluster** at \(L_n\) is index geometry:

\[
\mathrm{Cl}(\sigma;L_n) \;=\; \{\,i<n\mid e_i=(W,\sigma)\,\}.
\]

**Star** is that cluster read as a formation (Piece 4), not a row:

\[
\mathrm{Star}(\sigma;L_n) \;\cong\; \mathrm{Cl}(\sigma;L_n).
\]

Binding demanded by the clock law:

\[
\mathrm{var}(\sigma) \;=\; \sigma,\qquad
\mathrm{bind}(\sigma;L_n) \;=\; \mathrm{array}\{\mathrm{ref}=i : i\in\mathrm{Cl}(\sigma;L_n)\}.
\]

\(\mathrm{bind}\) is a **projection** (Contract III). It is not stored beside \(L\). Writing \(\mathrm{bind}\) back as `object.relations[]` is a second lace.

### 1.6 Cluster dynamics

Time on \(\mathbf{L}\) is length:

\[
\tau(L)=|L|.
\]

Cluster update law:

\[
\mathrm{Cl}(\sigma;L_{n+1})\neq\mathrm{Cl}(\sigma;L_n)
\quad\Longrightarrow\quad
L_{n+1}=\mathrm{app}(L_n,e)\ \text{for some }e.
\]

Equivalently: no tick, no cluster change. Relationships are not properties of objects; they **cluster as \(\tau\) increases**.

POINTER participation (when \(\Phi\) someday exists) only names earlier geometry:

\[
e_j=(P,\rho)\ \Longrightarrow\ \forall k\in\rho:\ k<j.
\]

Forward refs and self-refs are not in Graphic D.

### 1.7 Projection (Contract III)

A view \(V\) is any function of \(L_n\) that does not alter \(L_n\):

\[
V:L\mapsto\text{picture},\qquad V\text{ has no inverse write}.
\]

Graphics A–C, 2D graphs, 3D stars, \(\mathrm{bind}\), the HTML clock — all \(V\). Edit-through-view is a fork of \(\mathbf{L}\).

### 1.8 What \(\mathbf{L}\) does not contain

Meaning payloads, PFC templates, Story-Ledger ops, OBS/DELTA/UNK rows, Emotion, Identity, ReAG, GNN, NTK weights, document/conversation types unless later Hands say so.

---

## 2. Shadow — holder clock \(\mathbf{H}=A\times B\times C\)

Axle (shared deadbolt, not a store):

\[
\text{only structure crosses a mind-boundary};\quad
\text{push without a pointable fails};\quad
\mathcal{R}\text{ constrains}.
\]

### 2.1 Train \(A\) (HCC-A compile clock)

Phases (HCC-A S0–S7):

\[
\mathcal{S}_A=\{S0,S1,S2,S3,S4,S5,S6,S7\}.
\]

Dual shaft invariant:

\[
\mathrm{live}(\mathrm{RIC})\ \wedge\ \mathrm{live}(\mathrm{PFC}).
\]

If only PFC turns, the workpiece never enters (locked train).

Private ledger \(L^A\) **is not** \(L\):

\[
L^A\text{ admits }\{\mathrm{add},\mathrm{merge},\mathrm{reindex},\mathrm{delete}\}.
\]

Those symbols restricted to \(L\) are \([\mathrm{X}]\).

Compiler \(C^A:\ (\mathrm{RIC},\mathrm{PFC})\to L^A\) is not Piece 2.

Observable escape:

\[
\pi_B:A\to\text{acts on }\mathcal{R}.
\]

Only this shaft may *request* \(\mathrm{app}\) on \(\mathbf{L}\). Request \(\neq\Phi\).

Meaning \(M^A\), emotion \(E^A\), identity \(\mathrm{ISL}^A\) stay in \(A\). They do not inject into \(E\).

### 2.2 Train \(B\) (Coffee Cup phase clock)

\[
\mathcal{S}_B=\mathbb{Z}/5\mathbb{Z}=\{\,0{=}\mathrm{Cond},\;1{=}\mathrm{Rel},\;2{=}\mathrm{Traj},\;3{=}\mathrm{Imp},\;4{=}\mathrm{After}\,\}.
\]

Successor \(b\mapsto b+1\pmod{5}\). Work predicate:

\[
\mathrm{work}(b)=[b=2].
\]

Tooth 3 (trajectory) is the only live impulse into the pallet. Intervention on a shoe is \(\mathrm{app}\), never \(\mathrm{del}\).

Impact \(b=3\) is kin-read of \(\mathcal{R}\) and of \(L\) as it is \([\mathrm{I}]\).

Aftermath wrap:

\[
4\mapsto 0
\]

is recirculation of **holder scripts**, not \(\mathrm{rew}(e_i)\).

### 2.3 Train \(C\) (Water crossing clock)

\[
\mathcal{S}_C=\{S0,S1,S2,S3,S4\}
=\{\mathrm{Banks},\mathrm{Rapids},\mathrm{Delta},\mathrm{Cross},\mathrm{Rebuild}\}.
\]

Talk types \(\{\mathrm{OBS},\mathrm{DELTA},\mathrm{UNK},\mathrm{INVALID}\}\) live in \(C\), not in \(E\).

Bridge partial functions (holder protocol):

\[
\begin{align*}
\mathrm{Locate}&: \text{signal}\to\mathcal{S}_C,\\
\mathrm{Anchor}&: \text{pointable}\to\mathrm{OBS},\\
\mathrm{Pair}&: \mathrm{OBS}\times\mathrm{OBS}\to\mathrm{DELTA},\\
\mathrm{Unknowns}&: \text{block}\to\mathrm{UNK},\\
\mathrm{Reject}&: \text{non-payload}\to\mathrm{INVALID}.
\end{align*}
\]

\(\mathrm{Anchor}\) is **not** \(\Phi\). Identifying them is \([\mathrm{X}]\).

One rule:

\[
\neg\mathrm{pointable}(x)\ \Longrightarrow\ \neg\mathrm{push}(x).
\]

### 2.4 Escapement

Pallet range \(\varepsilon\in\{0,1\}\).

\[
\begin{align*}
\mathrm{LOCK}\ &\equiv\ C=S1\ \wedge\ \neg\mathrm{OBS_{shared}}\ \wedge\ B=\mathrm{Traj},\\
\mathrm{RELEASE}\ &\equiv\ \mathrm{Locate};\mathrm{Anchor}(\mathrm{OBS}),\\
\varepsilon=1\ &\Longrightarrow\ \mathrm{RELEASE}\ \wedge\ \neg\mathrm{LOCK},\\
\varepsilon=0\ &\text{includes grind (power on, no mesh)}.
\end{align*}
\]

Tick on the tape:

\[
\mathrm{tick}\ \equiv\ \varepsilon=1\ \wedge\ \mathrm{app}(L,e)\ \text{for a legal }e.
\]

Grind counted as \(\mathrm{app}\) is a false tick (history: mirror, BFS, C-machine).

### 2.5 Co-presence \(\mathcal{T}=\{t_0,\ldots,t_6\}\)

Hologram product cells (not extra state stored in \(L\)):

| \(t\) | \(B\) | \(C\) | \(A\) |
|---|---|---|---|
| \(t_0\) | Cond | Banks | \(S0\)–\(S1\) |
| \(t_1\) | Rel | Rapids | \(S2\) |
| \(t_2\) | Traj | Locate | \(S3\)–\(S4\) |
| \(t_3\) | window | Delta/Cross | force |
| \(t_4\) | Imp | OBS ground | \(\mathcal{R}\) |
| \(t_5\) | After | Rebuild | Act VI |
| \(t_6\) | Cond' | Banks' | PFC' |

\(t_2\) is the escapement cell. \(t_4\) is the \([\mathrm{I}]\) kin cell.

### 2.6 Master fold

\[
B.\mathrm{After}\ \equiv\ C.S4\ \equiv\ A.\mathrm{ActVI}
\quad\longrightarrow\quad
(B.\mathrm{Cond}',\ C.S0',\ A.\mathrm{PFC}').
\]

Three stamps on one arrow:

- \([\mathrm{H}]\) holder recirculation
- metaphor \([\mathrm{I}]\) more world / maybe later more cord
- \([\mathrm{X}]\) \(\mathrm{rew}(e_i)\)

### 2.7 Recursions of \(\mathbf{H}\) (not of \(\mathbf{L}\))

| # | Name | Equation | Stamp |
|---|---|---|---|
| 1 | master fold | §2.6 | H / I-metaphor / X |
| 2 | pressure lock | INVALID \(\to E\uparrow\to\) pressure | H; not Core scheduler |
| 3 | repair re-entry | \(S1\to\mathrm{Locate}\to\mathrm{Anchor}\to S2\) | H; \(\neq\Phi\) |
| 4 | priors eat children | \(\mathrm{ISL}\to\mathrm{PFC}'\) | H; PFC as Star X |
| 5 | false progress | loud \(\wedge\neg\mathrm{Pair}\) | H |
| 6 | single-tooth collapse | \(\mathrm{work}\) off \(b=2\) | H |
| 7 | meaning-transfer | demand shared \(M,E\) | H; stored meaning X |
| 9 | holder rewrite fold | \(L^A\) reshape \(\to\) next PFC | H; \(L\) rewrite X |

---

## 3. The wall (why the system is two algebras)

Let \(\iota\) be “import as Core mechanism.” Then

\[
\iota(C^A)=\iota(L^A)=\iota(M^A)=\iota(\mathrm{OBS})=\iota(\mathrm{Anchor}\text{ as }\Phi)=\bot.
\]

Allowed kin-reads (not implementations):

\[
\begin{align*}
\mathcal{R},\ B.\mathrm{Imp},\ C.\mathrm{OBS_{ground}} &\ \simeq_{[\mathrm{I}]}\ \text{constraint / floor / }L\text{ as it is},\\
A.\mathrm{RIC},\ B.\mathrm{Cond} &\ \simeq_{[\mathrm{II}]}\ \text{punch-card / field before append},\\
\mathrm{bind},\ \text{HTML clock},\ \text{Graphics A–C} &\ \simeq_{[\mathrm{III}]}\ \text{read-only }V(L).
\end{align*}
\]

A legal request from holder to lace is at most:

\[
\pi_B(A)\ \text{changes }\mathcal{R}\ \Longrightarrow\ \text{a later arrival may }\mathrm{app}\text{ into }L.
\]

That implication does not define \(\Phi\).

---

## 4. Ratios that must not slip

\[
\begin{align*}
\mathrm{RIC}:\mathrm{PFC} &= 1:1 \quad(\text{both live}),\\
\varepsilon &\in\{0,1\},\\
\mathrm{work} &\text{ only at }B=2,\\
4_B &\mapsto 0_B \quad\text{without }\mathrm{rew},\\
\Delta\mathrm{Cl}(\sigma) &\neq\emptyset \ \Rightarrow\ \Delta\tau=1.
\end{align*}
\]

There is no gear named Relationship. Clustering is \(V(L)\) after \(\tau\) grows.

---

## 5. Completeness statement

Complete **as a two-sorted system** means:

1. \(\mathbf{L}\) is specified through append, views, and forbids.
2. \(\mathbf{H}\) is specified through \(A,B,C\), product cells, pallet, and master fold.
3. Every mesh in `docs/shadow-clock-gear-contracts.md` is an edge in \(\mathbf{H}\) or a stamped kin-read of \(\mathbf{L}\).
4. The wall is specified: \(\iota\) of holder internals is undefined on \(\mathbf{L}\).

Incomplete **by Hands silence** (must remain open):

1. \(\Phi\) — pointer emission (when, arity, implicit adjacent WORD edges).
2. Whether a read of \(L\) is an \(\mathrm{app}\).
3. Equality on \(\Sigma\).
4. Extra entry kinds (document, conversation, provenance).
5. Query/traversal operator.
6. Writer cardinality.
7. \(C\)'s OBS-format / INVALID list / UNK budget.

A model that fills (1)–(7) from Shadow texts is not this system.

---

## 6. Steward test (as a predicate)

\[
\mathrm{ok}(x)\ \iff\ x\text{ can be done to a two-ended shoe lace}.
\]

\[
\neg\mathrm{ok}(x)\ \Longrightarrow\ x\notin\mathbf{L}.
\]

Holder gears diagnose the steward. They do not grow a second store beside Graphic D.

\[
\mathbf{L}\ \notin\ \{A,B,C\},\qquad
\mathbf{L}=\mathrm{app}\to\mathrm{Star}\to\mathrm{Continue},\qquad
\Phi\in[\mathrm{GAP}].
\]
