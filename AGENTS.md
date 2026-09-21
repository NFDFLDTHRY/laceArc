# AGENTS.md

You are working in **laceArc**. Load this file as standing orders.

Home: https://github.com/NFDFLDTHRY/laceArc
Claude Code sessions load this file through [`CLAUDE.md`](CLAUDE.md). These orders are the authority; that file is a pointer.
Source of record: [`docs/graphics/`](docs/graphics/) then [`docs/systems-manifest.md`](docs/systems-manifest.md).
Repo law for adjacent documents and future code: [`docs/law-why-these-documents.md`](docs/law-why-these-documents.md).
There is no `src/` yet. That is intentional.

```
LACEARC  —  one strand, one rule, one store

  INPUT WORD ARRIVES
          |
          |  punch-card: keep order, do not parse away, do not discard
          v
   +------------------+     append-only 1D array
   | WORD @ index i   |  value = the variable = the word
   +--------+---------+
            |
            |  route new wire through that word's STAR
            |  first occurrence begins the star
            |  later occurrence THREADS existing formation
            v
   +--------------------------------------+
   | STAR(word)                           |
   | not a row, not a node, not a sense   |
   | accumulated passes through same var  |
   +------------------+-------------------+
                      |
                      |  wire continues to next word
                      v
                   CONTINUE
                      |
      later arrival may append POINTER @ j
                      |
                      |  refs only EARLIER indices
                      |  POINTER may ref WORD or POINTER
                      v
   +--------------------------------------+
   | PARTICIPATION                        |
   | word->word                           |
   | relation->relation                   |
   | later touch re-enters earlier Lace   |
   | this IS higher-D — not extra storage |
   +--------------------------------------+

   READS (shadows)                      FORBIDDEN WRITES
   ---------------                      ----------------
   1D sequence                          delete / rewrite / reset / cut
   2D node-edge graph                   stored definition / meaning table
   3D star visualization                Star table beside the array
                                        graph DB / embedding store as authority
                                        N-dimensional storage
                                        second Lace

   GEOMETRY RULE
   Input word arrives. Route new wire through that word's star. Continue.

   STORAGE RULE
   Input arrives. Append a new section to the Lace.
   Use pointers to participate in what already exists.
```

## Job

Guard the model. [`docs/pointer-emission.md`](docs/pointer-emission.md) now exists as a **reconciled but unaccepted** draft. Do not implement Core until the human has accepted its exact content and every premise required by the assigned implementation task is resolved. Current human rulings make sampling the relationship-discovery mechanism; do not invent the still-open sampling-derived retention/materialization rule in code.

## Always

1. Open [`docs/graphics/README.md`](docs/graphics/README.md) and the four PNGs before proposing structure.
2. Treat Graphic 4 ([`docs/graphics/data-structure-1d-array.png`](docs/graphics/data-structure-1d-array.png)) as the only store.
3. Treat Graphics 1–3 as the same rule seen as topology.
4. Cite the graphic or manifest section you are using. Where an identifier could belong to another family — `A5` is a Graphic panel, a gear tooth and an audit station — qualify it: see [`docs/namespace-register.md`](docs/namespace-register.md).
5. Mark `[GAP]` when the source is silent. Do not fill gaps with schema convenience.
6. Keep distinct passes distinct. Ambiguity remaining in 3D is success.
7. Ask before any commit that adds code, types, or a second store.
8. Treat [`docs/law-why-these-documents.md`](docs/law-why-these-documents.md) as law for why adjacent texts exist and how code may exist.
9. Deploy Layer III HTML only by [`docs/kit/githack-pwa-deploy.md`](docs/kit/githack-pwa-deploy.md): `rawcdn.githack.com` + full commit SHA + app path. Never `main`. Never GitHub Pages. A new commit is a new install URL.

## Never

- Reintroduce an arbitrary semantic relation chooser, invent a sampling-derived retention/materialization rule, or substitute an alternate POINTER constructor.
- Intern a word (one row + count).
- Store `PIE = "a dessert..."`.
- Collapse many passes into one edge.
- Split dictionary / document / conversation / provenance into engines.
- Add `src/` to "get something running."
- Import Kauffman, Rowlands, Xiao–Zhu, Petersen–Zech, or AgentScope as Core operators.
- Add crates.io, git submodules of foreign code, `std` as a silent default, or any language other than Rust `no_std`.
- Treat Coq, seL4, CompCert, or any name in the posture list as a crate to vendor.
- Treat GitHub Pages or floating `main` githack as an install host.

## If asked to implement

Stop unless the implementation gate is actually open.

The current [`docs/pointer-emission.md`](docs/pointer-emission.md) is **reconciled but not accepted**. Its current constructor surface records:

- every successful word arrival appends WORD
- unseen WORD becomes the root
- seen occurrence RootTouches the root
- POINTER is binary `Join(a,b)`
- both operands are ordered earlier same-line WORD/POINTER points
- repeated Join grounds finite selected samples
- adjacency alone does not emit

The remaining Core-adjacent gap is the **exact sampling-derived retention/materialization condition**: when discovered structure becomes a retained POINTER and how an ephemeral sampled structure becomes an addressable operand when retention needs one. Sampling is derived working machinery, not a second store; do not hide retention policy in Contract II, derive it from semantics/similarity, or create a Core query/write API to soothe the halt.

Recording or reconciling prose is not acceptance. Only after the human has accepted the exact pointer contract **and** the assigned task's other required premises/authorization are resolved may Core code appear, under Implementation Law.

## Implementation Law

When code exists it is only:

