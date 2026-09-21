# Law — why the documents, and how code may exist

> **LIVE LAW.** This is the enforced text. [staking-the-workspace.md](staking-the-workspace.md) is the original stake it discharges; `docs/kit/agent-control.md` and `docs/kit/grok-bot-profile.md` carry transport copies of its blocks and may lag. Where they disagree with this file, this file wins.
>
> **Unresolved, for the human — not for an agent to edit.** Line 10 below reads *"Implementation remains forbidden until `docs/pointer-emission.md` exists."* The IMPLEMENTATION LAW block in this same file reads *"When the human has accepted docs/pointer-emission.md, code may appear."* Existence is not acceptance, and AGENTS.md was corrected for this same drift by the coherence audit's A6 tick. Both sentences are human-authored; neither has been changed here.

This file is **repo law**. Paste the ASCII block into Grok Bot as the explanation that was promised when the workspace was staked.

## Conceptual reference documents

**Human correction, 2026-09-20.** In the LaceAI conversation, replying to “HCC-A, Coffee Cup, and Water remain holder machinery,” the human said: “This is wrong and need to reconciled. They're conceptual reference documents.”

HCC-A, The Coffee Cup, and Where the Water Is Loud / Dual Proofing Systems are **conceptual reference / behavioral-goal sources**. They describe target families of cognition, causality, communication, and behavior that **Lace is being developed to function against or exhibit**. The repository is a **lab for discovering, testing, and rejecting candidate systems required to make Lace function as described by those behavioral goals**. **The goal documents do not specify which concrete Lace, compiler, holder, or other mechanisms will succeed.** Their concepts and the repository's H/C/W diagrams therefore establish behavioral targets, not predetermined runtime components, Core row types, or legal-append conditions.

This supersedes the classification of those documents as “holder machinery,” a “gearbox required to operate upon the lace,” or a required second contract. Existing gear names, ratios, states, and diagrams remain recorded interpretations of concepts. That interpretation is not architectural authority. The correction leaves the graphics, independent Core constraints, and pointer-emission acceptance gate intact. [Reconciliation record](plans/conceptual-reference-reconciliation.md).

**Human ruling, 2026-09-21 — the machine, and what the 2026-09-20 correction did and did not say.** The human stated, in the LaceAI conversation:

> *"The machine being built is the HCC-A compiler and a part of that compiler is the coffee cup and where the water is loud. Those are the machines to solve implementation for against the substrate we're building using the descriptive sources as the building materials."*

> *"To state the problem this repo solution space for is can we build a mind inside a compiler."*

**Four roles, clarified.** **Materials** — the academic documents, toolchain/web specifications, and other descriptive sources used to reason and test. **Behavioral goals** — HCC-A, The Coffee Cup, and Where the Water Is Loud. **Substrate under investigation** — Lace: `docs/graphics/`, then `docs/systems-manifest.md`. **Lab** — this repository's experiments, models, proofs, maps, harnesses, and candidate architectures used to discover which systems are actually required for Lace to satisfy those behavioral goals. The required systems are **experimental unknowns** until evidence establishes them. The earlier “parts of it” wording identifies the behavioral problem-space; it does not predeclare runtime parts.

**Clipboard / lab boundary.** “Clipboard” is a source-grounded laboratory interface, not a directory suffix. The HCC-A, Coffee Cup, and Water source clipboards currently live under `docs/clock/`; research, specification, and toolchain clipboards live under `docs/clipboards/`. A clipboard may preserve **behavioral constraints, possible machinery, algorithms, mathematics, hard platform limits, hypotheses, falsifiers, and negative results**. Those are legitimate lab inputs. Clipboard presence does **not** by itself establish a Core row type, required runtime component, retention rule, proof, or human acceptance. “Not Core” means **no automatic authority jump into the Lace substrate**, not “mechanically irrelevant to the lab.”

