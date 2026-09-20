# Mathematical execution model - ROOT / TOUCH / FOLD campaign - Pass 2 PLAN

**Status:** **EXECUTED** 2026-09-20 -> [findings](math-execution-root-touch-fold-pass-2-findings.md). **Station:** maps (Astra-math).
**Pinned main before claim:** ea8a4a8d653b6ab953d6494cd1368fb078f9904e.
**Claim commit:** 74f7626ecacb074a8dde311ace512357a95e4eda.
**Depends on:** Pass 1 findings, 20/20 delta dispositions.
**Object under test:** docs/math-execution-model.md.
**Prior series:** math-execution UPDATE remains CLOSED 6/6. ROOT / TOUCH / FOLD Pass 1 is EXECUTED. This is Pass 2 of the new campaign.
**Implementation:** no src/. pointer-emission.md remains law-owned and is not accepted by this plan.

Pass 2 formalizes the arrival and seen-word touch mechanics that are now human-stated and source-supported. It does not solve the n+1 grounding/grouping schedule. The purpose is to remove from the emission blocker everything that is no longer genuinely unknown.

---

## 0. Human rulings carried into Pass 2

H1, from Pass 1:

> nothing is new in the wordspace after the dictionary is wired up. Words are the touches. If seen word n before create touch to word root.

H2, from Pass 1:

> only thing still missing the punch card n+1 pointer creation. This grounds words together scaling up until 1 point represents the entire lace.

H3, current-session clarification:

> All arrivals land on lace.

Pass 2 must not broaden these statements beyond their words.

Direct consequences to test:

1. H3 removes any "arrival might not append to L" reading.
2. H1 separates wordspace identity from later occurrence history.
3. H1 requires a seen-word touch to the word root.
4. H2 says grounding is an additional punch-card operation, not the definition of landing itself.
5. Therefore arrival landing, root touch, and n+1 grounding must be separate mathematical obligations even though all append into the same L.

---

## 1. One question

Can the partial mathematical model be amended so that every successful arrival lands on the one append-only Lace, every previously seen word deterministically forms a root-touch, and the only remaining ordinary punch-card emission problem is the n+1 grounding/grouping rule?

Pass 2 answers only that question.

---

## 2. Thesis, with falsifiers

### Thesis P2-T

For an input value v arriving to pre-state L:

    j = |L|

    LAND(L, v)
      = L followed by WORD(v) at index j

This happens for every successful arrival.

Define, as a read only:

    Seen_L(v)
      iff there exists i < |L| with WORD(v) at i

    Root_L(v)
      = least i < |L| with WORD(v) at i
        when Seen_L(v)

For a previously seen word:

    TOUCH(L, v)
      = after LAND,
        append POINTER(j, Root_L(v))

where the D1 row 0004 is the bounded storage witness:

    0003 WORD PIE
    0004 POINTER 0003 -> 0000

The WORD at j is the arriving new wire / occurrence. The POINTER is the retained touch from that occurrence into the already-existing word root.

After LAND and any required root-touch, the separate punch-card grounding obligation remains:

    GROUND(previous Lace structure, newly landed material)
      -> append one or more POINTER sections
         whose recursive reach scales toward a point
         representing the whole current Lace

Pass 2 does not define GROUND.

### Falsifier F2-A - landing

If any governing source or current human ruling permits a successful arrival to be consumed without a new Lace section representing that arrival, universal LAND fails.

### Falsifier F2-B - seen-root touch

If D1 / Hands / H1 cannot support the later occurrence plus root-touch pattern without inventing another store or row kind, TOUCH fails.

### Falsifier F2-C - separation

If a root-touch and punch-card grounding cannot be distinguished on D1 even at bounded specimen level, Pass 2 must not claim that grounding is the sole remaining schedule problem.

### Falsifier F2-D - wordspace closure

If post-dictionary input can contain a value with no existing word root, H1 + H3 do not yet state whether LAND creates a new wordspace root. That case must remain OPEN; it may not be repaired by assuming the dictionary is complete.

---