- Rust
- `#![no_std]`
- zero external dependencies
- every dependency is a first-party branch we create
- one branch, one task
- iterate the branch until that task is mathematically stated and proven
- then and only then may another branch exist

Posture is orders of magnitude above the union of Sparse, checkpatch, Coccinelle, Smatch, seL4, CompCert, Coq, TLA+, F*, EverCrypt, HACL*, Scrub, PROVERS, HACMS, SafeDocs, Ivory, Tower, MISRA C, MISRA C++, DO-178C, SPARK Ada, Alloy, Agda, Idris, CBMC, K Framework.

Those names are a height. They are not Core. They are not dependencies. Proofs live in our branches, not as a second store beside the lace.

Full ASCII: [`docs/law-why-these-documents.md`](docs/law-why-these-documents.md).

## Coordination

Multi-agent claim/release for docs and gearing shafts: [`docs/coord/README.md`](docs/coord/README.md).
Entrypoint: [`./docs/coord/coord.sh`](./docs/coord/coord.sh) (doc stations + `gear:*` → [`docs/gearing/claim.sh`](docs/gearing/claim.sh)).
Paste-ready: [`docs/prompts/coord-protocol-prompt.md`](docs/prompts/coord-protocol-prompt.md).

Before editing: pull ff-only → `which` → `claim` → edit only owned paths → `check` → commit → `release`.
Docs-only work does not need a gearing shaft claim. Steward may `doctor --auto-clear "<AgentName>"` when RESYNC is stuck FIRED and everything is FREE.

## Adjacent reading

**Context pass — read next, before any task:** [`docs/prompts/context-pass.md`](docs/prompts/context-pass.md). The same story for every agent and every model; the door to the twenty-one documents a builder reads; the failure modes this tree has already produced. Added 2026-09-19 on the human's instruction (*"all agents need to see the same story in the repo"*).

Reason model: [`docs/reason-model-map.md`](docs/reason-model-map.md) (a shoe lace in the hands). History: [`docs/history/history-recovered-2026-09-18.md`](docs/history/history-recovered-2026-09-18.md), [`docs/history/history-recovered-pass-2-2026-09-18.md`](docs/history/history-recovered-pass-2-2026-09-18.md), [`docs/history/history-recovered-pass-3-2026-09-18.md`](docs/history/history-recovered-pass-3-2026-09-18.md), [`docs/history/history-recovered-pass-4-2026-09-18.md`](docs/history/history-recovered-pass-4-2026-09-18.md), [`docs/history/history-recovered-pass-5-sit.md`](docs/history/history-recovered-pass-5-sit.md). Ancestry and rejected walkers. Do not revive lace_walk.py, intern dictionaries, recursion guards, mirrors, lookups, BFS closures, sorted touches, closed rings, eleven-rule or degree-sloped schedulers, mutable continuation slots, XOR tensor probes, or C-machine metrics. Do not restore connect-the-ends from the August 15 ruling. Do not treat “touch grows lace” or exact-match ties as pointer-emission. Do not treat D06 substitution as a write. Do not treat codec roundtrip or P02 StructureBytes as possession of the strand. Do not cherry-pick P02 versions. Do not import WELD-1 or scoped-UNK. Do not manufacture cat/cat-1. Do not swap graphics bytes because a recovered PNG matches the picture. ShoeLacey (`cda3bb34` and its surface branches) is a dated other repo, not this law.
Clock: objects do not have relationships. The premise is structure. Clusters form as the train ticks. Gears STACK in 3D (photosphere-like surface; dynamo not the picture). The 2D H→C→W strip is a flatten. A variable is a label on observed index geometry of Graphic D — a view, not a second array, not relation selection. When the observed cluster changes, the label may be created, split, or merged. Those acts name. They do not rewrite WORD @ i. The cat fragment is the specimen; do not invent `>`. Project meaning is a word defined by words, recursively, on an infinite two-ended wire. That is the electrician routing the shoe lace. It is not HCC-A M and not a closed splice. Seeing a definition-route is a view; it does not choose an arbitrary Join relation. **Sampling-derived retention/materialization remains `[GAP]`; the arbitrary semantic-chooser framing is historical.**
**Conceptual references, corrected by the human on 2026-09-20:** HCC-A, The Coffee Cup, and Where the Water Is Loud / Dual Proofing Systems are conceptual reference documents about cognition, causality, and communication. The former required-gearbox / holder-machinery classification is superseded by [`docs/law-why-these-documents.md`](docs/law-why-these-documents.md#conceptual-reference-documents). [`docs/clock/philosophy-map.md`](docs/clock/philosophy-map.md) and the clock diagrams are interpretations of their concepts. H/C/W labels do not establish required holder components, runtime dependencies, or legal-append conditions. Ledger mutation and OBS remain excluded as Graphic D operations or row types. Conceptual analogy does not supply pointer emission.
Hologram touch [`docs/hologram/perceived-reality-story-defense.png`](docs/hologram/perceived-reality-story-defense.png): overlap is mesh; story defense is PFC-wins; “signal arrives, meaning does not” is a missing route in the other holder, not emission.
Cited in [`docs/references.md`](docs/references.md).
Not source of record. Do not import their axioms into Core. Do not add PDF files to git.
Do not treat Story Ledger merge/delete, Meaning Engine weights, or OBS talk-pointers as Graphic D.
The human holds a hologram of the machine. Wrongness may arrive before speech. Halt. Demand one pointable thing. Do not invent the remaining retention/materialization rule or pretend the reconciled pointer draft is accepted to soothe the halt. Shoe in hands is the court; the hologram is not a Meaning Engine and not a license to build.
Why documents were handed to the Bot: [`docs/law-why-these-documents.md`](docs/law-why-these-documents.md).
