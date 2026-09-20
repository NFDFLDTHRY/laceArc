# Projection interaction pass 2 plan — keep the plasma; show the lace around it

**Status:** EXECUTED. Emission `[GAP]`. Title `ixp2`. Pitch 0.85 R=10. Emissive orange/gold/cyan. Plasma holes untouched.  
**Station:** hologram  
**Evidence:** `ixp1` shot, `t=0002 PTR`, `ms 64`, `GPU on`, `n=5586 f=6`. One green volume. Best plasma yet. Rest of the phone is navy. Cubes, gold bars, cyan traces not in the frame.

ixp1 recovered paint. Do **not** retouch the plasma holes. This pass is **framing + emissive lace**.

---

## What the shot is

```
  PIE orb  (holes, green)     ← keep
  WORD cubes                  ← off-frame or too dark
  PTR gold  t=0002  0→1       ← off-frame or too dark
  cyan grid y=0.35            ← off-frame or too dark
```

Camera orbits GRID at R=7.2, pitch 0.55. The orb sits at `posOf(0)+(0,0.85,0)`, ~4 units off GRID. At this yaw the lens is on the ball. The lace is beside it.

---

## Tickets (this pass only)

### T1 — Start looking down the field

Default `pitch = 0.85`, `R = 10`. Auto-yaw kept. Drag orbit kept. Plasma stays; cubes and traces must fit in the same still.

### T2 — Cyan traces and gold are emissive

`else` / gold / trace colors: add a constant lift so they read against navy without waiting for a light angle. Width already 0.14 / 0.045. Do not send them through the plasma gate.

### T3 — Orange WORD cubes emissive

Core `(1.0, 0.28, 0.04)` plus unlit lift. No glass shell (ixp1). If a cube is in frustum it must not read as teal milk.

### T4 — Do not touch plasma

Sphere mesh + hole discard stay. That is the win.

### T5 — Title `ixp2`

New rawcdn SHA. Pin `LATEST.json`. **h1 and stamp both `ixp2`.** Kill ixp1 tab. `id lace-iii`. 11 D1 rows.

---

## Done means

`ixp2` at `t=0002`: green volume **and** at least one orange cube **and** a gold or cyan bar in the same shot. Navy + lone orb = fail.

---

## Steward test

If you break the plasma holes to “fix” the lace, you went backwards. Emission `[GAP]`.
