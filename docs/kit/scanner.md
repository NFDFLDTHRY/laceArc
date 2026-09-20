# Scanner

**Status:** CLOSED 6/6. Receipt: [scanner-fix-receipt.md](scanner-fix-receipt.md).  
**Station:** kit.  
**Executed:** [scanner-fix-pass-1-plan.md](scanner-fix-pass-1-plan.md) · [scanner-fix-pass-2-plan.md](scanner-fix-pass-2-plan.md) · [scanner-fix-pass-3-plan.md](scanner-fix-pass-3-plan.md) · [scanner-fix-pass-4-plan.md](scanner-fix-pass-4-plan.md) · [scanner-fix-pass-5-plan.md](scanner-fix-pass-5-plan.md) · [scanner-fix-pass-6-plan.md](scanner-fix-pass-6-plan.md).  
**Object:** how a quiet-door **rescan** must speak. Not the package door bytes.  
**Not:** live law. Not Hands. Not cold-doors pass 7. Not door #1 pass 7. Not door #2.  
**Emission:** `[GAP]`. No `src/`.

Miss this file exists to stop: after door #1 CLOSED 6/6 (`fab1864`), a rescan called it "low traffic" because LIVE was read as idle.

LIVE is route health. It is not idle.

---

## Split

```
  SCAN
    |
    +-- stamp     LIVE | DATED | STALE | PAUSED | SHUT
    |              (route health — cold-doors table)
    |
    +-- activity  QUIET | WORKED | CLOSED
                   (what this campaign did)

  which(path) = station ownership
  which is not activity
  LIVE is not idle
  CLOSED 6/6 is not STALE
```

---

## Sit at the last false rescan

| # | Door | Stamp | Activity | Idle? |
|---|---|---|---|---|
| 1 | Package | LIVE | CLOSED 6/6 (`fab1864`) | no |
| 2 | Kit index | LIVE | QUIET | yes *for that campaign* |
| 3 | Court | LIVE | QUIET | yes |
| 4 | Live law | LIVE | QUIET | yes |
| 5 | History | LIVE | QUIET | yes |
| 6 | Clock | LIVE | QUIET | yes |
| 7 | Hologram | LIVE | QUIET | yes |
| 8 | Gearing | LIVE | QUIET | yes |
| 9 | Coord | LIVE | QUIET | yes |
| 10 | Graphics | LIVE | QUIET on this door *as door*; graphics station HELD separately | not a stamp flip |

A later rescan that calls #1 low-traffic is lying.

The ten-door table in [`cold-doors.md`](cold-doors.md) is **not** patched this pass. Activity lives here until a later named pass.

THEN `4fe984b` and NOW `044257c` stay as written on the package door.

```text
LIVE is route health.
CLOSED 6/6 is activity.
Φ stays [GAP].
```

## Pass 2 — fields

Off the spine. Register not patched.

| # | Block | In | Does | Break | Gap | Role |
|---|---|---|---|---|---|---|
| S1 | stamp | a door path | names LIVE / DATED / STALE / PAUSED / SHUT from the register | treat stamp as "how busy this campaign was" | — | route health |
| S2 | activity | this campaign's work on that door | names QUIET / WORKED / CLOSED | treat activity as a stamp flip | how far back "this campaign" runs → pass 3 | campaign sit |
| S3 | `which` | a path | names the owning station | treat ownership as idle/busy | — | ownership |
| S4 | idle | stamp + activity | true only when stamp is healthy **and** activity is QUIET *for this campaign* | equate idle with LIVE | — | derived |
| S5 | LIVE | a door that still routes | says the route holds | treat LIVE as idle | — | stamp value |
| S6 | CLOSED | a finished 6-pass on that door | says activity is done; receipt exists | treat CLOSED as STALE | — | activity value |
| S7 | STALE | a pin or absence-claim that outlives the tree | says the stamp is wrong | flip LIVE to STALE because work happened | — | stamp value |
| S8 | the miss | last false rescan | LIVE was read as idle; #1 called low-traffic | repeat that rescan | — | diagnostic |

G2 stays `[GAP]`.

## Pass 2 deltas

| Ticket | Action |
|---|---|
| T1 | Eight In / Does / Break / Gap / Role rows |
| T2 | S5 Break = LIVE as idle; S6 Break = CLOSED as STALE; S7 Break = work flips LIVE |
| T3 | Spine sit table left in place |
| T4 | Register unpatched |

## Pass 3 — grain

Register is stamp. Receipt is activity. `which` is ownership. Three stay three. Register not patched this pass.

