window.LACE_CONTRACTS = Object.assign(window.LACE_CONTRACTS || {}, {
  "E1": { group: "escape", chip: "E1", title: "E1 — Rapids LOCK", body: `MESH: Rapids LOCK   (scale: A×B×C ; time: t2)
INPUTS / OUTPUTS
- In: A×A in RAPIDS, no OBS, Traj window burning.
- Out: no tick on the tape; grind.
PRECONDITIONS / EFFECTS
- Power on, teeth not engaged.
- Grind is not a tick (clock law).
INVARIANTS
- Loud ≠ transfer.
- Do not emit to soothe lock.
FAILURE MODES
- Count grind as append.
- Fidelity mirror / C-machine counts as Lace evidence (history).
BOUNDARY STAMP: [H]; grind-as-tick [X]
HANDS CITE: emission [GAP]; Piece 1 only legal growth is append of the strand, not of heat.
SHADOW CITE: hologram LOCK @ t2; clock grind is not a tick.
HISTORY CITE: pass 1 mirror/BFS/replay; pass 2 C-machine false attribution.
DELTA vs HOLOGRAM: confirms.` },
  "E2": { group: "escape", chip: "E2", title: "E2 — Locate/Anchor RELEASE", body: `MESH: Locate/Anchor RELEASE   (scale: A×B×C ; time: t2)
INPUTS / OUTPUTS
- In: one pointable thing.
- Out: structure shared; each A keeps own M/E; window may be used.
PRECONDITIONS / EFFECTS
- Only manual escapement when A×A locks (hologram law of the machine).
- Release ≠ POINTER cut.
INVARIANTS
- Meaning stays local.
- Repair sentence is the clutch lever.
FAILURE MODES
- Skip Locate (over Rel).
- Treat RELEASE as emission.
BOUNDARY STAMP: [H]; emission [GAP]
HANDS CITE: Q2 [GAP].
SHADOW CITE: hologram RELEASE @ t2; repair utterance.
HISTORY CITE: pass 1 kernel sentence.
DELTA vs HOLOGRAM: confirms.` },
  "R1": { group: "escape", chip: "R1", title: "R1 — Master recursion (After ≡ Rebuild ≡ ActVI)", body: `MESH: B.After ≡ C.S4 ≡ A.ActVI → next start   (scale: A×B×C ; time: t5→t6→t0')
INPUTS / OUTPUTS
- In: holder scripts + rebuilt banks + Act VI world-rule.
- Out: next Cond / Banks / PFC.
PRECONDITIONS / EFFECTS
- Three names, one fold.
- Stamps must be split, not smeared.
INVARIANTS
- [H] — holder recirculation.
- Metaphor [I] — more world / maybe later more cord (growth kin).
- [X] — mutate WORD @ i / merge L onto D / Reidemeister.
FAILURE MODES
- One stamp for the whole fold.
- Closed ring on the workpiece.
- Substitution rewrite of occurrence history (D06 thought experiment used as write).
BOUNDARY STAMP: [H] | metaphor [I] | mutate-WORD [X]
HANDS CITE: Piece 1; Kauffman hitch = later grab as more cord, not retie; FORBID closed loop / Reidemeister.
SHADOW CITE: hologram recursion (1); philosophy-map tooth 5→1; law After≠file tooth 4.
HISTORY CITE: pass 2 D06 substitution; pass 1 closed ring dead.
DELTA vs HOLOGRAM: confirms.
NOTE: No conflict requiring stop. Hands and hologram agree on the three-way stamp.` }
});
