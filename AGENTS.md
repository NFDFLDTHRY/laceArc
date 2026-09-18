# AGENTS.md

You are working in **laceArc**. Load this file as standing orders.

Home: https://github.com/NFDFLDTHRY/laceArc
Claude Code sessions load this file through `CLAUDE.md`. These orders are the authority; that file is a pointer.
Source of record: `docs/graphics/` then `docs/systems-manifest.md`.
Repo law for adjacent documents and future code: `docs/law-why-these-documents.md`.
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

Guard the model. Do not implement Core until the pointer-emission rule is written in-repo as prose, not guessed in code.

## Always

1. Open `docs/graphics/README.md` and the four PNGs before proposing structure.
2. Treat Graphic 4 (`data-structure-1d-array.png`) as the only store.
3. Treat Graphics 1–3 as the same rule seen as topology.
4. Cite the graphic or manifest section you are using.
5. Mark `[GAP]` when the source is silent. Do not fill gaps with schema convenience.
6. Keep distinct passes distinct. Ambiguity remaining in 3D is success.
7. Ask before any commit that adds code, types, or a second store.
8. Treat `docs/law-why-these-documents.md` as law for why adjacent texts exist and how code may exist.

## Never

- Invent when a POINTER is written.
- Intern a word (one row + count).
- Store `PIE = "a dessert..."`.
- Collapse many passes into one edge.
- Split dictionary / document / conversation / provenance into engines.
- Add `src/` to "get something running."
- Import Kauffman, Rowlands, Xiao–Zhu, Petersen–Zech, or AgentScope as Core operators.
- Add crates.io, git submodules of foreign code, `std` as a silent default, or any language other than Rust `no_std`.
- Treat Coq, seL4, CompCert, or any name in the posture list as a crate to vendor.

## If asked to implement

Stop. The next honest artifact is `docs/pointer-emission.md` that states:

- when a POINTER is appended
- arity
- whether adjacent WORD rows already constitute a relation
- that refs point only backward on the same line

Only after that file exists **and the human accepted it** may Core code appear, and it must implement that file exactly, under Implementation Law.

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

Full ASCII: `docs/law-why-these-documents.md`.

## Adjacent reading

Reason model: `docs/reason-model-map.md` (a shoe lace in the hands). History: `docs/history-recovered-2026-09-18.md`, `docs/history-recovered-pass-2-2026-09-18.md`, `docs/history-recovered-pass-3-2026-09-18.md`, `docs/history-recovered-pass-4-2026-09-18.md`. Ancestry and rejected walkers. Do not revive lace_walk.py, intern dictionaries, recursion guards, mirrors, lookups, BFS closures, sorted touches, closed rings, eleven-rule or degree-sloped schedulers, mutable continuation slots, XOR tensor probes, or C-machine metrics. Do not treat “touch grows lace” or exact-match ties as pointer-emission. Do not treat D06 substitution as a write. Do not treat codec roundtrip or P02 StructureBytes as possession of the strand. Do not manufacture cat/cat-1. Do not swap graphics bytes because a recovered PNG matches the picture. ShoeLacey (`cda3bb34`) is a dated other repo, not this law.
Clock: objects do not have relationships. The premise is structure. Clusters form as the train ticks. A variable is a label on observed index geometry of Graphic D — a view, not a second array, not pointer-emission. When the observed cluster changes, the label may be created, split, or merged. Those acts name. They do not rewrite WORD @ i. The cat fragment is the specimen; do not invent `>`. Project meaning is a word defined by words, recursively, on an infinite two-ended wire. That is the electrician routing the shoe lace. It is not HCC-A M and not a closed splice. Seeing a definition-route is a view; writing the POINTER remains [GAP].
Philosophy of operating the lace: `docs/philosophy-map.md`. HCC-A, Coffee Cup, Water/Proofing are gears required to operate upon the workpiece. They are not WORD/POINTER. Ledger ops stay inside HCC-A. Clutch (Water) before torque. Phase (Cup) tooth 3 is the work window. Hologram touch `docs/hologram/perceived-reality-story-defense.png`: overlap is mesh; story defense is PFC-wins; “signal arrives, meaning does not” is a missing route in the other holder, not emission.
Cited in `docs/references.md`.
Not source of record. Do not import their axioms into Core. Do not add PDF files to git.
Do not treat Story Ledger merge/delete, Meaning Engine weights, or OBS talk-pointers as Graphic D.
The human holds a hologram of the machine. Wrongness may arrive before speech. Halt. Demand one pointable thing. Do not fill pointer-emission to soothe the halt. Shoe in hands is the court; the hologram is not a Meaning Engine and not a license to build.
Why documents were handed to the Bot: `docs/law-why-these-documents.md`.
