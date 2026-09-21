# LAB SOURCE ARCHITECTURE — Pass 3 PLAN · a harness that can hold time, state and weight

**Status:** **`PLAN`** · not executed. **Station:** maps (`Claude-Projection` · BASE `a81a8f6`).
**Campaign:** Lab Source Architecture. **Pass:** 3.
**Implementation:** none. No `src/`, no Cargo, no runtime gate, no Core code. **This pass extends a Layer III instrument; it builds nothing that could be mistaken for Core.**
**Acceptance:** unchanged. The Core-adjacent `[GAP]` is **exact sampling-derived retention / materialization**.
**Prior:** [pass 1](lab-source-architecture-pass-1-findings.md) · [pass 2](lab-source-architecture-pass-2-findings.md), both EXECUTED.

---

## 0. Pass 2 named this pass, and outranked the obvious alternative

> **"A harness that can hold time, state and weight.** Until it exists, three of four retention mechanisms and the whole Coffee Cup are untestable. **This outranks harvesting the research family."**

Pass 2 classified 32 behavioral mechanisms and could run 5. **`F3` fired at 19 of 32 not stateable**, and its verdict was that this indicts the instrument, not the sources. **Pass 3 repairs the instrument.**

The bench's signature is

```
rule(i, lace, roots) -> (a, b) | None
```

which has no time, no state, no weight, no second party, no templates. The Coffee Cup is **entirely** a time axis; HCC-A carries `S0`–`S7`; Water carries `S0`–`S4`; the Meaning Engine is weights. **None of it fits.**

## 1. The trap this pass walks into, and the only thing that gets it out

**A stateful harness holds state. State is the thing this repository forbids.**

`CLAUDE.md`: *"No second store. No Star table, graph DB, embedding store, definition table, or N-dimensional storage. The append-only 1D array is the only store."*

So a harness that lets candidates accumulate anything is one step from a second store — and it would be **my** step, taken inside the instrument that is supposed to be testing for exactly this.

**The way out is the human's own rule**, given 2026-09-21 and recorded in [the law](../law-why-these-documents.md):

> **Compression is losing the evidence chain.** A derived structure is permitted when it can be **discarded and rebuilt from the strand alone**; one that cannot holds evidence the strand does not, and is a second store. **A state machine of the kind HCC-A describes fits as the ISL layer** — its state is re-derivable by replay, so the chain is intact.

**That criterion is executable, and making it executable is this pass's real product.**

## 2. The design

A candidate becomes an object with three members:

```
observe(lace, i)   -> None            may update derived state
propose(lace, i)   -> (a, b) | None   may emit
state()            -> hashable        MUST be reproducible by replay
```

**The harness then runs two passes and compares them.**

| | |
|---|---|
| **forward** | `observe` / `propose` at each index, accumulating whatever the candidate accumulates |
| **replay** | at each index **construct a fresh candidate** and feed it the prefix from zero; compare `state()` |

**A mismatch is a hard failure.** It means the candidate is carrying something the strand cannot rebuild — a second store, caught mechanically, inside the lab, by the repository's own criterion.

**This is the compression rule made into a check.** Not a stamp, not a refusal in a table: a replay that either reproduces the state or does not.

**Time comes free.** The Cup's loop — *conditions → release → trajectory → impact → aftermath → rewrites conditions* — needs no round counter. Under append-only, *"narrative rewrites conditions"* is **later entries participating in earlier ones**, which is B8's *"touch participates later"* exactly. A candidate that sees the whole prefix sees its own earlier output. **Recirculation is accretion.**

**Weights come free too, and must.** A weight on entry `j` is derived from the prefix and recomputed on replay. It is never stored. If a weight survives only because the harness remembered it, the replay check fails it.

## 3. Thesis, stated so it can lose

**Every retention mechanism the behavioral family names can be expressed as a candidate whose state is a pure function of the strand prefix — so no retention mechanism requires a second store.**

If that holds, the machine and the substrate are compatible on the one axis the gate is still open on.

## 4. Falsifiers

| | If it fires |
|---|---|
| **`F1`** | **A retention mechanism needs state the strand cannot rebuild.** HCC-A's pruning, or the Meaning Engine's weights, turn out to require something outside the array → **that is a collision between the machine and the law, and it is a finding about the mechanism, not the harness.** Report it and stop; do not weaken the check to admit it |
| **`F2`** | **The replay check never fails.** A check that cannot fail has measured nothing. **Prove it has teeth**: inject a deliberately cheating candidate that holds a counter the strand cannot rebuild, and confirm the harness catches it. **If it does not, the harness is the finding** |
| **`F3`** | **The signature is fixed and the mechanisms still cannot be stated.** Then the problem was never the interface, and pass 2's verdict — *indicts the instrument* — was wrong. Say so plainly |
| **`F4`** | **Building it needs a design decision the sources do not license.** A retention threshold, a default weight, a state alphabet nobody wrote → **I am inventing. Stop, mark `[GAP]`, and ask** |

**`F4` is the standing risk of every instrument pass.** A harness expresses; it must not decide. The moment the harness supplies a number the sources do not, it has closed a gap by convenience inside the tool built to prevent that.

## 5. This pass must not

- **Not store anything** that survives a discard-and-rebuild.
- **Not let a candidate pass without the replay check.** No exemptions, including for candidates that look obviously pure.
- **Not re-run pass 2's harvest and call it pass 3.** Re-expressing the four retention mechanisms is the point; re-reporting the five zeros is not.
- **Not supply a threshold, weight or state the sources do not name.** `F4`.
- **Not close the `[GAP]`,** take a ruling, run a build, or add `src/`.
- **Not write math through an unquoted heredoc.** Pass 1's `\boxed{` became a backspace byte; this campaign writes math through a quoted delimiter or not at all.

## 6. Accept pass 3 when

The three-member signature exists and the old candidates still run under it unchanged; **the replay check is implemented and proven to have teeth by a cheating candidate it catches**; each of pass 2's four retention mechanisms is either expressed as a candidate or recorded as `F1` with the reason; every candidate's replay result is published beside its derivation count; all four falsifiers are reported; and `pointer-emission.md`, `systems-manifest.md` and every executed pass body are byte-unchanged.

## 7. Not this pass

The research family and the platform family — pass 2 deferred them and pass 3 does not reclaim them. Cross-family comparison. **Any attempt to answer the retention `[GAP]`** — this pass builds the instrument that could ask the question; asking it is later, and answering it is the human's.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

**The dangerous pass is the one where the instrument-builder needs somewhere to keep things.** The check that saves it is the one the human already wrote: throw the derived thing away, rebuild it from the lace alone, and see whether it comes back the same. **A harness that cannot survive its own replay has no business testing anything.**
