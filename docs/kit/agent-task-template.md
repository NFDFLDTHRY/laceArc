# Lace task, adjudication, and handoff templates

Version 1.0 | Use with the complete `agent-control.md` and the current repository law.

These forms are steward documents. They are not Core data schemas. Fill only observed or assigned facts. A blank required field is a blocker for the action depending on it, not for unrelated authorized work.

## 1. One-task prompt

Start the actual task prompt with this ASCII form, replacing the mechanism labels only with facts or explicitly marked proposals. Never draw a solid causal arrow across an unresolved rule.

```text
CANONICAL SOURCE                 ONE REQUIRED OUTCOME
graphic/panel + prose revision             |
              |                           |
              +-------------+-------------+
                            |
                            v
                  SMALLEST PERMITTED STEP
                  [PROPOSAL, if not accepted]
                            |
                   [GAP? keep it visible]
                            |
                            v
                 COUNTEREXAMPLE / OBSERVATION
                            |
                            v
                  EVIDENCE + BOUNDED VERDICT
```

**Question:** Determine exactly one proposition: `<one sentence>`.

**Repository and base:** `NFDFLDTHRY/laceArc` at `<observed commit>`.

**Active task / branch:** `<existing assigned task and branch, or NOT_ESTABLISHED>`.

**Stage:** `<docs/review only, or exact accepted implementation scope>`.

**Controlling sources:** `<law revision; A/B/C/D panels; manifest sections; relevant reason-map sections>`. Read them. Identify any conflict with prior material. Do not substitute a previous assistant's summary.

**Physical operation:** `<what happens to one cord, what remains intact, evidence source>`.

**Read coverage:** `<files/pages actually inspected; image visibility; unread relevant material>`.

**Allowed files and effects:** `<explicit bounded list>`.

**Forbidden effects:** `<task-specific risks in addition to the full law>`.

**Known gap / conflict:** `<exact missing or incompatible statements; do not resolve by default>`.

**Candidate:** `<minimum prose mechanism or argument; no code before acceptance>`.

**Counterexample:** `<smallest case that would refute the candidate or show unauthorized semantic change>`.

**Expected observation:** `<what distinguishes success from failure; expected evidence format>`.

**Actual evidence:** `<source bytes/revision, action, result, failures; NOT_TESTED until observed>`.

**Proof obligation, if any:** `<theorem, domain, premises, invariant, proof status and open assumptions>`.

**Acceptance evidence, if implementation is requested:** `<exact human statement and retrievable locator; accepted content identity; relevant scope>`. Absence keeps implementation blocked. A model-written receipt is not the acceptance itself.

**Output:** `<one bounded artifact; any supporting evidence required to assess it>`.

**Completion / stop condition:** `<observable condition; do not move to another task>`.

**Permission scope:** `<actual existing authorization; no inferred write or publish access>`.

Perform three explicit review passes: propose; attack; resolve against the sources. Report whether these were performed by one agent or genuinely separate reviewers. An unresolved adversarial objection stays visible. Return the artifact and evidence, not a claim of perfection.

## 2. Source and law receipt

```text
TASK:
REPOSITORY / COMMIT:
WORKING-TREE CHANGES ALREADY PRESENT:
LAW SOURCE / REVISION:
GRAPHICS ACTUALLY VIEWED: A / B / C / D [status for each]
MANIFEST / REASON-MAP SECTIONS USED:
PHYSICAL EVIDENCE: HUMAN_REPORTED / VISUALLY_OBSERVED / NOT_PERFORMED
EVIDENCE STATE: NOT_TESTED / NOT_RUN / BLOCKED / OBSERVED / REFUTED / UNESTABLISHED / PROVED_WITHIN_SCOPE
RELEVANT UNREAD OR INACCESSIBLE SOURCE:
CURRENT POINTER-EMISSION GAP:
HUMAN ACCEPTANCE: ABSENT / PRESENT_FOR_EXACT_REVISION / STALE_OR_UNCLEAR
HISTORICAL CONFLICTS:
PERMITTED NEXT ACTION:
FORBIDDEN NEXT ACTION:
```

A receipt is not an authentication mechanism. Verify its source references before relying on it.

