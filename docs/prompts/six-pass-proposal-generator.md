# Six-pass proposal generator — one sentence in, an iteration out

Layer III steward prompt. Not Hands. Not law. Not Core. Emission remains `[GAP]`. No `src/` from a prompt.

**What this is.** The tree's measured iteration shape ([`verification-iterations.md`](../plans/verification-iterations.md)) and its task form ([`agent-task-template.md`](../kit/agent-task-template.md) §1) as a generator: paste it with the human's convening sentence, and the agent returns an iteration board and six pass-plan files in the cadence — **plans only, nothing executed**. Worked instance: [the reduction](../plans/reduction-pass-1-plan.md).

---

```
╔══════════════════════════════════════════════════════════════════════════════════╗
║  SIX-PASS PROPOSAL GENERATOR  ·  NFDFLDTHRY/laceArc                              ║
║  input : one convening sentence from the human, verbatim, with date              ║
║  output: docs/plans/<campaign>-iteration-plan.md + <campaign>-pass-{1..6}-plan.md ║
║  status of every output: PLAN  ·  nothing runs until the human says proceed      ║
╚══════════════════════════════════════════════════════════════════════════════════╝

  STEP 0  PIN.        git pull --ff-only; record the commit; claim maps; one station per commit.
  STEP 1  QUOTE.      The human's sentence, verbatim, dated. Split it into clauses;
                      each clause is carried to exactly one pass. Nothing is paraphrased away.
  STEP 2  MEASURE.    Before proposing anything, measure the tree for the subject:
                      counts, line ranges, closures, dates. Numbers, with the method beside them.
                      Expect this measurement to be wrong once (pass 1 is written twice, 4 of 4).
  STEP 3  ONE QUESTION per pass. A pass determines exactly one proposition.
  STEP 4  THESIS that can lose, per pass, with the FALSIFIER named in the plan.
  STEP 5  STEPS  (2a…2f): what each reads, what each writes.
  STEP 6  MAY WRITE (exact files, one station)  ·  MUST NOT (the law + the task's own risks).
  STEP 7  EXPECTED vs ACTUAL (NOT_TESTED)  ·  PHYSICAL (NOT_PERFORMED unless a cord or a PNG)
          ·  HUMAN ACCEPTANCE (ABSENT for a plan).
  STEP 8  STOP condition, observable.
  STEP 9  The six roles, fixed:
             1  the board      measure; thesis; falsifier                       maps
             2–4 the work      one question each; read-only off your stations   where it lives
             5  the rulings    prepared, never taken by the agent that wrote it human
             6  the receipt    coverage as fractions; what grew; next board     maps
  STEP 10 RETURN the board + six plan files + README rows. Then stop. Say proceed is the human's word.

  RULES MEASURED FROM PRACTICE (do not re-derive)
    probe before you scope · state the thesis so it can lose · coverage is a fraction
    a count that dissolves on reading is the finding · correct in the open
    findings into a maps-owned record, never another campaign's file
    name your own tooling failures · one station per commit · Plan → Proceed → Commit

  STAMPS (on the sentence, not the document)
    origin LAW|SOURCE|INFERENCE|PROPOSAL · state NOT_TESTED|NOT_RUN|BLOCKED|OBSERVED|REFUTED|UNESTABLISHED|PROVED_WITHIN_SCOPE
    human ABSENT|PRESENT_FOR_EXACT_REVISION|STALE_OR_UNCLEAR · enforcement NOT_CHECKED|ADVISORY|VERIFIED_FOR_NAMED_PATH

  NEVER  fill Φ · add src/ · take a ruling · create a shelf · edit law/graphics/manifest/emission/clipboards
         · treat the convening sentence as acceptance of anything
```

## The form of each pass-plan file

```
# <campaign> — pass N plan: <title>
Status: PLAN · Station · Emission [GAP] · No src/ · Campaign · Pinned · Editor (declared)
## Question (one act)
## Measured before proposing
## Thesis / falsifier
## Steps
## May write / must not
## Expected vs actual
## Stop
## Steward test
```

Sign the commit: `Co-Authored-By: <model> <noreply@…>` and the session or bot id. Unsigned work cannot be assigned work.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A plan is the part you write before you touch the lace. Emission remains `[GAP]`.
