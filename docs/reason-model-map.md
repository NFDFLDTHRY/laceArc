# Reason model: a shoe lace in the hands

Repo description: *Put a shoe lace in your hands or get out of here.*

That sentence is not branding. It is the test for every adjacent text. If a claim cannot be shown on a physical lace — one cord, two hands, eyelets, over/under — it does not enter Core.

Source of record remains `docs/graphics/`. This file only says how five project-resource documents sit on that object.

## The object

A shoe lace in the hands is:

- one continuous strand
- growing only by more cord, never by a second lace
- passed through the same eyelets again and again (a star is an eyelet plus every pass that has gone through it)
- ordered by arrival: the next hole is the next hole
- crossed with over and under that you can feel
- able to grab earlier wraps when later tension arrives (clove-hitch physics)
- visible as a flat lacing chart only as a shadow
- meaningless as a stored gloss: “this is a bow” is not a row beside the bow

What you must not do to that object, and still call it Lace:

- cut it
- untie a pass to tidy the diagram
- replace many passes through one eyelet with one node
- write “PIE = dessert” on a tag and throw the cord away
- put the lace into a graph database and declare the graph the shoe

Knot theory’s Reidemeister moves *untie and retie* while claiming the knot is the same. A lace in the hands that has already been threaded is not the same object after you pull a pass out. Rule Zero is that difference.

```
HANDS                         SHADOW
-----                         ------
cord you can pull             2D lacing chart
eyelet + every pass           labeled node "PIE"
over / under you can feel     unsigned edge
later wrap grabbing earlier   pointer to earlier index
keep wrapping                 append-only array
```

Graphic D is how you write the hands down as a line. Graphics A–C are how the same cord looks when you stop flattening it.

---

## 1. Kauffman — *Knots and Physics* (4ed)

**Where it touches the hands**

Kauffman opens Part I by refusing to start with symbols. He asks for the physics of knots: friction, clove hitch, bowline. “Here is the palpable and practical physics of the knots.” A clove hitch on a post is a lace that, under later tension at A, makes C grab B. That is Graphic B’s “touch participates later” and Graphic D’s pointer to an earlier section, said with rope.

He also states the series theme Lace already borrowed: geometry and symbol, space and sign, language underneath topology.

**Where it leaves the hands**

The book’s main engine is the *diagram* plus Reidemeister I–III (and later virtual / slide moves). Those moves say two diagrams are the same knot if you may twist, poke, and slide crossings. That is ambient or regular isotopy. It is legal topology. It is illegal Lace.

| Kauffman | Hands / Lace |
|---|---|
| Clove hitch, windings, friction | Core-adjacent physics of participation |
| Move Zero / planar deformation | Projection hygiene only |
| Reidemeister I–III as *writes* | Forbidden. That is a cut-and-retie. |
| Bracket, Jones, Yang–Baxter, quantum group | Invariants of the *diagram class*, not of history |
| Gauss code as rewrite of crossings | Looks like POINTER rows; it is a code for a *closed* diagram, not an append-only life |
| Shadow without over/under | Graphic C’s “2D is not the real Lace” |
| DNA strand passage / enzyme switch | Tempting “thread through”; still a topological move, not an append |

**Verdict.** Keep the hitch. Keep “diagram is not the rope.” Do not keep Reidemeister as a Core operator. Pointer emission is not “apply move II.”

---

## 2. Rowlands — *Zero to Infinity*

**Where it touches the hands**

The empty lace: A1 in Graphic A, no words yet, one strand with no structure. Rowlands insists the start is zero, one process, no model-dependent extra machinery. He rejects “multidimensional space-time strings or membranes” as a *foundational store* — the same refusal as Graphic D’s “no N-dimensional storage.” Extra dimensions, if they appear, must be explained as participation of what already exists, not as new rooms.

“Nothing complicated remains unexplained” is the same pressure as “the entire mechanism in one simple rule.”

**Where it leaves the hands**

His *rewrite system* generates alphabets from zero totality: assume R, force R*, recover zero. That “rewrite” is generative algebra, not editing the cord. If a reader hears “rewrite” as “update the WORD row,” they have inverted Rule Zero.

Nilpotent Dirac packaging, quaternion vacuum, Higgs-from-zero-point, cosmology — none of that is on a shoe. Importing it would make Lace a physics TOE with a lace sticker.

| Rowlands | Hands / Lace |
|---|---|
| Start from empty / zero | Graphic A panel 1 |
| One process, no extra-dimensional store | Graphic C header + Graphic D |
| Rewrite as generate-from-zero | Not rewrite-in-place. Do not name it rewrite in Core. |
| String/membrane as foundation | Explicitly rejected there; rejected here |
| Nilpotent / Dirac / particle tables | Off the shoe |

**Verdict.** Kinship of *minimal process* and *empty start*. Not a source for WORD or POINTER. Do not let “rewrite” leak into AGENTS.md.

---

## 3. Xiao & Zhu — *Foundations of Large Language Models*

**Where it touches the hands**

Arrival is a sequence. Positions have order. That is 1D presentation (Graphic C panel 2): before / after on one wire.

