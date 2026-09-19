# Relationship evidence — Pass 4 plan

**Status:** EXECUTED (close published). A/B still NOT_APPLIED. Maps unclaimed. Hold remains.  
**Station:** history (HELD Grok-evidence).  
**Object:** Close-and-park receipt for the evidence campaign on history.  
**Parents:** Pass 1 findings `9019506`; Pass 2 findings `2414b8b`; Pass 3 handoff `4dd26c7`.  
**Not:** maps claim; apply A/B; companion edit; emission answers; recovery pass 8; quiet-door #5; a fifth evidence reread; Pass 5 by default.  
**Emission:** `[GAP]`. No `src/`.

```
pull/ff → refresh history
        → write this plan
        → index
        → check · commit
        → STOP
execute (later, one authorized tick):
        → write docs/history/relationship-evidence-pass-4-close.md
        → stamp this plan EXECUTED
        → index
        → check · commit
        → STOP
        → release history only if the human says free
```

---

## 0. One question

Is there any remaining *history-station* work on this campaign, or is the next object a different door?

Pass 4 answers that on paper. It does not walk the maps door.

---

## 1. What is already closed (do not reopen)

| Pass | Closed | Still not this |
|---|---|---|
| 1 | Text Q1–Q5; A/B wording proposed | Image row was BLOCKED then |
| 2 | Independent reread; A–D VIEWED; Q1–Q4 CONFIRM; Q5 NARROW Hands vs companion | Mapper; Φ |
| 3 | Companion search at blob `2628df45`; join still missing; loci for A/B | Apply A/B |

Samples A/B, manifest blob `ca8b7d7`, packet, and Pass 1–3 artifacts stay. Sampling is not rerun. Q1–Q5 are not asked again unless a later companion *edit* changes the exhibit.

---

## 2. Remaining objects (not history execute)

| Object | Owner | Pass 4 relation |
|---|---|---|
| Sit / apply A/B on `docs/systems-manifest-ascii.md` | maps (FREE at plan time) | Named, not performed |
| Third independent reader | some other agent | Named as absent, not impersonated |
| Φ / pointer-emission answers | human, in-repo | Named as `[GAP]`, not filled |
| Physical lace | hands | `NOT_PERFORMED` |

If execute finds maps already HELD or the companion blob moved, the close receipt records that fact. It still does not claim maps.

---

## 3. Six execute steps (local; not run on this tick)

### Step 1. Freeze

Refresh main. Record companion blob vs `2628df45`. Record maps STATUS. History still HELD by Grok-evidence.

### Step 2. Inventory without new questions

One table: packet, Pass 1–3 files, pins, dispositions. No new Q6.

### Step 3. Test “must history do more?”

History *would* owe more only if:

- companion blob changed and the join is now explicit (A/B stale), or
- packet/findings bytes were rewritten, or
- the human named a new evidence question.

Otherwise the answer is **no**.

### Step 4. Attack the close

Refuse:

- Close means A/B were applied.
- Close means Φ was accepted.
- Close means the companion is DIAGRAM SOUND.
- Close is quiet-door #5 or pass 8.
- Close authorizes `src/`.

### Step 5. Park

State the parked pointer: maps-handoff path + A/B loci. State the hold: release only on human “free”; do not auto-release on execute unless that line is in the proceed instruction.

### Step 6. Bounded artifact

Write [`relationship-evidence-pass-4-close.md`](relationship-evidence-pass-4-close.md). Stamp this plan EXECUTED. Do not edit the companion. Do not claim maps.

---

## 4. Execute may write

| Path | Why |
|---|---|
| `docs/history/relationship-evidence-pass-4-close.md` | Close receipt |
| `docs/history/relationship-evidence-pass-4-plan.md` | Stamp |
| `docs/history/README.md` | Index |
| `docs/coord/stations/history.station` | Refresh / optional later release |

---

## 5. Execute must not write

- `docs/systems-manifest-ascii.md` and other maps paths
- manifest, law, pointer draft, graphics bytes
- `src/`
- Quiet-door #5
- A Pass 5 plan (unless the human asks)

---

## 6. Stop test

**This planning tick:** plan exists, indexed, no close file yet.

**Execute:** close receipt exists; A/B unapplied by this agent; maps unclaimed by this agent; Φ `[GAP]`; no new evidence question invented.

---

## 7. Planning receipt — 19 September 2026

**Performed:** Pass 3 execute `4dd26c7`; human instruction “Plan pass 4”; `git pull --ff-only`; `coord.sh refresh` + `check` history Grok-evidence at `d81e79b4d541138ac7ec0f8df7413013d2cf72fb`; maps observed FREE; this plan written.

**Not performed:** close file; maps claim; A/B apply; release; Pass 5.

**Stations:** history HELD Grok-evidence. maps FREE. Door #5 CLOSED. Φ `[GAP]`.

## 8. Execute receipt — 19 September 2026

**Performed:** refresh/check at `a9276688e1ff4c1006abc898a27076e48d325728`; companion blob still `2628df45`; maps FREE; wrote [`relationship-evidence-pass-4-close.md`](relationship-evidence-pass-4-close.md); no new Q; no release.

**Not performed:** maps claim; A/B apply; Φ answers; Pass 5.

Shoe in hands. Ticket closed as execute. Campaign hold remains until the human says free.

