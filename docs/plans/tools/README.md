# Plan tools

Host-side only. These are steward tooling, never a Core dependency, and they do not live under `src/` — there is no `src/`.

| File | Use |
|---|---|
| [lace-behavior-assay.py](lace-behavior-assay.py) | **Behavioral-goal assay self-test** for Alignment Restart Pass 3. Checks twelve source-grounded observable relations (HCC-A/Cup/Water + two cross-source compatibility goals) against synthetic positive/negative controls. Ignores `labels[]`, so source-label mimicry cannot satisfy an anti-goal. 24/24 controls pass at v0.1.0. **This tests assay teeth only; it does not implement a holder, solve RM-A, or show that current Lace satisfies the goals.** |
| [hologram-ir-shape-check.py](hologram-ir-shape-check.py) | Checks the **shape** of a `HologramIr` golden/fixture JSON (0.1.0 and 0.2.0): required ids, endpoints that exist, counts, one PROPOSAL honesty flag. Exit 0 shape ok, 1 shape fail. No network. **It does not check the plan** |
| [lace-candidate-run.py](lace-candidate-run.py) | **The bench** — the instrument at [Lab Source Architecture](../lab-source-architecture-pass-1-findings.md)'s third arrow. Runs candidate POINTER-emission rules against `d1-golden`. Host-side, no network, **no `src/`**. Where a rule cannot produce a pointer D1 has, an oracle supplies it and **the call is counted**, so the count is the measurement. **Enforces the campaign's critical rule mechanically:** every candidate declares its provenance, provenance is printed in a column of its own and never folded into the result, so *clipboard authority does not automatically enter Lace*. **Results: `root_touch` (ruling `H1`) derives 1 of 6. `pointability` (clipboard, Water `I-A1`) derives 0 of 6 — an admission test, not a selection rule. `adjacent_pairs` produces six and diverges at `0004`.** A refutation engine: it kills candidates, it never elects one |
| [lace-retention-harness.py](lace-retention-harness.py) | **The retention harness** — Pass 3's replay instrument, extended by the [replacement Pass 4](../lab-source-architecture-pass-4-replacement-findings.md). Candidates still use `observe` / `discover` / `retain` / `state`, with determinism + prefix-purity replay against second-store state. Pass 4 adds **authority class, RM-A/RM-B/RM-C coverage, D1 oracle-independence, TP/FN/FP, pair/order mismatches, event/index mismatches, and admission role**. `CheatingMemory` must fail replay; `SidecarMemory` deliberately passes replay and scores D1 perfectly but is **ORACLE-CHEAT / REJECT**, proving replay legality is not evidence provenance. `RootTouch` is HUMAN calibration, `WeightByRepetition` is a LAB-PROXY, and the existing D1 fixture is reused. Host-side, no network, **no `src/`** |

```bash
python3 docs/plans/tools/hologram-ir-shape-check.py            # default: golden v0.2.0
python3 docs/plans/tools/hologram-ir-shape-check.py <path.json>
```

**Named for what it checks since iteration 4 pass 5** — it was `hologram-ir-validate.py`, a schema checker named for a plan checker. The limit recorded in [rust-nostd-second-reading.md](../rust-nostd-second-reading.md) F7 has not moved: it checks *shape*, not the plan. A fixture with the birth order reversed, a dependency cycle, or the forbidden `core → strand` bypass still passes. Amendment A7 proposes carrying the plan as data.

Fixtures: [../fixtures/](../fixtures/README.md). POINTER emission stays `[GAP]`.
