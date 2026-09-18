# Plan tools

Host-side only. These are steward tooling, never a Core dependency, and they do not live under `src/` — there is no `src/`.

| File | Use |
|---|---|
| [hologram-ir-validate.py](hologram-ir-validate.py) | Validates a `HologramIr` golden/fixture JSON (0.1.0 and 0.2.0). Exit 0 pass, 1 fail. No network |

```bash
python3 docs/plans/tools/hologram-ir-validate.py            # default: golden v0.2.0
python3 docs/plans/tools/hologram-ir-validate.py <path.json>
```

**Known limit**, recorded in [rust-nostd-second-reading.md](../rust-nostd-second-reading.md) F7: this validator checks *shape*, not the plan. A fixture with the birth order reversed, a dependency cycle, or the forbidden `core → strand` bypass still passes. Amendment A7 proposes carrying the plan as data.

Fixtures: [../fixtures/](../fixtures/README.md). POINTER emission stays `[GAP]`.
