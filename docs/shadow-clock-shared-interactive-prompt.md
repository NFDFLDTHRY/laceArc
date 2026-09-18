# Shadow Clock — Shared Interactive Architecture (Layer III)

**Status:** Prompt for the designated editor of laceArc Shadow clock gearing (Layer III only).  
**Repo:** laceArc  
**Authority for contract bodies:** `docs/shadow-clock-gear-contracts.md`  
**Renderer:** `docs/shadow-clock-gearing.html`  
**This prompt does not** invent pointer-emission, add `src/`, or commit/push.

---

## Goal

Implement the shared-interactive architecture EXACTLY so the Layer-III gearing page loads additive contract data via `<script src>` (not fetch), with a frozen renderer that reads `window.LACE_CONTRACTS`. The interactive clock **must** render in **3D via WebGPU** (see REQUIREMENTS).

---

## 1. Create directory

```
docs/gearing/
```

## 2. Extract inline `const CONTRACTS` into additive data files

Each file MUST use this exact shape:

```js
window.LACE_CONTRACTS = Object.assign(window.LACE_CONTRACTS || {}, {
  "key": { group: "...", chip: "...", title: "...", body: `...` }
});
```

### Partition

| File | Keys |
|---|---|
| `docs/gearing/contracts-axle.js` | `axle` only |
| `docs/gearing/contracts-gears.js` | `A`, `B`, `C`, `AB`, `BC`, `CA` |
| `docs/gearing/contracts-trainA.js` | Prefer mapping Walk 1 MESH headers to `A1`..`A9` from `docs/shadow-clock-gear-contracts.md`. If HTML only has coarse A and mapping is impossible, put coarse A in gears.js and leave trainA empty or faithfully mapped stubs only. |
| `docs/gearing/contracts-trainB.js` | `B1`..`B5` from Walk 2 |
| `docs/gearing/contracts-trainC.js` | `C1`..`C10` from Walk 3 (FSM + bridge) |
| `docs/gearing/contracts-cells.js` | `t0`..`t6` |
| `docs/gearing/contracts-escape.js` | Map Rapids LOCK / Locate RELEASE / master recursion R1 from walks 5–6 → keys `E1`, `E2`, `R1` |
| `docs/gearing/contracts-audits.js` | `X1`..`X6` from Walk 7 |

### Body text rules

- Copy/adapt from `docs/shadow-clock-gear-contracts.md` (authority).
- Panel is a COPY of the walk artifact.
- Use backtick template literals; **no backticks inside body**.
- Keep BOUNDARY STAMP / cites.
- Do **NOT** invent pointer-emission; leave `[GAP]` language intact.
- Keep coarse gear overview entries `A` `B` `C` `AB` `BC` `CA` `axle` `t0`–`t6` from the HTML if useful.
- Audits must be `X1`..`X6`, not `Xaudit`. Map former `Xaudit` content into Walk 7 audits.

## 3. Freeze the renderer `docs/shadow-clock-gearing.html`

- Before the main script, add `<script src>` tags (relative paths `gearing/contracts-*.js`) for all 8 files.
- Replace `const CONTRACTS = { big object }` with:

```js
const CONTRACTS = window.LACE_CONTRACTS || {};
```

- Replace hardcoded `chipKeys` with:

```js
const chipKeys = Object.keys(CONTRACTS).sort().map(k => [k, (CONTRACTS[k] && CONTRACTS[k].chip) || k]);
```

- Fix `show()` and click handlers: existing HTML clicks `gearA` → `show("A")` etc. Keep those working for keys `A` `B` `C` `AB` `BC` `CA` `axle` `t0`–`t6`. Train keys `A1`.. appear via `chipKeys`.
- Update click handlers that referenced `Xaudit` to still work if `X1` exists — chips will list `X1`..`X6`.
- MUST use `<script src>` NOT `fetch`. No CDN, no build, no npm.

## 4. Save this prompt

