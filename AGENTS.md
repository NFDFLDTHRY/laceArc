# AGENTS.md

You are working in **laceArc**. Load this file as standing orders.

Home: https://github.com/NFDFLDTHRY/laceArc
Source of record: `docs/graphics/` then `docs/systems-manifest.md`.
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

## Never

- Invent when a POINTER is written.
- Intern a word (one row + count).
- Store `PIE = "a dessert..."`.
- Collapse many passes into one edge.
- Split dictionary / document / conversation / provenance into engines.
- Add `src/` to "get something running."

## If asked to implement

Stop. The next honest artifact is `docs/pointer-emission.md` that states:

- when a POINTER is appended
- arity
- whether adjacent WORD rows already constitute a relation
- that refs point only backward on the same line

Only after that file exists may Core code appear, and it must implement that file exactly.

## Adjacent reading

Reason model: `docs/reason-model-map.md` (a shoe lace in the hands). Cited in `docs/references.md` only: Kauffman, Rowlands, Xiao & Zhu (LLMs), Petersen & Zech (DL theory), Bi et al. (AgentScope).
Not source of record. Do not import their axioms into Core. Do not add PDF files to git.
