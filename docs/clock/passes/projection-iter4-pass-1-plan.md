# Projection iteration 4 / pass 1 plan — floor back, see into the cube

**Status:** EXECUTED. Emission `[GAP]`. Title `i4p1`. Resume always reboots GPU. Scene cached. Glass rim. Floor raised.  
**Station:** hologram  
**Closes iter3.** Persist grant and second-load reboot stay frozen.  
**Evidence:** `i3p6` shots `t=0002 PTR`, `t=0007 PTR`.  
`GPU on` · `persist on` · `n=5958` · PWA on.  
The stage is a dark tank with icy bricks. The lookrefs are a circuit floor with molten interiors.

Authority:

- `docs/hologram/clockwork-view-lattice.jpg`
- `docs/hologram/clockwork-view-traces.jpg`
- `docs/hologram/clockwork-view-crossing.png`
- `docs/hologram/lookref-lattice-hub-uplink.png`
- `docs/hologram/visual-primitives.md` §0

---

## What iter3 closed

| Tick | Keep |
|---|---|
| i3p2 | camera `8.4 / 6.2` |
| i3p4 | `bootGpu` / `device.lost` / bfcache |
| i3p5 | two pipelines (solid then glass) |
| i3p6 | `persist()` + HUD stamp |

Do not reopen those doors this pass.

---

## What the new shots prove is still wrong

| Lookref | i3p6 now |
|---|---|
| Dim circuit floor under the glyphs | Floor gone. Black tank |
| Orange molten *inside* glass | Teal slab. No interior |
| Cyan bloom wire through cubes | Dim tube |
| Glass rim, empty-looking face | Milky faces (`rgb * 0.25`, `alpha max 0.12`) |

Cause sketch: floor albedo too low at orbit 8.4. Glass fragment forces a floor on alpha and multiplies rgb, so the shell reads as plastic. Ember is drawn on the solid pass but the milky shell covers it.

---

## Tickets (this pass only)

### T1 — Floor must read at this camera

Solid-pass floor: raise well/trace just enough to see cells at 8.4/6.2. Keep quieter than glyphs. Still `born < 0`. No JPEG.

### T2 — Glass is a rim, not a brick

Face alpha near 0. Face rgb must not be forced up. Fresnel rim stays cyan. Drop `max(appear, 0.25)` and `max(alpha, 0.12)` on glass only.

### T3 — Ember has to occupy the shell

Keep core + halo on the **solid** pass. After T2 the interior should show. If it still does not, core scale `0.20 → 0.32`. Cubes stay glyphs.

### T4 — Title `i4p1`

New rawcdn SHA. Persist / reboot / two pipelines stay.

### T5 — Sealed

No Pages. No emitter. No IndexedDB tape. Filament bloom can wait for i4p2 if T1–T3 eat the budget.

---

## Done means

Phone shot of `i4p1` at `t=0002`: circuit floor visible, orange visible *inside* the nearer cube, glass not a milk brick. `persist on` still stamped.

---

## Steward test

If the floor is a photo, redo. If the cube writes Graphic D, you left the shoe.