**PHYSICAL EVIDENCE and EVIDENCE STATE are different questions, and both lines are here because nothing used to make an agent hold both at once.** C01 asks *how was this grounded* — did someone look at the cord, at the image, or at nothing. C10 asks *how strong is the evidence* — and its `PROVED_WITHIN_SCOPE` was written zero times across the tree until this line existed, because a token that is not on this page is not used. See [agent-control.md](agent-control.md) C01 and C10.

**A stamp covers the sentence it sits in, not the document it sits at the top of.** A `VISUALLY_OBSERVED` earned by a transcription does not reach the claims three sections below it. Stamp the claim, or say which claims the stamp covers.

## 3. Evidence adjudication prompt

```text
ASSIGNED QUESTION + EXACT CANDIDATE
                  |
                  v
 RAW EVIDENCE + SOURCE LAW + COUNTEREXAMPLE
                  |
                  v
        DOES THE CLAIM FOLLOW?
          /       |       \
        yes       no     not established
         |        |             |
      bounded   refuted     keep obligation
      finding               open
```

Evaluate the supplied candidate against the exact contract and law. Do not repair it in the explanation. Preserve contradictions. Do not use majority agreement as an arbiter of truth. Do not infer an unrecorded operation. Distinguish source evidence, tests, proofs, human acceptance, and enforced permissions.

Return:

1. The exact claim and revision assessed.
2. Facts established, each with its evidence and scope.
3. Refuted claims and concrete counterexamples.
4. Open obligations, missing observations, and unresolved source conflicts.
5. The actual changed files and effects, compared with authorization.
6. Whether the assigned task is complete, still needs work, or is blocked at a named boundary.
7. One next narrow question. Proposing it does not open a new branch or authorize implementation.

## 4. Handoff record

```text
PROJECT: NFDFLDTHRY/laceArc
TASK / ONE OUTCOME:
BASE COMMIT:
CURRENT COMMIT / WORKING DIFF:
LAW REVISION:
CURRENT STAGE:
ACCEPTANCE SOURCE / EXACT ACCEPTED CONTENT / SCOPE:
FILES READ / GRAPHICS VIEWED / MATERIAL NOT READ:
FILES CHANGED / WHY:
EVIDENCE LOCATIONS / CANDIDATE IDENTITY:
OBSERVED CHECKS / FAILURES / NOT_RUN:
PROOF STATUS / TRUST ASSUMPTIONS:
OPEN [GAP] / [CONFLICT] / ADVERSARIAL OBJECTION:
ENFORCEMENT OBSERVED / PATHS NOT CHECKED:
NEXT PERMITTED STEP:
STOP BOUNDARY:
EDITOR / REVIEWERS / INDEPENDENCE LIMIT:
```

Incoming agent: open the referenced evidence and compare the current revision. A handoff stating "all good" closes nothing. When the controlling source changed, invalidate conclusions that depended on its previous content and reassess them. Do not erase the prior review.

## 5. Future branch contract form

This is a prose form for later accepted work. It does not create a branch or permit code.

| Required item | What must be supplied |
|---|---|
| One task | One precise obligation, its owner/editor, and scope |
| Authority | Accepted source revision; no assumed emission semantics |
| Inputs | Domain, representation assumptions, invalid input boundary |
| Effects | Allowed state change, excluded I/O and allocation |
| Postcondition | Exact successful and unsuccessful outcomes |
| Invariant | What remains true across each permitted transition |
| Refinement | Why concrete behavior realizes the accepted abstract behavior |
| Resources | Capacity, index bounds, stack/time assumptions, exhaustion behavior |
| Failure model | Interruption, corruption, restart, partial operation, or explicit exclusions |
| Proof | Statement, premises, argument, reviewer objections, status |
| Composition | Preconditions required from other completed first-party work; exact commits |
| Validation | Meaningful counterexamples and actual runs, separate from proof |
| Trust | Compiler, target, hardware, checker assumptions; no hidden foreign component |
| Completion | Every required obligation discharged; no success by consensus |

The form must not silently choose an allocator, persistence strategy, tokenizer, pointer arity, or concurrency scheme. If any is needed but unsettled, that is the next relevant gap.
