# Projection iteration 1 / pass 3 (E) plan — depth on a working file

**Status:** EXECUTED. Glass + filament + live heat. Title i1p3. Emission `[GAP]`.  
**Station:** hologram  
**Evidence:** file works (`i1` arrived; pass 2 shaders + REF). Do not touch fetch/PWA this pass unless the title regresses.

Pass E = third pass of iteration 1 (A=bytes, B=shader not JPEG, C/E=look depth).

---

## Tickets

### T1 — Glass shell that reads as glass

WORD shell: lower alpha, stronger fresnel, core stays ember. Not a brown brick.

### T2 — Orb as filament, not a ball

Cheap domain warp in FS on high-green glyphs. Two spheres already exist; do not add a third mesh.

### T3 — Floor already a grid; add crossing heat only at live index

A dimmer pulse at `posOf(floor(t))` via uniform (live.xz already implied by camera). Pass the live xz in `u.t.yz`.

### T4 — Title `i1p3`

If the phone says `i1p2`, it did not get this pass.

### T5 — Sealed

No JPEG as stage. No extra D1 rows. REF stays compare-only.

---

## Execution (when you say go)

WGSL + one uniform + title. STOP.

---

## Steward test

If it looks like pass 2 bricks with a new stamp only, T1–T2 failed.  
If we blit the lookref, we failed.