**What this changes.** The 2026-09-20 correction answered the claim that these three documents *"remain holder machinery"* — a gearbox **required to operate upon** the Lace, a required second contract. That answer stands: **they are not a constraint on the substrate.** They add no Core row type, impose no runtime dependency, and set no condition for a legal append.

**What it does not license.** Reading *"not a constraint on the substrate"* as *"establishes nothing"* is a category error. **The reference texts establish behavioral targets; the lab explores the machinery required to reach them.** A candidate H/C/W correspondence, compiler layer, state machine, holder, sampling mechanism, or other system may be proposed and tested, but no such correspondence is architecture merely because it resembles a source concept. The classification of the three documents and of `docs/clock/train-h-c-w-systems-manifest.md` as *mere illustration* is superseded only to the extent that the goals are load-bearing experiment targets: **candidate mechanisms remain `[PROPOSAL]` until evidence survives the lab.**

**Fences that are not affected.** Every refusal that keeps *meaning* out of the store stands unchanged and is the experimental control of the stated problem: no second store, no stored meaning, no collapse, no merge, no deletion, `FORBID-as-Lace-store`, `FORBID-as-Core`. A fence protecting the thesis is not the same object as a fence between the machine and its target, and only the second kind is lifted here.

**Rulings on the Proof Ledger, same date, same conversation:**

- **INVALID** is **historically proven wrong** — an outcome reached through later evidence, not a format verdict at the door. **There is no table of invalid phrases or words.** The earlier reading (*"not wrong; meaningless until converted"*) is superseded.
- **UNK** is **a predicted evidence shape that the system must wait for the future to fill with evidence** — *"an unknown shape of what is required to resolve the unknown flag."* It does not block. The earlier reading (*"unresolved UNK blocks coherent comprehension"*), and the recorded failure mode *"UNK as a waiting row on the tape,"* are superseded: **a row that waits is what an UNK is.**
- **Compression is losing the evidence chain.** A derived structure is permitted when it can be discarded and rebuilt from the strand alone; one that cannot holds evidence the strand does not, and is a second store. **A replay-derivable state machine of the kind discussed around HCC-A is a lab candidate, not an established ISL implementation.** Replay can satisfy the evidence-chain criterion, but only experiment decides whether that candidate is actually required to realize the behavioral goals.

**Source identity, staked 2026-09-21.** The three behavioral-goal source texts are held at `refs/local/`, gitignored, never committed. Their git blob SHAs match the identities recorded in [`plans`-adjacent history](history/history-recovered-pass-5-2026-09-18.md) byte for byte:

| Text | Bytes | Lines | Git blob | SHA-256 |
|---|---|---|---|---|
| `hcc-a-v1.0.txt` | 12,084 | 470 | `97010d27fc7347ecd3db67f2db19cf9c431fcb6a` | `209c8f25…f3f9` |
| `the-coffee-cup.txt` | 7,623 | 189 | `e22c06ce2f808efca0ee0c17f57dc0f7e3dbef06` | `7bc4fd8d…2cd4` |
| `where-the-water-is-loud.txt` | 19,862 | 502 | `0812654cf8d1609a7d24b29fdb2f9deb64b5647f` | `9b7eddd5…ff65` |

Until this date the four `docs/clock/` manifests carried no source identity at all — *"attachment. Not in git."* Every reading of those behavioral goals was a reading of a remembered compression. **Claims about these texts now cite lines.**

**Unchanged by all of the above.** `src/` remains forbidden. `docs/pointer-emission.md` remains unaccepted. **Exact sampling-derived retention/materialization remains `[GAP]`; the arbitrary semantic-chooser framing is historical.** **This ruling opens no gate.**