Save the user prompt text to:

```
docs/shadow-clock-shared-interactive-prompt.md
```

## 5. Update README

Add rows for `docs/gearing/` and the prompt file if a contents table exists.

---

## REQUIREMENTS (renderer — WebGPU 3D)

These constraints apply to `docs/shadow-clock-gearing.html` and any Layer-III interactive gearing view:

- **Interactive MUST be 3D.** The primary clock visualization is a WebGPU canvas (procedural extruded gears + lace ribbon). No Three.js, no CDN, no npm, no build step.
- **WebGPU required.** Target environment: Chrome on Android with **WebGPU** and **WebNN** flags enabled (`chrome://flags`). WebNN need not be called by the render pass yet — document the expected flags. If `navigator.gpu` / adapter / device is missing, show a clear full-panel error requiring WebGPU; do **not** silently fall back to a 2D SVG as the primary clock.
- **No 2D-only primary view.** 2D SVG may be removed or demoted to optional debug only.
- **Still [III] projection.** Not Core. Shaft / axle partition unchanged. Contract bodies remain authority of `docs/shadow-clock-gear-contracts.md` via `docs/gearing/contracts-*.js`.
- **Still no CDN.** Keep loading all eight `gearing/contracts-*.js` via relative `<script src>` before the main script. `CONTRACTS = window.LACE_CONTRACTS || {}` and derived `chipKeys`. No `fetch()` for contracts.
- **Do not invent POINTER emission.** Leave `[GAP]` text alone.

| Requirement | Rule |
|---|---|
| Dimension | Primary gearing view is **3D** |
| API | **WebGPU** (`navigator.gpu`) — no Three.js, no CDN, no npm, no build step |
| Environment | Verified target: **Chrome on Android** with **WebGPU** and **WebNN** flags enabled. WebNN is an environment note for this device class; this render pass uses WebGPU only. |
| Fallback | If WebGPU is missing, show a clear blocking error that names the requirement — do **not** silently substitute a 2D primary view |
| Layer | Still **[III]** projection only; shafts unchanged; contracts still `docs/gearing/contracts-*.js` |
| Core | Still not Lace Core; POINTER emission remains `[GAP]` |

## BEFORE YOU DROP (claim / release — mandatory)

Layer III multi-agent coordination. Protocol: [`docs/gearing/CLAIMS.md`](gearing/CLAIMS.md). Tool: [`docs/gearing/claim.sh`](gearing/claim.sh).

**Law:** One shaft per agent. Zero or one drop per shaft per tick. If you cannot tell whether a shaft is held → **it is held**.

| Step | Command / rule |
|---|---|
| Before edit | `./docs/gearing/claim.sh claim <shaft> "<agent>"` — fetch `origin/main`; fail if HELD by another agent |
| Before drop | `./docs/gearing/claim.sh check <shaft> "<agent>"` — must be HELD by you **and** `BASE == origin/main` |
| If base moved | pull `--ff-only`, re-read sources, `./docs/gearing/claim.sh refresh <shaft> "<agent>"`, re-walk, then drop |
| After drop / abandon | `./docs/gearing/claim.sh release <shaft> "<agent>"` — same agent only |
| Stuck claim | human: `./docs/gearing/claim.sh force-free <shaft>` |

- Edit **only** your claimed `contracts-*.js` and your `.claim` file.
- Never edit another shaft’s `.claim` or `contracts-*.js`.
- Do **not** maintain a shared STATUS.md everyone rewrites — status is derived from `claims/*.claim`.
- Renderer `docs/shadow-clock-gearing.html` stays **frozen** / designated editor only.
- Not Core. Do not invent POINTER emission (`[GAP]`).

---

## 6. Hard forbids

- Do NOT invent emission.
- Do NOT add `src/`.
- Do NOT commit or push (parent will).

---

## Return checklist

- List of files written
- Key counts per file
- Confirmation page would load with script tags
- Any keys omitted and why
