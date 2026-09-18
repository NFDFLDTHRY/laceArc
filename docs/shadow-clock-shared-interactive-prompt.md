# Shadow Clock — Shared Interactive Architecture (Layer III)

**Status:** Prompt for the designated editor of laceArc Shadow clock gearing (Layer III only).  
**Repo:** laceArc  
**Authority for contract bodies:** `docs/shadow-clock-gear-contracts.md`  
**Renderer:** `docs/shadow-clock-gearing.html`  
**This prompt does not** invent pointer-emission, add `src/`, or commit/push.

---

## Goal

Implement the shared-interactive architecture EXACTLY so the Layer-III gearing page loads additive contract data via `<script src>` (not fetch), with a frozen renderer that reads `window.LACE_CONTRACTS`.

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