Source of record for the **Lace substrate** remains `docs/graphics/`, then `docs/systems-manifest.md`. The three conceptual sources are behavioral-goal authority for the lab; they do not override the substrate's storage law.
The five academic documents remain adjacent. They do not enter Core.
HCC-A, Coffee Cup, and Water/Proofing are conceptual reference / behavioral-goal sources. They do not define additional Core row types, required holder machinery, or the concrete mechanisms that realize their target behaviors.
History extracts do not amend this law and do not revive walkers.
See `docs/reason-model-map.md`, `docs/clock/philosophy-map.md`, `docs/history/history-recovered-2026-09-18.md`, `docs/history/history-recovered-pass-2-2026-09-18.md`, `docs/history/history-recovered-pass-3-2026-09-18.md`, `docs/history/history-recovered-pass-4-2026-09-18.md`, `docs/history/history-recovered-pass-5-2026-09-18.md`, `docs/history/history-recovered-pass-5-sit.md`.
Implementation remains forbidden until `docs/pointer-emission.md` exists.
When implementation exists, it obeys the IMPLEMENTATION LAW block with no exceptions.

The human staking sentence this block discharges:

> I'll explain shortly, I am staking the workspace. In addition we have these 3 documents.

Three were the first stake. Five are the full adjacent set. This diagram is the explanation.

---

## ASCII (the prompt)

