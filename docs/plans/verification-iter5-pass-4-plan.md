# Verification iteration 5, pass 4 — what this repo knows that it has not written down

**Status:** `[PLAN]`. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Iteration:** [iteration 5](verification-iteration-5-plan.md). **Prior:** [pass 3 findings](verification-iter5-pass-3-findings.md).

## 0. Why this replaced the planned subject

Pass 4 was scoped as **derivation** — the order between the twelve map documents. **That is mapping IV's easy half.** The hard half is the one the human asked about and the one no instrument in this tree can see:

> **Does anything this repository depends on exist only outside it?**

**The steward could not answer that by checking its own tools**, which is the whole point. A tool search establishes what *this session* can reach; it establishes nothing about what the project relies on. **Absence of a tool is not absence of a dependency.**

**Derivation order moves to pass 6's leftovers queue.** It is stale-able and nobody is blocked on it.

## 1. The tree already names what it is missing — and the set is small

**This is not speculative.** The prefix-device campaign tracked the boundary explicitly, pass by pass:

| Where | What it says |
|---|---|
| `prefix-device-pass-2.md:8` | **"Spoken: session only. Not in-repo. Not acceptance."** |
| `prefix-device-pass-2.md:38` | *"Spoken: don't save original text — SPOKEN — this session — Not in the PNGs. Not in-repo."* |
| `prefix-device-pass-2-plan.md:78` | *"SPOKEN — Human said this in session. Not in-repo. Not accepted."* |
| `prefix-device-pass-3-plan.md:6` | **"SPOKEN: none this tick (chat candidates not written back by the human)."** |
| `prefix-device-pass-4.md:94` | *"No WORD values after seed — later arrivals are not Arrive — **session only**"* |

**Four substantive claims about the Lace model were said by the human in a session, recorded by an agent as known-but-unwritten, and are load-bearing for `Q0` and `Q1`** — the emission questions that gate `src/`.

**That campaign did the honest thing and it is why this pass is possible.** It could have written those claims in as findings. It marked them *session only* instead, which is what makes them findable now.

**And pass 7 then blurred that boundary**, stamping campaign answers `SPOKEN (campaign)` and widening the token's definition in the same commit — already on [the human's docket](verification-iter4-pass-5-findings.md).

## 2. The thesis, stated so it can lose

**This repository has an unwritten dependency set, it is enumerable, and the tree already enumerated most of it.**

**Falsifier:** if reading every `SPOKEN` and *session only* mark shows each one was subsequently written into a document, then the set is empty, the boundary was tracked *and* closed, and the extraction below has nothing to retrieve. **4a decides it by reading all 24 `SPOKEN` files.**

**Second falsifier, and it is the one that matters:** if an extraction returns content, **there is no way to verify it against the repository** — the repo is precisely what does not contain it. **A confabulated memory would enter as unfalsifiable law.** So §3's prompt is written to fail closed, and 4c treats anything it returns as `[PROPOSAL]`, never as `SPOKEN`, until the human confirms it in-repo.

## 3. The extraction prompt

**To be run in a session that has memory access. It is not runnable here** — this session's tool surface has no memory store, confirmed by search rather than assumption.

**Its design constraint is one sentence: a false memory is worse than a missing one**, because this tree's whole discipline is evidence reported at its actual strength, and an invented recollection arrives with no source to check it against.

```text
You have access to my saved memory. I need an extraction, not a summary.

CONTEXT: I run a repository called laceArc — a model of a "Lace": one
append-only 1D array holding WORD and POINTER entries, derived from four
canonical PNG graphics. It has a hard prohibition: no implementation
code until a pointer-emission rule is written AND I have accepted it.

TASK: Return everything in your memory that relates to laceArc, the Lace
model, or my work on it.

RULES — these matter more than completeness:

1. Return ONLY what is actually in memory. If you find nothing, say
   "NOTHING FOUND" and stop. Do not reconstruct, infer, or produce what
   a plausible memory would look like. An invented item is worse than a
   missing one, because there is no source to check it against.
2. Mark each item VERBATIM (I can quote it) or PARAPHRASE (I recall the
   substance, not the words). Never present a paraphrase as a quote.
3. Give provenance for each item: approximately when, and in what
   context, if memory holds it. Write UNKNOWN where it does not.
4. Flag your own confidence per item: HIGH / MEDIUM / LOW.

RETURN, as a table, one row per item:

  ITEM | VERBATIM or PARAPHRASE | WHEN | CONFIDENCE | KIND

where KIND is one of:
  RULING     — a decision I made about how the model works
  PREFERENCE — how I want the work done
  PROHIBITION— something I said must never happen
  VOCABULARY — a term I defined or named
  CORRECTION — something I told an agent it had got wrong
  OTHER

THEN, separately, answer these four directly. They are claims agents
recorded as "said in session, not in repo," and they are the specific
gaps I am trying to close:

  a. Whether input needs to keep the original sentence text, or whether
     pointers into dictionary entries suffice.
  b. Whether later arrivals of a word write new WORD rows, or only
     pointers into the existing star.
  c. What a word is "to the machine" — the variable on its row, or its
     defining pointer cluster.
  d. Anything I have said about WHEN a POINTER is emitted.

For each: what do you have, or NOTHING FOUND. Same rules as above.

FINALLY: list anything in memory that CONTRADICTS the description at the
top of this prompt. Contradictions are the most valuable output here.
```

## 4. What pass 4 does

| | Work |
|---|---|
| **4a** | **Read all 24 `SPOKEN` files.** Which marks were later written into a document and which were not. §2's falsifier |
| **4b** | **Hand the human the prompt** and record here that it was handed over, unrun. This session cannot run it |
| **4c** | **Define the landing rule before anything lands.** Extraction output enters as `[PROPOSAL]` on the law shelf, never as `SPOKEN`, and becomes `SPOKEN` only when the human writes it in-repo — which is [the register's own definition](../namespace-register.md) before pass 7 widened it |
| **4d** | **Say plainly what is unrecoverable.** Anything said in a session with no memory record and no agent note is gone, and the receipt should name that rather than imply completeness |

## 5. What pass 4 must not do

- **Not treat extraction output as evidence.** It is testimony about testimony. `[PROPOSAL]` at best.
- **Not write any extracted claim into `docs/pointer-emission.md`.** Law's, gate-bearing, and the human's alone.
- **Not use the widened `SPOKEN (campaign)`.** This pass uses the original definition: the human wrote it in-repo.
- **Not present the prompt as verified.** It has never been run; its yield is unknown.
- **Not fill `[GAP]`.**

## 6. Accept pass 4 when

All 24 `SPOKEN` marks are read and classified as written-back or still-unwritten; the extraction prompt is handed over and its status recorded as unrun; the landing rule is written before any content arrives; and the receipt names what is unrecoverable instead of implying the set is closed.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

**The steward was asked whether anything was missing and answered by checking its own pockets.** That answers what it is carrying, not what the work needs. The tree, to its credit, had already written down four things it knew it did not have — and nobody had gone to fetch them. Emission remains `[GAP]`.