**Where it leaves the hands**

Almost immediately. The book’s primitive is the *token in a vocabulary*, interned, embedded, optionally masked, deleted, replaced, or predicted. Training *minimizes surprise of the next token*. Inference *samples* a continuation.

A lace in the hands does not predict the next eyelet. It is put through the next eyelet. The occurrence is kept. Nothing is masked. Two passes of “the” are two wraps, not one vocab id with a count.

| Xiao & Zhu | Hands / Lace |
|---|---|
| Token sequence x0…xm | Arrival order only |
| Token = interned vocab atom | Forbidden intern. WORD value repeats; index is new |
| [MASK] / token deletion / random replace | Direct Rule Zero breach |
| Embedding x + e_pos + e_seg | Second store (meaning geometry) |
| Next-token Pr(xi \| x<i) | A projection that *talks about* a lace, not the lace |
| Soft prompt / pseudo-embeddings | Tags glued beside the cord |
| Alignment / RLHF as preference over strings | A steward policy, not Core |

**Verdict.** This book is what Lace is *not*, written clearly. Use it as the anti-model for tokenization [GAP] 1: whatever the tokenizer is, it may not delete, mask, or intern-in-place. CC BY-NC: cite, do not re-license into Apache Core.

---

## 4. Petersen & Zech — *Mathematical theory of deep learning*

**Where it touches the hands**

Almost nowhere as physics. The honest contact is negative: people will try to *approximate* the lace with a network because the pictures look like graphs.

**Where it leaves the hands**

A feedforward net is a directed graph of neurons and weights. Universal approximation says some Φ can come close to a function on a compact set. A ReLU net carves affine pieces. Depth helps multiply.

None of that is a cord through an eyelet. A star is not a hidden unit. N-dimensional participation is not width. Training changes weights; Lace forbids changing history.

| Petersen & Zech | Hands / Lace |
|---|---|
| Network as graph of nodes | Graphic C/B “node-edge is a shadow” |
| Approximate a map f | Lace does not store f |
| Loss landscape over weights | Second mutable world |
| Graph neural nets (they omit, but name) | The exact false Core people will reach for |

**Verdict.** Authority for refusing “just train a model of the lace.” Approximation of behavior is not possession of the strand.

---

## 5. Bi et al. — AgentScope (arXiv:2609.02371)

**Where it touches the hands**

Not the lace. The *person holding the lace* — the Grok Bot steward — can drop it, invent a graph, keep talking after the task, or ignore AGENTS.md. AgentScope’s failure modes are diagnoses of that holder.

**Where it leaves the hands**

ReAG is a DAG of agent steps with neural invariants. That graph is a *projection of a trajectory*, the same kind of shadow Graphic C warns about for Lace itself. Putting ReAG *inside* the 1D array would be a second store.

Map the taxonomy onto steward failure, not onto WORD/POINTER:

| AgentScope mode | Steward holding the lace |
|---|---|
| Wrong Context | Treats Kauffman/LLM book as Core |
| Instruction Unfollowing | Adds `src/` or a Star table |
| Insufficient Context | Diagnoses without opening the four PNGs |
| Context Miss | Forgets Rule Zero mid-task |
| Termination Miss | Schedules a routine and keeps emitting code |
| Premature Termination | Stops before reading Graphic D |
| Step Loop | Restates the brief forever |
| Action Mismatch | Says “append-only” then pushes a graph DB |
| Invocation / Execution | GitHub write that is not the assigned file |

**Verdict.** Tooling for the Bot, layered *over* Lace. Neural invariants may check “did the steward violate AGENTS.md?” They must not become Lace invariants implemented as extra rows.

---

## Coupling matrix (what may touch Core)

|  | Strand / Rule Zero | Star as eyelet+passes | POINTER / hitch | Projection vs thing | No stored meaning | Pointer-emission [GAP] |
|---|---|---|---|---|---|---|
| Kauffman hitch / friction | kin | kin | **strong kin** | kin (diagram≠rope) | — | does **not** close the gap |
| Kauffman Reidemeister | **conflict** | collapse risk | conflict | — | — | false solution |
| Rowlands empty + one process | kin | — | — | — | kin (no extra store) | no |
| Rowlands rewrite-from-zero | name clash | — | — | — | — | no |
| Xiao & Zhu sequence | weak kin (order) | **conflict** (intern) | — | — | **conflict** | no (tokenizer is another gap) |
| Petersen & Zech nets | conflict | conflict | — | shadow | conflict | no |
| AgentScope ReAG | — | — | — | steward shadow | — | no |

“Kin” means the physical lace already contains the fact. “Conflict” means importing the text as operator would take the lace out of the hands.

---

## What the five documents do *not* decide

They do not say when a POINTER is written.  
They do not say whether adjacent WORD rows are already a relation.  
They do not license Reidemeister, next-token prediction, or a ReLU star as Core.

The clove hitch is the only imported *image* that already lives on a shoe: later tension participates in an earlier wrap, and the wrap stays. Write that, if you write anything from Kauffman, as a reading of Graphic B/D — not as Bayman’s inequalities copied into the array.

## Steward rule

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.
