# Golden IR fixtures

Sealed `HologramIr` documents for the Layer III nostd pipeline viewer. **Plan-shaped, not parsed from any Rust source** — there is no `src/` to parse. `mode` is `"fixture"`, `items[]` is empty, `emission_gate` is `"blocked"`, and every bind is `authority: "PROPOSAL"`.

| File | Version | Use |
|---|---|---|
| [hologram-ir-golden-v0.2.0.json](hologram-ir-golden-v0.2.0.json) | 0.2.0 | **Current.** Adds `pieces` (P1–P15), `seams` and `binds` to the 0.1.0 envelope. Viewer default |
| [hologram-ir-golden-v0.1.0.json](hologram-ir-golden-v0.1.0.json) | 0.1.0 | Historical. Doors only |

Schema: [../hologram-ast-ir.md](../hologram-ast-ir.md). Binding to the picture: [../hologram-ast-ir-viewer.md](../hologram-ast-ir-viewer.md). Validate: [../tools/hologram-ir-validate.py](../tools/hologram-ir-validate.py).

A fixture is not a proved birth. POINTER emission stays `[GAP]`. No `src/`.
