# Repo coherence audit — standing current-tip process prompt

**Classification:** STANDING PROCESS. Not Hands. Not law. Not Core. This prompt defines a way to detect drift; it does not authorize edits outside a separately claimed station.

**Current baseline, 2026-09-22:** the live entry story is `AGENTS.md` → [`context-pass.md`](context-pass.md) → current source/consumer closure, with [Global ASCII Pass 39](../systems-manifest-ascii.md#pass-39--behavioral-read-devices-pass-6--whole-campaign-reconciliation) as the current integration overlay. Earlier A1–A14 coherence ticks are historical campaign records in `docs/coherence-audit-log.md`; do not replay their old hotspot list as the definition of current coherence.

**Current gate:** pointer construction/sampling prose is reconciled but unaccepted; RM-A retain-when remains OPEN / MISSING-A; G1 OPEN; R3 OPEN; TARGET UNDECIDED; GAP-HOST open; exact H×C×W coupling open; no `src/`.

```
╔══════════════════════════════════════════════════════════════════════════════╗
║  LACEARC · COHERENCE AUDIT · CURRENT TIP · FIND DRIFT, DO NOT CREATE LAW  ║
╚══════════════════════════════════════════════════════════════════════════════╝

  PIN current main
       |
       v
  READ AGENTS -> context-pass -> governing source -> consumer
       |
       v
  CLASSIFY claim/evidence/authority
       |
       v
  FIND drift
       |
       +--> owner claimed + bounded fix authorized -> FIX -> gate -> commit
       |
       +--> wrong station / human ruling / true open -> LOG / HANDOFF
       |
       v
  append a new audit tick only when maps is separately claimed
  never rewrite old ticks
```

## 1. Current coherence invariants

A live repository surface is coherent only if it preserves all applicable invariants:

### Core / gate
- Graphics A–D remain the structural source of record.
- current Core mathematics is S0–S8 plus the manifest mechanism catalog/contract registry.
- S9–S12 are non-Core read/observability/realization/machine overlays.
- RM-A retain-when remains OPEN / MISSING-A.
- G1 tokenization remains OPEN.
- R3 lifetime/carrier remains OPEN.
- pointer contract human acceptance remains ABSENT.
- no `src/` or implementation authority follows from documentation.

### Behavioral machine
- S9 = minimal read-device algebra; RD-1 no-write.
- S10 = observability/non-identifiability/provenance court.
- S12 = optional device-local operators, **not** a fixed common chassis.
- HCC/Coffee Cup/Water blueprints are mathematical target machinery, not implementations.
- exact H×C×W coupling/schedule remains OPEN.
- Candidate != Evidence.
- Verifier != Truth.

### Water
- raw blocking-UNK / lexical-INVALID language may remain as source/history.
- current target UNK is nonblocking expected-evidence shape.
- current target INVALID requires later pointable refuting evidence.
- no live target may silently restore a stop-word/invalid-phrase table.

### Technical / target
- S11 separates Cargo/rustc/Wasm/HOST/WebGPU/WGSL/WebNN planes.
- GAP-HOST remains explicit until its missing primary source is supplied.
- compute plane does not determine evidence class.
- SOURCE-SPECIFIED capability != browser/device execution.
- compilation target is **TARGET UNDECIDED**.
- wasm64 is conditional; wasm32 is a candidate, not an accepted answer.
- Cargo A4 is already available/mapped; “A4 next” is historical.

### Prompt / transport
- a historical creation ticket must not be replayed over an existing product.
- a live prompt must route to the current product/current law.
- a transport copy may be DATED, but must say live law wins.
- “file exists” or “reconciled” never means “human accepted.”

## 2. Current drift classes to hunt

```
C1  target silently resealed to wasm64
C2  A4 advertised as missing / next
C3  Pass 26–28 or Pass 38 presented as the current whole-repo tip
C4  S9–S12 absent from a live entrance that claims to explain current machinery
C5  S9–S12 promoted into Core
C6  RM-A/G1/R3/GAP-HOST silently closed
C7  blocking-UNK or lexical-INVALID restored as current Water law
C8  research shelf described only as forbidden/decorative
C9  fixed common behavioral chassis resurrected
C10 Candidate promoted to Evidence
C11 Verifier/model score promoted to Truth
C12 blueprint called implementation
C13 historical creation ticket replayed over an existing product
C14 transport copy outruns live law without declaring itself dated
C15 acceptance inferred from file existence/reconciliation
C16 source capability reported as executed device fact
C17 cross-station fix made without claiming the owner
C18 true historical wording “cleaned up” until provenance is lost
```

## 3. Run protocol

1. `git pull --ff-only origin main`; state the SHA.
2. Read `AGENTS.md` and `context-pass.md`.
3. Select **one bounded surface or relation**, not the entire repository by habit.
4. Use `coord.sh which <path>`; claim the owning station before any edit.
5. Record each finding as:
   - path / line or heading;
   - current claim;
   - governing source;
   - class: `drift | conflict | open | historical-ok | current-ok`;
   - evidence/authority strength;
   - repair allowed? yes/no and why.
6. If repair is within the claim and changes no human ruling, fix it.
7. If it is a true open, human ruling, foreign station, or historical record, preserve it and hand it off.
8. Gate changed paths before commit.
9. If a coherence-log tick is part of the authorized task, claim **maps** separately and append only. Never rewrite an earlier tick.
10. Release the station.

## 4. Historical campaign rule

The old A1–A14 campaign remains evidence about its named tips. It is not deleted and not re-stamped “current.” Old findings such as Petersen-absent, broad arity/emission uncertainty, or old RESYNC state must be read as dated unless a live source independently re-establishes them.

## 5. What an audit may fix without inventing law

When the correct station is claimed and the task authorizes it:

- stale current-status wrappers;
- wrong product routes;
- stale “absent/untracked/next” claims contradicted by existing current products;
- live index descriptions that lag the product they index;
- missing supersession qualification around preserved historical text;
- current-target labels that contradict an already-recorded human ruling.

It may **not**:

- create a new Core mechanism;
- choose RM-A;
- choose tokenization;
- choose R3;
- select wasm32/wasm64;
- accept the pointer contract;
- invent H×C×W scheduling;
- erase raw-source/history because it is no longer current;
- add `src/`.

## 6. Receipt shape

```
### tick YYYY-MM-DD · <surface> · tip <sha>
- finding:
- class:
- governing source:
- evidence scope:
- fix:
- station:
- open gates preserved:
- next narrow question:
```

A current audit is successful when the reader can distinguish **current**, **historical**, **open**, **source-only**, **Lab evidence**, and **accepted** without guessing.

A diagram of a hole is not a lid.
