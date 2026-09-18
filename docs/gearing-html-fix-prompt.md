# Gearing HTML visualizer — FIX pass ASCII prompt

Paste everything inside the outer box to an agent. **One designated-editor tick** on `docs/shadow-clock-gearing.html` only. Layer III. Emission `[GAP]`. No `src/`. No CDN / npm / Three.js / `fetch` for contracts. Do **not** edit `contracts-*.js` this turn.

Parent loop: `docs/gearing-html-iterate-prompt.md`  
1:1: `docs/gearing-code-1to1.md`  
Evidence: mobile githack shot — HUD labels collide with mesh; camera too tight; header/chips crowd the stage.

```
╔══════════════════════════════════════════════════════════════════════════╗
║  LACEARC  ·  ASCII PROMPT  ·  GEARING HTML FIX (MOBILE READABILITY)      ║
║  Designated editor · HTML only · WebGPU 3D · [GAP] · NO src/ · NO CDN    ║
╚══════════════════════════════════════════════════════════════════════════╝

  YOU ARE the designated editor for docs/shadow-clock-gearing.html THIS session.
  YOU ARE NOT editing shafts / contracts-*.js this tick.
  YOU ARE NOT inventing emission or adding libraries.
  YOU ARE fixing readability on phone WebGPU (Chrome Android target).


                    ┌────────────── BROKEN (from mobile shot) ─┐
                    │  HUD labs (A / B / C / AXLE / meshes)       │
                    │    pile on teeth · AXLE clipped by cylinder │
                    │  Camera too tight / off-center               │
                    │    one blue gear eats the frame              │
                    │  Header + t0–t6 + legend + chips             │
                    │    steal vertical space on narrow viewport   │
                    └──────────────────┬─────────────────────────┘
                                       │
                                       v
                         FIX HTML → QA ON NARROW → STOP


┌──────────────────────────────────────────────────────────────────────────┐
│ CLIPBOARD                                                                │
│ laceArc ← FIX shadow-clock-gearing.html (mobile readability)             │
│ law: HTML only · WebGPU or error · 1:1 keys · Layer III · [GAP]          │
├──────────────────────────────────────────────────────────────────────────┤
│ [clip]                                                                   │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE A — GATE                                                  │     │
│   │                                                                │     │
│   │  [ ] Human named designated editor this session                │     │
│   │  [ ] git fetch + ff-only origin/main                           │     │
│   │  [ ] RESYNC FIRED ⇒ refresh against live tip before edit       │     │
│   │  [ ] Surface = RENDERER only (no shaft claim invents HTML)     │     │
│   │  [ ] Do not touch docs/gearing/contracts-*.js                  │     │
│   │                                                                │     │
│   │  Fail any ⇒ STOP.                                              │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE B — SUCCESS CRITERIA (must all pass)                      │     │
│   │                                                                │     │
│   │  S1  On ~390px-wide viewport, A / B / C gears all readable     │     │
│   │      in one frame (no single gear eating >~50% of canvas).     │     │
│   │  S2  Shared axle + lace cord readable as one through-line.     │     │
│   │  S3  No HUD label overlaps gear teeth or the axle cylinder.    │     │
│   │  S4  Mesh labels A×B / B×C / C×A do not stack on each other.   │     │
│   │  S5  Header does not push the canvas under the fold on phone.  │     │
│   │  S6  t0–t6 remain usable; not a dense double keypad wall.      │     │
│   │  S7  Tap still selects correct LACE_CONTRACTS key (1:1).       │     │
│   │  S8  No WebGPU → blocking error panel (no 2D primary).         │     │
│   │  S9  No CDN / npm / Three.js / fetch(contracts).               │     │
│   │  S10 Layer III + [GAP] copy still present (may be collapsed).  │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE C — FIX 1: HUD LABELS OFF THE MESH                        │     │
│   │                                                                │     │
│   │   Problem: .hud-labels labs are world-projected and collide.   │     │
│   │                                                                │     │
│   │   DO ONE of these (prefer first):                              │     │
│   │                                                                │     │
│   │   (1) SCREEN-FIXED HUD                                         │     │
│   │       · Pin A / B / C / AXLE / AB / BC / CA to a fixed strip   │     │
│   │         (e.g. left rail or top of canvas), NOT world project.  │     │
│   │       · Keep data-key + click → show(key) 1:1.                 │     │
│   │       · Optional: thin leader line from lab to mesh ONLY if    │     │
│   │         it never crosses another lab.                          │     │
│   │                                                                │     │
│   │   (2) COLLISION-AWARE BILLBOARDS (harder)                      │     │
│   │       · Keep project-to-screen but push labs apart;            │     │
│   │         clamp inside canvas inset; never cover axle cylinder.  │     │
│   │                                                                │     │
│   │   FORBID: more floating labs · emoji · new keys without 1:1.   │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE D — FIX 2: CAMERA / SCENE FRAMING                         │     │
│   │                                                                │     │
│   │   Problem: camera too close; one gear dominates.               │     │
│   │                                                                │     │
│   │   · Pull eye back / widen FOV so A+B+C+axle+lace fit.          │     │
│   │   · Center on shared axle, not on gear A alone.                │     │
│   │   · Keep slight tilt so depth reads; do not flatten to 2D.     │     │
│   │   · Lace ribbon: thinner or lower opacity if it hides teeth;   │     │
│   │     must still read as Hands cord through axle.                │     │
│   │                                                                │     │
│   │   FORBID: orthographic “diagram mode” as primary.              │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE E — FIX 3: MOBILE CHROME / VERTICAL BUDGET                │     │
│   │                                                                │     │
│   │   Problem: long .sub + badge + tick-bar + legend + chips.      │     │
│   │                                                                │     │
│   │   On max-width ~600px (or similar):                            │     │
│   │   · Collapse .sub behind <details> or one-line clamp + expand. │     │
│   │   · Keep badge short or move into details.                     │     │
│   │   · tick-bar: single scroll row OR compact 2-row with gap;     │     │
│   │     active t* still obvious.                                   │     │
│   │   · legend: one line or wrap once; do not duplicate HUD labs.  │     │
│   │   · Prefer canvas min-height ~45vh on phone.                   │     │
│   │                                                                │     │
│   │   Desktop layout may stay richer.                              │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE F — INVARIANTS (must still hold after fix)                │     │
│   │                                                                │     │
│   │  [ ] #clock3d is primary WebGPU view                           │     │
│   │  [ ] All 8 contracts-*.js via relative <script src>            │     │
│   │  [ ] CONTRACTS = window.LACE_CONTRACTS || {}                   │     │
│   │  [ ] chipKeys from Object.keys(CONTRACTS)                      │     │
│   │  [ ] Same keys: A B C AB BC CA axle t0–t6 (+ trains via chips) │     │
│   │  [ ] No new contract keys invented in HTML                     │     │
│   │  [ ] POINTER emission language still [GAP]                     │     │
│   │  [ ] Single-file page — no build step                          │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE G — QA CHECKLIST                                          │     │
│   │                                                                │     │
│   │  [ ] Resize to ~390×844 (or real phone): S1–S6 pass            │     │
│   │  [ ] Tap A, B, C, AXLE, A×B, B×C, C×A → correct panel          │     │
│   │  [ ] Tap t0–t6 → correct cell contracts                        │     │
│   │  [ ] WebGPU off → error panel, not blank/SVG primary           │     │
│   │  [ ] githack / relative paths: all scripts load                │     │
│   │  [ ] Optional: screenshot before/after under docs/gearing/     │     │
│   │      (do not commit PDFs; png OK only if human asks)           │     │
│   │                                                                │     │
│   │  Device noted: ______________________________________________  │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE H — OUT OF SCOPE THIS TICK                                │     │
│   │                                                                │     │
│   │   · contracts-*.js body text                                   │     │
│   │   · new gears / new physics / bloom / post FX libs             │     │
│   │   · pointer-emission UI                                        │     │
│   │   · Core / src/ / crates                                       │     │
│   │   · clearing RESYNC (steward only)                             │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE X — CROSS-CUT                                             │     │
│   │                                                                │     │
│   │  temptation              │ deadbolt                            │     │
│   │  ───────────────────────┼──────────────────────────────────── │     │
│   │  “just add Three.js”    │ FORBID                               │     │
│   │  2D SVG primary         │ FORBID                               │     │
│   │  more world labels      │ FORBID — fix placement instead       │     │
│   │  edit a shaft “while”   │ FORBID — next tick                   │     │
│   │  invent emit control    │ [GAP]                                │     │
│   │                                                                │     │
│   │  PRODUCT: readable docs/shadow-clock-gearing.html              │     │
│   │  AFTER: STOP · commit only if human asks                       │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│ [clip]                                                                   │
└──────────────────────────────────────────────────────────────────────────┘


  FLOW (ASCII)

       fetch/ff main ──► confirm designated editor
              │
              v
         PAGE A gate
              │
              v
         FIX 1 HUD → FIX 2 camera → FIX 3 mobile chrome
              │
              v
         PAGE F invariants → PAGE G QA
              │
              v
         STOP  (S1–S10 all pass)


  FORBIDDEN
    invent emission · src/ · CDN · npm · Three.js · fetch contracts
    edit contracts-*.js this tick · 2D primary · orphan/new keys


  STEWARD TEST
    shoe lace in hands, or no.
    If a phone thumb cannot tell A from B from axle, you are not done.


╔══════════════════════════════════════════════════════════════════════════╗
║  END ASCII PROMPT — fix mobile readability; leave [GAP] sealed           ║
╚══════════════════════════════════════════════════════════════════════════╝
```