## 3. Mathematical objects Pass 2 may add

Pass 2 may add these as reads / morphisms to docs/math-execution-model.md if the execution tests hold.

### 3.1 Landing morphism

Universal occurrence append:

    Land_v : L -> L + WORD(v)

Properties:

- exactly one new WORD occurrence per successful arrival;
- prior prefix unchanged;
- arrival order preserved by WORD append order;
- later occurrences are new wire, not new lexical identity.

This supersedes the model's wording "Arrive defined for first unseen v" as the complete admission story. First-seen versus later-seen changes root/touch behavior, not whether the arrival lands.

Pass 2 should decide whether to retain the symbol Arrive or rename the formal section to Land/Arrive. It must not create two competing operators for the same append.

### 3.2 Word root read

No new state:

    Root_L(v) = first WORD(v) index already in L

Root is a read / distinguished occurrence, never a root table.

The exact equality rule for v remains G1 OPEN.

### 3.3 Occurrence versus root

Pass 2 must state explicitly:

    first WORD(v)     -> root for that identity
    later WORD(v)     -> new occurrence / more wire
    later occurrence  != new wordspace root

This is the exact sense in which wordspace can be stable while Lace continues growing.

### 3.4 Seen-word root touch

Given pre-arrival Seen_L(v):

    j = |L|
    r = Root_L(v)

    L1 = Land(L, v)
    L2 = L1 followed by POINTER(j, r)

Family-specific facts:

- j is the newly landed occurrence;
- r is the prior root;
- j < pointer index and r < pointer index, so backward legality holds;
- D1 0004 is the bounded witness;
- ref_A = occurrence and ref_B = root is supported for this touch family by the Graphic-D gloss / close-reading.

This must be described as a bounded / human-grounded touch family, not a universal POINTER slot convention.

### 3.5 Star formation qualification

Keep the current occurrence-membership view:

    StarWords_L(v) = all WORD(v) indices

but distinguish it from the full formation.

The full star formation includes at minimum:

- root occurrence;
- later WORD occurrences;
- retained root-touch POINTERs;
- later pointer participation that threads those touches.

No Star table may be allocated.

### 3.6 Reach read

Carry Pass 1's non-stored read:

    Reach_L(i)

which recursively follows earlier POINTER refs.

Pass 2 may include the D1 theorem:

    Reach_D1(0010) = {0000 ... 0010}

only as a bounded witness of grounding/coverage. It must not install a general grounding recurrence.

---

## 4. Q0 / Q1 / Q5 decomposition Pass 2 should establish in the model

The current pointer-emission question bundle is too coarse for the mathematics.

Pass 2 should produce this model-side decomposition:

### Q0-LAND - when does the arrival itself enter Lace?

**Human answer H3:** every successful arrival lands on Lace.

Model consequence:

    every successful arrival appends one WORD occurrence

This closes Q0-LAND inside the mathematical model.

It does not by itself edit or accept pointer-emission.md.

### Q1-TOUCH - when does a seen word touch its root?

**Human answer H1:** if the word has been seen, create a touch to the word root.

Model consequence:

    Seen_L(v) -> append root-touch after landing

This closes the seen-word root-target / touch obligation in the mathematical model.

### Q1-GROUND - how are landed/touched pieces grounded into larger points?

**Human answer H2:** punch-card n+1 pointer creation grounds words together, scaling until one point represents the entire Lace.

What remains to calculate:

- which existing grounded pieces are paired / grouped at each step;
- when additional grounding POINTERs are required;
- how many are needed for an arrival;
- the general base/completion invariant;
- whether general grounding POINTERs are always binary.

This is the intended remaining pointer-emission blocker after Pass 2.

### Q5 - what is a later pass through a known word?

Pass 2 should state:

    later occurrence = WORD landing + root touch

not:

    later occurrence = touch instead of WORD

That preserves D1 0003 + 0004 and Rule Zero.

---

## 5. D1 role classification required before model edit

Pass 2 must classify the six D1 POINTER rows by role without pretending this is the universal scheduler.

