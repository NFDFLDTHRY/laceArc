# Plan tools

Host-side only. These are steward tooling, never a Core dependency, and they do not live under `src/` — there is no `src/`.

| File | Use |
|---|---|
| [hologram-ir-shape-check.py](hologram-ir-shape-check.py) | Checks the **shape** of a `HologramIr` golden/fixture JSON (0.1.0 and 0.2.0): required ids, endpoints that exist, counts, one PROPOSAL honesty flag. Exit 0 shape ok, 1 shape fail. No network. **It does not check the plan** |
| [lace-candidate-run.py](lace-candidate-run.py) | **The bench** — the instrument at [Lab Source Architecture](../lab-source-architecture-pass-1-findings.md)'s third arrow. Runs candidate POINTER-emission rules against `d1-golden`. Host-side, no network, **no `src/`**. Where a rule cannot produce a pointer D1 has, an oracle supplies it and **the call is counted**, so the count is the measurement. **Enforces the campaign's critical rule mechanically:** every candidate declares its provenance, provenance is printed in a column of its own and never folded into the result, so *clipboard authority does not automatically enter Lace*. **Results: `root_touch` (ruling `H1`) derives 1 of 6. `pointability` (clipboard, Water `I-A1`) derives 0 of 6 — an admission test, not a selection rule. `adjacent_pairs` produces six and diverges at `0004`.** A refutation engine: it kills candidates, it never elects one |
| [lace-retention-harness.py](lace-retention-harness.py) | **The retention harness** — [pass 3](../lab-source-architecture-pass-3-findings.md)'s product. Candidates become `observe` / `discover` / `retain` / `state`, splitting **discovered** structure from **retained** structure because that is the gate's own distinction. Holds time, state and weight; **time needs no round counter** since *narrative rewrites conditions* is later entries participating in earlier ones. **Enforces the human's compression rule mechanically:** discard the derived state, rebuild it from the strand alone, compare — by **determinism** (run twice, compare sequences) and **prefix purity** (snapshot before replay). **Proven against a deliberate second store its first version failed to catch.** Host-side, no network, **no `src/`** |

```bash
python3 docs/plans/tools/hologram-ir-shape-check.py            # default: golden v0.2.0
python3 docs/plans/tools/hologram-ir-shape-check.py <path.json>
```

**Named for what it checks since iteration 4 pass 5** — it was `hologram-ir-validate.py`, a schema checker named for a plan checker. The limit recorded in [rust-nostd-second-reading.md](../rust-nostd-second-reading.md) F7 has not moved: it checks *shape*, not the plan. A fixture with the birth order reversed, a dependency cycle, or the forbidden `core → strand` bypass still passes. Amendment A7 proposes carrying the plan as data.

Fixtures: [../fixtures/](../fixtures/README.md). POINTER emission stays `[GAP]`.