| Door | Register row | Receipt / activity file | `which` now | Collapse would look like |
|---|---|---|---|---|
| #1 Package | kit · LIVE · THEN/NOW pins · no activity column | CLOSED 6/6 `fab1864` on `quiet-door-1-receipt.md` | kit | drop the receipt; call #1 idle because LIVE |
| #2 Kit index | kit · LIVE · no pin as tip | none | kit | invent a CLOSED for the index because kit held the campaign |
| #10 Graphics | station **law** · LIVE | none as *door* receipt (graphics i1/i2 CLOSED live on graphics station) | **graphics** | keep register station=law and ignore `which`; or flip LIVE |
| #3–#9 | LIVE · station matches `which` | none | matches register | treat "no receipt" as STALE |

#3–#9 pattern: Court/law, Live law/law, History/history, Clock/hologram, Hologram/hologram, Gearing/gearing-meta, Coord/coord. Stamp LIVE. Activity QUIET *for the scanner campaign*. Ownership agrees.

A rescan that reads only the register cannot claim #1 was idle without ignoring the receipt.

## Pass 3 deltas

| Ticket | Action |
|---|---|
| T1 | Three-source grain |
| T2 | #1 LIVE vs CLOSED split; #10 law vs graphics |
| T3 | #3–#9 same-pattern line |
| T4 | Register unpatched |

## Pass 4 — walk

This walk reads three sources, then speaks two columns. It does not append WORD. Hands keeps A13 / B12 / C12. Core ASCII stays maps.

### Operator (from the scanner)

```
 ╔══════════════════════════════════════════════════════════════╗
 ║  LIVE is route health. It is not idle.                       ║
 ║  CLOSED 6/6 is activity. It is not STALE.                    ║
 ║  which is ownership. It is not activity.                     ║
 ╚══════════════════════════════════════════════════════════════╝

  for each named door:
    read register row     → stamp
    read receipt if any   → activity
    read which(path)      → station
    speak stamp AND activity
    never: LIVE ⇒ idle
    never: CLOSED ⇒ STALE
    never: work ⇒ STALE flip

  not "emit POINTER."
  not "append to D."
  not A13 arrive / through-star / continue.
```

### Application register

| # | Role | What arrives | What is walked | What continues | New machine? |
|---|---|---|---|---|---|
| S1 | stamp | register row | LIVE / DATED / STALE / PAUSED / SHUT | activity still to speak | no |
| S2 | activity | receipt if any | QUIET / WORKED / CLOSED | stamp still to speak | no |
| S3 | `which` | a path | owning station | not used as idle/busy | no |
| S4 | idle | stamp + activity | derived only when LIVE/DATED **and** QUIET | — | no |
| S5 | LIVE | a routing door | keep LIVE | do not say idle | no |
| S6 | CLOSED | a finished 6-pass | keep CLOSED | do not say STALE | no |
| S7 | STALE | a dead pin / absence-claim | keep STALE only if the tree outlived the claim | do not flip LIVE because work happened | no |
| S8 | miss | last false rescan | name it; do not repeat | — | no |
| D#1 | package | LIVE + CLOSED `fab1864` + `which` kit | speak both | — | no |
| D#2 | kit index | LIVE + no receipt + `which` kit | LIVE + QUIET *this campaign* | — | no |
| D#10 | graphics door | LIVE + register station law + `which` graphics | speak the station mismatch; do not flip LIVE | pass 5 may patch or refuse | no |

All `New machine?` = no.

### Scanner versus Core ASCII

```
 scanner.md                     systems-manifest-ascii.md
 ----------                     ------------------------
 kit                            maps (do not write)
 rescan walk                    Hands reading of the manifest
 stamp + activity               A–D / D1 tape / G2
 LIVE ≠ idle                    not this mechanism

 wrapper-as-Core                [X]
 Hands verbs pasted here        [X]
 G2 when / arity / adjacency    [GAP]
```

## Pass 4 deltas

| Ticket | Action |
|---|---|
| T1 | One walk box quoted from the scanner |
| T2 | Eleven-row register; all New machine?=no |
| T3 | Scanner↔Core ASCII seam |
| T4 | Register unpatched; maps file untouched |

## Pass 5 — patch or refuse

| Chosen | Why | What landed |
|---|---|---|
| REFUSE the Activity column. ALLOW a pointer. | Stamp column is still true. Activity already lives here. A new column would reopen a closed 6/6 as a seventh pass. A pointer is a route. | one sentence under the ten-door table on `cold-doors.md`; ten rows unchanged; LIVE unchanged; #10 station still `law` (noticed) |

#1 stays LIVE + CLOSED `fab1864`. Work did not flip LIVE.

## Pass 5 deltas

| Ticket | Action |
|---|---|
| T1 | Decision: refuse column |
| T2 | Pointer under the table, not in it |
| T3 | Ten rows + stamps untouched |
| T4 | #10 OWNS not rewritten |