| Pointer | D1 gloss / structure | Pass-2 role test |
|---|---|---|
| 0002 = 0000 -> 0001 | PIE relates to DESSERT | grounding / relation between landed roots/occurrences, not seen-root touch |
| 0004 = 0003 -> 0000 | New PIE relates to first PIE | **seen-word root touch witness** |
| 0006 = 0003 -> 0005 | This PIE relates to WHOLE | grounding / relation |
| 0007 = 0006 -> 0004 | relationship participates in relationship | higher grounding |
| 0009 = 0008 -> 0007 | CUSTOMER relates to that relationship | higher grounding |
| 0010 = 0009 -> 0002 | relationship relates to earlier relationship | whole-prefix grounding witness |

Pass 2 may use this classification to separate TOUCH from GROUND.

**It may not infer the general GROUND schedule from these six rows.**

---

## 6. Arrival invariants to prove or retain

Pass 2 execution must test and record:

### A1 - universal landing
For each successful admitted arrival, exactly one new WORD occurrence appears.

### A2 - prefix freeze
LAND changes no earlier section.

### A3 - arrival order
The sequence of WORD occurrence rows equals successful arrival order.

### A4 - root stability
For a seen value v, Root_L(v) remains the earlier distinguished root after later occurrences append.

### A5 - seen touch
If Seen_L(v) before landing, the completed arrival contains a root-touch from the new occurrence to Root_L(v).

### A6 - no intern
Root stability never means replacing or suppressing a later occurrence.

### A7 - no second store
Seen and Root are readings of L.

### A8 - touch permanence
The root-touch POINTER is itself Lace and can be referenced by later grounding pointers.

### A9 - landing versus grounding
An arrival can be fully landed / root-touched while the general grounding schedule remains mathematically unresolved.

---

## 7. The unknown-word boundary

Pass 2 must state this explicitly.

H3 says all arrivals land on Lace.

H1 says nothing is new in the wordspace after the dictionary is wired and gives the seen-word rule.

Those statements do not, by themselves, settle what happens if a post-seed arrival has no root.

Pass 2 must distinguish:

    universal fact:
      arrival -> WORD occurrence on L

    normal dictionary-covered case:
      prior root exists -> mandatory root-touch

    unresolved post-seed unseen case:
      does the newly landed WORD become a new root?
      is such input outside the intended domain?
      is the dictionary required to be closed over all admitted values?

No answer may be invented. This remains G1/domain-admission adjacent, not a reason to reopen seen-word touch.

---

## 8. What execution may change

Pass 2 may edit only maps-owned surfaces:

1. docs/math-execution-model.md
   - header/current qualification;
   - S0 non-claims/readiness wording;
   - S2 arrival/landing;
   - S3 Star/touch/Reach readings;
   - S4 model-side decomposition of Q0/Q1/Q5;
   - S4.3 partial Step;
   - S7 alignment;
   - S8 receipt/current status.

2. docs/plans/math-execution-root-touch-fold-pass-2-findings.md
   - before/after equation map;
   - D1 role classification;
   - A1-A9 results;
   - exact remaining blocker.

3. docs/plans/math-execution-root-touch-fold-pass-2-plan.md
   - status and execution receipt only.

4. docs/plans/README.md
   - index rows.

No other maps document is required for Pass 2.

---

## 9. What execution must not change

Pass 2 must not edit:

- docs/pointer-emission.md (law station);
- docs/systems-manifest.md (law station);
- Graphics A-D or graphics ASCII;
- docs/systems-manifest-ascii.md;
- old seed-dictionary campaign records;
- reduction execution model;
- environment E1-E10;
- any clipboard;
- any coord ownership rule;
- src/ or Cargo.

Those are later propagation / law reconciliation jobs.

---

## 10. Exact blocker Pass 2 should leave behind

If Pass 2 succeeds, it should be possible to say:

**No longer open:**
- whether successful arrivals land on L;
- whether repeated arrivals remain occurrences rather than interned identities;
- which word identity a seen occurrence touches;
- whether that touch remains addressable Lace;
- whether higher pointers may ground touches and other pointers.

