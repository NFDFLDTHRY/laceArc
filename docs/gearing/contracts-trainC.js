window.LACE_CONTRACTS = Object.assign(window.LACE_CONTRACTS || {}, {
  "C1": { group: "trainC", chip: "C1", title: "C1 — C.S0 Banks → C.S1 Rapids", body: `MESH: C.S0 Banks → C.S1 Rapids   (scale: C ; time: t0→t1)
INPUTS / OUTPUTS
- In: two OBS inventories, no shared reference.
- Out: pressure/heat; loud ≠ transfer.
PRECONDITIONS / EFFECTS
- Banks are normal, not failure.
- Talks often start in rapids.
INVARIANTS
- Pressure ≠ transfer.
- Not two Laces.
FAILURE MODES
- Mistake shouting for crossing.
- Two-lace drawing as stores.
BOUNDARY STAMP: [H]
HANDS CITE: one strand (Piece 1); not two arrays.
SHADOW CITE: Water I-B1; hologram Banks/Rapids [H].
HISTORY CITE: pass 1 standing in the wrong place.
DELTA vs HOLOGRAM: confirms.` },
  "C2": { group: "trainC", chip: "C2", title: "C2 — C.S1 Rapids → C.S2 Delta", body: `MESH: C.S1 Rapids → C.S2 Delta   (scale: C ; time: t2)
INPUTS / OUTPUTS
- In: heat + missing anchors.
- Out: one pointable element acknowledged.
PRECONDITIONS / EFFECTS
- Requires Locate then Anchor.
- No mesh → no torque (philosophy-map Gear W).
INVARIANTS
- If you can't point at it, you can't push on it.
- Anchor ≠ POINTER emission.
FAILURE MODES
- Push without OBS → INVALID loop.
- Treat S2 as emission.
BOUNDARY STAMP: [H]; Anchor-as-emission [GAP] / [X] if filled
HANDS CITE: emission open Q2; Graphic D POINTER is later section naming earlier indices.
SHADOW CITE: Water F1 Locate / F2 Anchor; hologram repair utterance.
HISTORY CITE: pass 2 contact rules conflict — exact-match tie is not today's contract.
DELTA vs HOLOGRAM: confirms (does not close [GAP]).` },
  "C3": { group: "trainC", chip: "C3", title: "C3 — C.S2 Delta → C.S3 Crossing", body: `MESH: C.S2 Delta → C.S3 Crossing   (scale: C ; time: t3)
INPUTS / OUTPUTS
- In: paired OBS.
- Out: DELTA node; UNKs listed; compute may start.
PRECONDITIONS / EFFECTS
- Pair() needs two OBS.
- Compute is talk-repair, not array ops.
INVARIANTS
- DELTA is not a Lace relation type.
- Joint talk ≠ Core.
FAILURE MODES
- OBS/DELTA as rows (Hands BREACH).
- GNN as Core (Petersen FORBID).
BOUNDARY STAMP: [H]; as rows [X]
HANDS CITE: D shows only WORD and POINTER.
SHADOW CITE: Water F3 Pair; hologram t3 stamp.
HISTORY CITE: pass 2 D04 typed laces conflict with one-lace.
DELTA vs HOLOGRAM: confirms.` },
  "C4": { group: "trainC", chip: "C4", title: "C4 — C.S3 Crossing → C.S4 Rebuild", body: `MESH: C.S3 Crossing → C.S4 Rebuild   (scale: C ; time: t3→t5)
INPUTS / OUTPUTS
- In: resolved or bounded work.
- Out: action list in talk; banks reform.
PRECONDITIONS / EFFECTS
- Crossing completed → decisions become legitimate in talk.
- Not a Lace commit.
FAILURE MODES
- Rebuild as mutate-L or mutate-WORD.
BOUNDARY STAMP: [H]
HANDS CITE: Piece 1.
SHADOW CITE: Water S4 Bank Rebuild.
HISTORY CITE: none.
DELTA vs HOLOGRAM: confirms.` },
  "C5": { group: "trainC", chip: "C5", title: "C5 — C.S4 Rebuild → C.S0' Banks'", body: `MESH: C.S4 Rebuild → C.S0' Banks'   (scale: C ; time: t5→t6)
INPUTS / OUTPUTS
- In: rebuilt priors/positions.
- Out: next isolated inventories.
PRECONDITIONS / EFFECTS
- Same master fold as After and Act VI.
- Next start [H].
FAILURE MODES
- Banks' stored as second lace.
BOUNDARY STAMP: [H]
HANDS CITE: one line.
SHADOW CITE: hologram t6; recursion (1).
HISTORY CITE: none.
DELTA vs HOLOGRAM: confirms.` },
  "C6": { group: "trainC", chip: "C6", title: "C6 — C.Locate (bridge)", body: `MESH: C.Locate   (scale: C ; bridge)
INPUTS / OUTPUTS
- In: this feels loud / I can't speak here / you're bad.
- Out: BANKS|RAPIDS|DELTA|CROSSING and a route to OBS request | INVALID | UNK | DELTA.
PRECONDITIONS / EFFECTS
- Diagnosis of place, not of person.
- Manual escapement start.
BOUNDARY STAMP: [H]
HANDS CITE: AgentScope KEEP failure taxonomy for holder.
SHADOW CITE: Water F1; hologram LOCK/RELEASE.
HISTORY CITE: pass 1 living-lace scheduler is not this function.
DELTA vs HOLOGRAM: confirms.` },
  "C7": { group: "trainC", chip: "C7", title: "C7 — C.Anchor (bridge)", body: `MESH: C.Anchor   (scale: C ; bridge)
INPUTS / OUTPUTS
- In: one pointable thing (quote, time, the sentence you said).
- Out: OBS node with pointer metadata in talk.
PRECONDITIONS / EFFECTS
- Makes delta conditions possible.
- Does not append POINTER @ j.
INVARIANTS
- Talk address ≠ lace index.
- Filling emission from OBS format [X].
FAILURE MODES
- Anchor as emission.
- Water's own OBS-format [GAP] used to fill Hands [GAP].
BOUNDARY STAMP: [H]; emission [GAP]; as mechanism [X]
HANDS CITE: manifest Q2 sealed [GAP].
SHADOW CITE: Water F2; hologram Anchor ≠ emission [GAP]; Water open params.
HISTORY CITE: pass 2 unary POINT still left seams open.
DELTA vs HOLOGRAM: confirms.` },
  "C8": { group: "trainC", chip: "C8", title: "C8 — C.Pair (bridge)", body: `MESH: C.Pair   (scale: C ; bridge)
INPUTS / OUTPUTS
- In: OBS_A, OBS_B.
- Out: DELTA.
BOUNDARY STAMP: [H]; as array type [X]
HANDS CITE: D types only WORD/POINTER.
SHADOW CITE: Water F3.
HISTORY CITE: none.
DELTA vs HOLOGRAM: confirms.` },
  "C9": { group: "trainC", chip: "C9", title: "C9 — C.Unknowns (bridge)", body: `MESH: C.Unknowns   (scale: C ; bridge)
INPUTS / OUTPUTS
- In: I don't understand / missing context.
- Out: UNK entries naming required OBS.
INVARIANTS
- Unresolved UNK blocks coherent crossing.
- Same discipline as Hands [GAP]; different object.
FAILURE MODES
- Fill Lace [GAP] to soothe talk UNK.
- UNK budget imported as Core pruning (Hands: no pruning parameter).
BOUNDARY STAMP: [H]; fill-Hands [X]/[GAP]
HANDS CITE: manifest open questions stay open.
SHADOW CITE: Water F4; hologram Water open params [GAP].
HISTORY CITE: D01 silence ≠ assent.
DELTA vs HOLOGRAM: confirms.` },
  "C10": { group: "trainC", chip: "C10", title: "C10 — C.Reject (bridge)", body: `MESH: C.Reject   (scale: C ; bridge)
INPUTS / OUTPUTS
- In: you're bad / obviously / that's stupid.
- Out: INVALID + request for OBS/UNK.
INVARIANTS
- Heat, no payload.
- Not a moral verdict stored on WORD.
BOUNDARY STAMP: [H]
HANDS CITE: Piece 14.
SHADOW CITE: Water F5; INVALID.
HISTORY CITE: D04 INVALID-never-enters typed-laces — do not revive as ingest gate.
DELTA vs HOLOGRAM: confirms.` }
});
