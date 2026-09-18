# AGENTS.md

You are working in **laceArc**. Load this file as standing orders.

Home: https://github.com/NFDFLDTHRY/laceArc
These orders apply to every local and cloud agent. Claude Code sessions load this file through `CLAUDE.md`; other harnesses must supply or load it explicitly.
Source of record: `docs/graphics/` then `docs/systems-manifest.md`.
Repo law for adjacent documents and future code: `docs/law-why-these-documents.md`.
Read [docs/agent-control.md](docs/agent-control.md) and [docs/agent-task-template.md](docs/agent-task-template.md) before acting on a task. These operating controls remain subordinate to the human-authored law and do not supply missing Core rules.
Return the template's source-specific receipt before proposing Core structure. Follow the law's reading order; record any unavailable source instead of claiming it was read.
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

Guard the model. Do not implement Core until `docs/pointer-emission.md` exists as prose and the human has accepted its exact content. The accepted scope must settle every emission question used by the proposed implementation. File existence, a bot label, a successful check, or a generic instruction to continue is not acceptance.

Work on one assigned task and one branch. Additional agents may review that same task; a designated editor maintains the change set. Do not create another implementation branch before the current task is mathematically stated and proven. Use the task, adjudication, and handoff forms to preserve evidence and unresolved objections.

## Always

1. Open `docs/graphics/README.md` and the four PNGs before proposing structure.
2. Treat Graphic 4 (`data-structure-1d-array.png`) as the only store.
3. Treat Graphics 1–3 as the same rule seen as topology.
4. Cite the graphic or manifest section you are using.
5. Mark `[GAP]` when the source is silent. Do not fill gaps with schema convenience.
6. Keep distinct passes distinct. Ambiguity remaining in 3D is success.
7. Ask before any commit that adds code or types. A second store remains forbidden.
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

Only after that file exists **and the human accepted its exact content** may Core code appear, and it must implement that accepted scope exactly, under Implementation Law. Dependent unresolved gaps still block the affected implementation. Acceptance does not lift any permanent prohibition. A prototype outside `src/` does not bypass the gate.

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

Reason model: `docs/reason-model-map.md` (a shoe lace in the hands). Cited in `docs/references.md` only: Kauffman, Rowlands, Xiao & Zhu (LLMs), Petersen & Zech (DL theory), Bi et al. (AgentScope).
Not source of record. Do not import their axioms into Core. Do not add PDF files to git.
Why they were handed to the Bot: `docs/law-why-these-documents.md`.
