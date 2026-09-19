# Relationship evidence — Pass 5 plan

**Status:** PLAN only. Not run.  
**Station:** history (HELD Grok-evidence).  
**Object:** Drift-check of the Pass 4 park. Not a new evidence question.  
**Parent:** [`relationship-evidence-pass-4-close.md`](relationship-evidence-pass-4-close.md).  
**Not:** maps claim; apply A/B; companion edit; emission answers; Q1–Q5 redo; recovery pass 8; quiet-door #5; Pass 6 by default.  
**Emission:** `[GAP]`. No `src/`.

```
pull/ff → refresh history
        → write this plan
        → index
        → check · commit
        → STOP
execute (later, one authorized tick):
        → compare companion blob to 2628df45
        → write docs/history/relationship-evidence-pass-5-drift.md
        → stamp this plan EXECUTED
        → index
        → check · commit
        → STOP
        → do not claim maps
        → do not release unless the human says free
```

---

## 0. One question

Did the parked target move?

Pass 4 said history owes no more evidence work unless the companion blob changes, the packet is rewritten, or the human names a new question. “Plan pass 5” is not a new question about words and definitions. It is permission to look at the park.

Two legal execute outcomes:

| Observation | Stamp |
|---|---|
| Companion still `2628df45`; packet untouched; maps still not holding A/B work | **NO-DRIFT.** Park stands. No new loci. |
| Companion blob moved | Sit whether the join is now explicit (A/B stale) or still missing (handoff refresh). Still do not apply. |

Do not invent Q6. Do not treat cadence as a reason to reopen Hands.

---

## 1. Inherited park (do not redraw)

- Packet and Pass 1–3 artifacts stay.
- A/B wording stays in Pass 1 findings and Pass 3 handoff.
- Loci stay: star **453–464**; neighborhood **210–218 / 345–356 / 442–451 / 464** — valid only while blob `2628df45` holds.
- Q1–Q4 CONFIRM. Q5 NARROW Hands vs companion.
- Φ `[GAP]`.

---

## 2. Six execute steps (local; not run on this tick)

### Step 1. Freeze

Refresh main. Hash `docs/systems-manifest-ascii.md`. Read maps STATUS. Confirm packet bytes vs last known.

### Step 2. Compare

`2628df45` vs live blob. Packet path vs live hash if cheap.

### Step 3. Disposition

NO-DRIFT or REFRESH-HANDOFF. No third flavor that fills Φ.

### Step 4. Attack

Refuse: drift-check as DIAGRAM SOUND; drift-check as apply A/B; drift-check as “history must keep passing forever”; line numbers reused after a blob change without a re-read.

### Step 5. Park or refresh

If NO-DRIFT, point at Pass 3 handoff and Pass 4 close. If blob moved, write new line ranges on the new blob in the drift file — still proposals, still maps-owned.

### Step 6. Artifact

Write [`relationship-evidence-pass-5-drift.md`](relationship-evidence-pass-5-drift.md). Stamp this plan EXECUTED. Do not edit the companion. Do not claim maps. Do not auto-release. Do not open Pass 6 in that same tick.

---

## 3. Execute may write

| Path | Why |
|---|---|
| `docs/history/relationship-evidence-pass-5-drift.md` | Drift stamp |
| `docs/history/relationship-evidence-pass-5-plan.md` | Receipt |
| `docs/history/README.md` | Index |
| `docs/coord/stations/history.station` | Refresh |

---

## 4. Execute must not write

- `docs/systems-manifest-ascii.md` and other maps paths
- manifest, law, pointer draft, graphics bytes
- `src/`
- Quiet-door #5
- A Pass 6 plan unless the human asks

---

## 5. Stop test

**This planning tick:** plan exists, indexed, no drift file yet.

**Execute:** one stamp (NO-DRIFT or REFRESH-HANDOFF); A/B unapplied by this agent; maps unclaimed by this agent; Φ `[GAP]`.

---

## 6. Planning receipt — 19 September 2026

**Performed:** Pass 4 close `f9b1233`; human instruction “Plan pass 5”; `git pull --ff-only`; `coord.sh refresh` + `check` at `a22ea28c704860adfa7505716b29529852137ab3`; live companion still `2628df45`; maps FREE; this plan written.

**Not performed:** drift execute; maps claim; A/B apply; release; Pass 6.

**Stations:** history HELD Grok-evidence. maps FREE. Door #5 CLOSED. Φ `[GAP]`.

Shoe in hands. Pass 5 watches the lid. It does not lift it.
