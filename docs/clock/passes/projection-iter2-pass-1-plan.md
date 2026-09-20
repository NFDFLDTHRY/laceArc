# Projection iteration 2 / pass 1 plan — the slider ate the buttons

**Status:** EXECUTED. Two-row dock. Title i2p1. Emission `[GAP]`.  
**Station:** hologram  
**Evidence:** dock shows Play + Install with **range thumbs** on top of them. Title `i1p5` (also stale vs `i1p6`).

Those are not missing buttons. The `#t` range is `flex:1` in one row. On a narrow Chrome Android viewport the track overflows left and steals hits.

---

## Tickets

### T1 — Dock is two rows on a phone

Row 1: Play, Install, Update, REF (min 44px hits, `flex-shrink:0`)  
Row 2: range + phase stamps  

`pointer-events` only on the control that owns the pixel.

### T2 — Title `i2p1`

If the shot still says `i1p5`, the phone does not have this file. Keep `?i=1` and network-first HTML.

### T3 — Do not restyle the lattice

Layout only.

### T4 — Sealed

No emitter. Chrome Android only.

---

## Execution (when you say go)

CSS + dock markup. STOP.

---

## Steward test

If a thumb still sits on Install, T1 failed.  
If title is not `i2p1`, you are not on this pass.