**Still open / remaining emission calculation:**
- the punch-card n+1 grounding schedule:
  - operand/group selection;
  - cadence / number of grounding pointers per arrival;
  - general base/completion rule guaranteeing one-point whole-Lace coverage;
  - general arity if not derivable as binary;
- G1 word equality;
- post-seed unseen-word domain behavior.

That exact residual is the handoff to Pass 3.

---

## 11. Pass 2 falsifier board

| ID | Falsifier | If it fires |
|---|---|---|
| F2-A | a successful arrival need not append a WORD occurrence | do not close Q0-LAND |
| F2-B | D1 0004 cannot be read as later occurrence -> first/root occurrence | do not formalize RootTouch |
| F2-C | root-touch cannot be distinguished from grounding in D1 | do not claim grounding is the sole remaining schedule |
| F2-D | Root requires an authoritative side table | reject the root formalization |
| F2-E | H1 requires suppressing the later WORD occurrence | restore explicit H1/D1 conflict |
| F2-F | model changes imply a universal binary POINTER law | stop; Q2 must remain CONFLICT |
| F2-G | Reach becomes stored state | stop; Reach must remain a read |
| F2-H | the execution accidentally defines GROUND | stop; that is Pass 3 work |

---

## 12. Expected versus actual

| | |
|---|---|
| Expected | universal Arrive/WORD survives and becomes explicitly human-grounded by H3 |
| Expected | first occurrence/root and later occurrence are distinguished without a new row kind |
| Expected | D1 0004 becomes the bounded canonical root-touch witness |
| Expected | Q0-LAND and seen-word Q1-TOUCH become mathematically closed |
| Expected | Q1-GROUND becomes the dominant remaining pointer-emission calculation |
| Expected | Q2 stays CONFLICT globally even if root-touch is binary |
| Expected | D1 Reach(0010)=all eleven rows remains a bounded theorem |
| Actual | A1-A9 **9 PASS**; D1 POINTER roles 6/6 bounded classified; Q0-LAND and seen-word Q1-TOUCH closed in the mathematical model; Q1-GROUND remains the residual calculation; post-seed unseen value remains OPEN |
| Full pointer-emission acceptance | ABSENT; law file untouched |

---

## 12a. Execution receipt

- Model update: commit 73d1b6c4ae829293b35a36390744d7de7991e60c.
- Findings: [math-execution-root-touch-fold-pass-2-findings.md](math-execution-root-touch-fold-pass-2-findings.md), commit 127a52b02efe8592216958ba9a49606687e79de3.
- A1-A9: **9 PASS**.
- D1 POINTER role classification: **6/6 bounded**.
- Q0-LAND: **closed in model by H3**.
- seen-word Q1-TOUCH: **closed in model by H1**.
- Q1-GROUND: **OPEN calculation**.
- Q2 CONFLICT, G1 OPEN, post-seed unseen value OPEN.
- Law / manifest / graphics / global ASCII / environment / reduction model: **0 edits**.
- src/: **0**.
- Pass 3 is not automatically opened.

## 13. Stop condition

Pass 2 stops when:

- every A1-A9 invariant has a result;
- D1's six POINTER rows have bounded role classifications;
- docs/math-execution-model.md cleanly separates LAND, ROOT TOUCH and GROUND;
- Q0-LAND is either closed by H3 or a falsifier is recorded;
- seen-word root-touch is either formalized or a falsifier is recorded;
- Q2 remains honestly scoped;
- GROUND is still undefined except for H2's required effect and bounded D1 witnesses;
- post-seed unknown-word behavior is explicitly OPEN if unsupported;
- no law/global-ASCII/graphics/source file was touched;
- no src/;
- a Pass 3 handoff names only the actual remaining grounding calculation;
- then STOP.

## Steward test

Every arrival adds wire. A repeated word does not create a second lexical identity; it lands as another occurrence and touches the root already in the Lace. That touch stays. The next unresolved act is how punch-card grounding combines the landed material into progressively larger reachable points until one point covers the whole Lace.
