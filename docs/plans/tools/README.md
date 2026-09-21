# Plan tools

Host-side only. These are steward tooling, never a Core dependency, and they do not live under `src/` — there is no `src/`.

| File | Use |
|---|---|
| [hologram-ir-shape-check.py](hologram-ir-shape-check.py) | Checks the **shape** of a `HologramIr` golden/fixture JSON (0.1.0 and 0.2.0): required ids, endpoints that exist, counts, one PROPOSAL honesty flag. Exit 0 shape ok, 1 shape fail. No network. **It does not check the plan** |
| [lace-candidate-run.py](lace-candidate-run.py) | **The bench.** Runs candidate POINTER-emission rules against `d1-golden`. Host-side, no network, **no `src/`** — builds a throwaway list in memory and prints counts. Where a rule cannot produce a pointer D1 has, an oracle supplies it and **the call is counted**, so the count is the measurement. **First result: of D1's six pointers, exactly one — row `0004`, the root touch — is derivable from the word stream; five are not.** A refutation engine: it kills candidates, it never elects one |

```bash
python3 docs/plans/tools/hologram-ir-shape-check.py            # default: golden v0.2.0
python3 docs/plans/tools/hologram-ir-shape-check.py <path.json>
```

**Named for what it checks since iteration 4 pass 5** — it was `hologram-ir-validate.py`, a schema checker named for a plan checker. The limit recorded in [rust-nostd-second-reading.md](../rust-nostd-second-reading.md) F7 has not moved: it checks *shape*, not the plan. A fixture with the birth order reversed, a dependency cycle, or the forbidden `core → strand` bypass still passes. Amendment A7 proposes carrying the plan as data.

Fixtures: [../fixtures/](../fixtures/README.md). POINTER emission stays `[GAP]`.
