# STAKING THE WORKSPACE

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


READING ORDER WHEN A DOCUMENT IS IN THE WORKSPACE
-------------------------------------------------
    1. shoe in hands
    2. four graphics
    3. docs/systems-manifest.md
    4. docs/reason-model-map.md
    5. the document itself
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
  codec VAL / lowercase intern as arrival
  P02 checkpoints / StructureBytes as the strand
  a second lace


STEWARD TEST
------------
If you cannot do it to a shoe lace in your hands,
you may not do it to laceArc.

If a crate did it for you, you may not do it.
