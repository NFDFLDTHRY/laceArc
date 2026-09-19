# Relationship evidence — Pass 5 drift

**Status: EXECUTED. Stamp: NO-DRIFT.**  
**Not applied:** A/B. **Not claimed:** maps. **Not accepted:** emission.  
**Not:** Q1–Q5 redo. **Not:** pass 8. **Not:** quiet-door #5. **Not:** Pass 6.

```
PARK PIN          2628df45   companion
LIVE BLOB         2628df45   companion
PACKET            6a1896b0   unchanged
MAPS              FREE
        |
        v
     NO-DRIFT
     loci 453–464 and neighborhood still point
     Pass 3 handoff still the maps pointer
     Φ [GAP]
```

## 1. Freeze

| Object | At execute |
|---|---|
| Run pin | `bd6ff511a38a757e2ab3c112a93441ef105c33c0` |
| History | HELD Grok-evidence |
| Maps | FREE |
| ASCII live | `2628df45e644f56b27e03c4af4460e89b47f905d` |
| ASCII park (Pass 2–4) | `2628df45e644f56b27e03c4af4460e89b47f905d` |
| Packet | `6a1896b0b9f1c6319a0f7329a167562a47185961` |

Match. No companion edit since the handoff. No packet rewrite. Human did not name a new evidence question; this tick was the drift-check itself.

## 2. Disposition

**NO-DRIFT.** Park stands. Line ranges in [`relationship-evidence-pass-3-handoff.md`](relationship-evidence-pass-3-handoff.md) remain valid for blob `2628df45`:

- A: star caption **453–464**
- B: piece board **210–218** / A-list **345–356** / participation **442–451** / after star **464**

Do not reuse those numbers on a later blob without a new read.

## 3. Attack

This stamp is not DIAGRAM SOUND, not an A/B apply, not a reason to keep passing on history forever, and not Φ.

## 4. Hold

History stays HELD until the human says **free**. Pass 6 is not opened.

## 5. Execute receipt

**Performed:** `git pull --ff-only`; `coord.sh refresh` + `check` at `bd6ff51`; blob compare; this file; plan stamp; index.

**Not performed:** maps claim; companion edit; A/B apply; release; Pass 6.

Shoe in hands. The lid did not move.