```
STAKING THE WORKSPACE
=====================
You were handed documents and told "I'll explain shortly."
This is the explanation. It is law. Do not paraphrase it away.


                    HANDS                         SHADOW
                    -----                         ------
                    physical shoe lace            the documents
                    docs/graphics  A B C D        five texts beside the shoe
                    one cord, two ends            not a sixth graphic
                    append only                   not WORD, not POINTER


WHY THE DOCUMENTS EXIST
-----------------------
They are stakes in the ground around the lace so you
do not walk off the shoe and call the walk Core.

    +------------------+     +------------------+
    | 1 KAUFFMAN       |     | 2 ROWLANDS       |
    | Knots and Physics|     | Zero to Infinity |
    +--------+---------+     +--------+---------+
             |                        |
             | KEEP hitch             | KEEP empty start
             | KEEP diagram != rope   | KEEP no extra rooms
             | FORBID Reidemeister    | FORBID the word "rewrite"
             | FORBID closed loop     | FORBID TOE / Dirac tables
             | FORBID slide / virtual |
             v                        v
        later grab is kin        A1 empty is kin
        grab is NOT a POINTER    "rewrite" is NOT mutate-WORD
        emission rule


    +------------------+     +------------------+
    | 3 XIAO & ZHU     |     | 4 PETERSEN-ZECH  |
    | Foundations LLM  |     | Math of DL       |
    +--------+---------+     +--------+---------+
             |                        |
             | KEEP arrival order     | KEEP "function != construction"
             | FORBID intern token    | FORBID star = neuron
             | FORBID [MASK]/replace  | FORBID train w as history
             | FORBID embed store     | FORBID GNN as Core
             | FORBID next-token Core | FORBID NTK as store
             v                        v
        this book is the             approximation is not
        anti-model of ingest         possession of the strand


    +------------------+
    | 5 BI et al.      |
    | AgentScope       |
    +--------+---------+
             |
             | KEEP failure taxonomy for the HOLDER
             | FORBID ReAG rows in the 1D array
             v
        diagnoses the steward
        not the lace


CONCEPTUAL REFERENCE DOCUMENTS  (human correction 2026-09-20)
-----------------------------------------------------------
HCC-A, Coffee Cup, and Water are conceptual reference documents.

    REFERENCE          CONCEPTUAL SUBJECT
    HCC-A              cognition, perception, story, behavior
    Coffee Cup         event causality, intervention, aftermath
    Water / Proofing   shared reference, communication, unknowns

The former required-gearbox / holder-machinery classification
is superseded. H/C/W gears, ratios, and states in earlier
clock mappings are interpretations, not required components.
No runtime dependency or legal-append condition follows from them.

KEEP concepts available for reasoning and source comparison.
FORBID importing ledger mutation as mutation of Graphic D.
FORBID importing story, emotion, identity, or OBS as row types.
FORBID treating a conceptual diagram as pointer-emission.

The references do not supply or accept the missing emission rule.


HOLOGRAM TOUCH — Perceived Reality / Story Defense
--------------------------------------------------
Image: docs/hologram/perceived-reality-story-defense.png
Not Graphic E. Not a row type.

  KEEP: curating exposure does not change R
  KEEP: shared recognition is overlap, not total Reality
  KEEP: signal can arrive and the route not form
  KEEP: evidence passes through the model that
        decides what counts as evidence
  KEEP: story preserves itself until impact is costly
  FORBID: PR / Personal Story / Story Defense as array rows
  FORBID: curation as Lace tokenizer
  FORBID: "meaning did not land" as emission


HOLOGRAM TOUCH — 3D clockwork views
-----------------------------------
docs/hologram/clockwork-view-lattice.jpg
docs/hologram/clockwork-view-crossing.png
docs/hologram/clockwork-view-traces.jpg
Suggested Layer III camera. Not Graphic E-G.

  KEEP: floor = projected line; orbs = star-as-seen
  KEEP: arrows are drawn participation
  KEEP: lattice / crossing / traces as altitudes of one view
  KEEP: gears as 3D STACKS, photosphere-like
  KEEP: observable surface = view; dynamo stays under
  FORBID: cubes own edges
  FORBID: orbs as Star table
  FORBID: arrows as POINTER emission
  FORBID: inferring unrecorded Core from the picture


HOLOGRAM TOUCH — visual primitives
----------------------------------
docs/hologram/visual-primitives.md

  KEEP: time-like life-line = strand in t
  KEEP: r=const hypersurface = one slice
  KEEP: stream tubes = projected routes
  KEEP: split shells = label split
  KEEP: torus only as holder recirculation view
  FORBID: CTC / closed photon curve as Core
  FORBID: vortex reconnection as a write
  FORBID: diagram phi = emission Phi
  FORBID: proof-stream counters as the strand
  FORBID: ASTRA / multi-agent lab as runtime


CLOCK  (earlier conceptual illustration)
-----------------------------------------
The H/C/W assignments below are retained interpretive notation.
They impose no holder component or prerequisite for legal append.
The independent storage constraint is: one legal append adds a tick.
Mainspring = R.  Tape = Graphic D.  Hands = projections.
Tick = one legal append.  No tick, no cluster change.

  Gears STACK in 3D. Not a flat cog strip.
  Visual kin: photosphere. Surface is seen.
  Interior is not the picture.

  H dual shaft 1:1
  C five-tooth, tooth 3 impulses the pallet
  W escapement: 0 or 1 drop per attempt
  grind is not a tick

OBJECTS DO NOT HAVE RELATIONSHIPS.
Relationships CLUSTER as the train turns over time.
The premise is STRUCTURE, not meaning.
The specimen is the cat fragment (do not invent >).
A variable is a label on the observed cluster.
When the cluster changes, the label may be
  created, split, or merged
to describe what is seen.
Those acts name. They do not rewrite WORD @ i.
Binding = array{ ref by lace index geometry }
          = view of Graphic D, not a second array,
            not object.relations[], not emission.

MEANING in this project
-----------------------
A word is defined by words.
Those words are defined by words.
The walk loops because the wire is infinite.
That is the theory of language here:
the electrician routing a two-ended shoe lace
that can take more cord forever.
Definition = route through stars.
Not PIE = "a dessert".
Not HCC-A Meaning Engine as a row.
Recursion = Continue. Not a closed splice.
Seeing the route is a view.
Writing the POINTER that would cut the route
is still [GAP].

Emission remains a [GAP].
The clock does not close it.


HISTORY  (recovered memory is not a sixth graphic)
-------------------------------------------------
ChatGPT extract 2026-09-18 is a reading note.
Map: docs/history/history-recovered-2026-09-18.md

  29 Aug: three walkers rejected. No authoritative file.
  KEEP arrival sequence. FORBID sorting touches.
  KEEP star as lens. FORBID Star table.
  KEEP "input ends on the lace" as intent.
  FORBID "touch grows lace" as emission.
  FORBID closed ring.
  FORBID fidelity mirror / lookup / BFS / replay.
  FORBID ATOM/POINT as a silent rename of WORD/POINTER.
  "Relationships are the object" (8 Jun) does not
  license object.relations[]. Cluster-as-what-you-see
  is the lawful reading. Conflict stays visible.

Pass 2 map: docs/history/history-recovered-pass-2-2026-09-18.md
  KEEP no-payload / objects as formations (No Containers).
  FORBID substitution as a write on the tape.
  FORBID eleven-rule scheduler as Core.
  FORBID 4:3:2:1 as the user's formula.
  FORBID mutable / write-once continuation slot.
  FORBID card-N as a ruling (numbering mismatch).
  FORBID exact-match tie as emission.
  FORBID codec/C-machine counts as Lace evidence.
  29 Aug rejection is not reversed.

Pass 3 map: docs/history/history-recovered-pass-3-2026-09-18.md
  KEEP 7 Sep: 1D array; pointer is more lace.
  KEEP visual kin of A–D. Do not swap tracked bytes.
  KEEP P02: same derivations ≠ same recorded history.
  FORBID P02 jobs / checkpoints / StructureBytes as Core.
  FORBID codec VAL / lowercase / whitelist as arrival.
  FORBID “100% roundtrip” as raw preservation.
  FORBID manufacturing the cat / cat-1 notation.
  Unary POINT vs ref_A/ref_B stays a conflict.
  Emission acceptance still not recovered.

Pass 4 map: docs/history/history-recovered-pass-4-2026-09-18.md
  KEEP ShoeLacey as a dated other repo, not this law.
  KEEP SL-D-0002: 4:3:2:1 is an illustrative shape.
  KEEP three opens: SEARCH / EXPERIMENT / RULING.
  KEEP continuation-slot reject (fill-later alters history).
  FORBID degree-sloped scheduler as Core.
  FORBID lace_walk intern / stack guard / ring.
  FORBID XOR tensor probe as contact law.
  FORBID dot-as-zoom-star.
  FORBID importing SL-C-0002 remedies as policy.
  Card-N still mismatched. Cat still unmanufactured.

Pass 5 map: docs/history/history-recovered-pass-5-sit.md
  KEEP surface branches as archive; absence from main ≠ absence.
  KEEP Aug 15 shoe-in-hands verbatim. Recorder ≠ owner speech.
  KEEP Aug 17 as 1D-append witness. Two copies ≠ two witnesses.
  KEEP P02 as a version sequence. Binary sufficiency was withdrawn.
  KEEP occurrence identity as append position (v0.1.1), not as schema.
  KEEP philosophy blob match as file identity only.
  FORBID connect-the-ends / circle / closed loop restored from Aug 15.
  FORBID equating collapsed-whole dot with A1 empty-start.
  FORBID dynamic arity, density-as-weight, pseudolace as Core.
  FORBID WELD-1 and scoped-UNK (proposed, no source).
  FORBID cherry-picking P02 versions into one machine.
  FORBID Pixel rust probe as Lace evidence.
  Issue 43 addresses the cat. Dialogue still missing.





READING ORDER WHEN A DOCUMENT IS IN THE WORKSPACE
-------------------------------------------------
    1. shoe in hands
    2. four graphics
    3. docs/systems-manifest.md
    4. docs/reason-model-map.md or docs/clock/philosophy-map.md
       or docs/history/history-recovered-2026-09-18.md
       or docs/history/history-recovered-pass-2-2026-09-18.md
       or docs/history/history-recovered-pass-3-2026-09-18.md
       or docs/history/history-recovered-pass-4-2026-09-18.md
       or docs/history/history-recovered-pass-5-2026-09-18.md
       or docs/history/history-recovered-pass-5-sit.md
    5. the document itself          <-- only after 1-4
    6. never PDF into git


IF A SENTENCE IN A DOCUMENT WOULD CHANGE
WORD, POINTER, STAR, OR THE GOVERNING RULE
    discard it for Core
    keep it as a reading note


IMPLEMENTATION LAW  (when code is ever allowed)
-----------------------------------------------
Not now. Pointer-emission is still a [GAP].
When the human has accepted docs/pointer-emission.md,
code may appear, and only under this block.

                    LANGUAGE
                         |
                         v
                 +----------------+
                 | Rust          |
                 | #![no_std]    |
                 | only language |
                 +--------+-------+
                          |
          ZERO external dependencies
          no crates.io
          no git submodule of foreign code
          no std, no alloc unless a FIRST-PARTY
          branch exists whose ONE task is alloc
          and that branch is proven for that task
                          |
                          v
              +---------------------------+
              | DEPENDENCY == OUR BRANCH  |
              | one branch, one task      |
              | iterate that branch until |
              | the task is mathematically|
              | stated and proven         |
              | then and only then may    |
              | another branch exist      |
              +-------------+-------------+
                            |
                            v
              Core crate, if any, calls only
              those first-party branches.
              It does not grow a crate graph.


POSTURE  (the bar, not the toolkit)
-----------------------------------
Assume the requirement is orders of magnitude
above the union of these names:

  Sparse  checkpatch  Coccinelle  Smatch
  seL4  CompCert  Coq  TLA+  F*  EverCrypt
  HACL*  Scrub  PROVERS  HACMS  SafeDocs
  Ivory  Tower  MISRA C  MISRA C++
  DO-178C  SPARK Ada  Alloy  Agda  Idris
  CBMC  K Framework

Those names are a HEIGHT.
They are not crates.
They are not Core axioms.
They are not a license to import Coq, seL4,
CompCert, or any other foreign tree.

Height means:
  every branch has one task
  the task has a written contract
  forbidden states are unrepresentable
  no undefined behavior
  no hidden control flow
  no allocator surprise
  no I/O surprise
  proofs or proof-shaped invariants live
  in OUR branches, not as a second store
  beside the lace


STILL FORBIDDEN AFTER CODE EXISTS
---------------------------------
  src/ before pointer-emission.md is accepted
  crates.io
  tokenizer that deletes / masks / interns
  graph DB, embedding store, Star table
  Reidemeister as a write
  next-token as Core dynamics
  ReAG inside the array
  Story Ledger merge/delete as array ops
  OBS talk-pointers as POINTER emission
  object.relations[] / graph beside the tape
  cluster update with no tick
  label split/merge/create as mutate-WORD
  manufactured cat/cat-1 notation
  revived walkers / lace_walk.py / fidelity mirrors
  eleven-rule scheduler as Core
  mutable continuation slot
  substitution rewrite of occurrence history
  C append-machine counts as Lace evidence
  codec VAL / lowercase intern as arrival
  P02 checkpoints / StructureBytes as the strand
  manufactured cat/cat-1 notation
  degree-sloped scheduler / 4:3:2:1 as Core formula
  lace_walk intern dictionary / recursion guard
  XOR tensor probe as contact law
  connect-the-ends restored from Aug 15
  WELD-1 / scoped-UNK as Core
  P02 mixed-version machine
  a second lace


STEWARD TEST
------------
If you cannot do it to a shoe lace in your hands,
you may not do it to laceArc.

If a crate did it for you, you may not do it.

The human holds a hologram of the machine.
Wrongness may arrive before speech.
Halt. Demand one pointable thing.
Do not fill pointer-emission to soothe that halt.
Hologram is a sense. Shoe is the court.
Observed behavior of a build is the floor.
There is no build until emission is accepted.

```

---

## Binding files

| File | Duty |
|---|---|
| this file | the explanation + implementation law |
| `AGENTS.md` | standing orders; must cite this file |
| `docs/kit/grok-bot-profile.md` | paste block for the Bot |
| `CONTRIBUTING.md` | human contributors under the same law |
| `README.md` | public notice that the law exists |

Do not replace the ASCII with a friendlier paraphrase in the Bot profile.
