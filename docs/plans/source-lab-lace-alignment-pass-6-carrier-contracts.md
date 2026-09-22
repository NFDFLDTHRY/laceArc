# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 6 carrier contracts

**Status:** EXECUTED PASS-6 ARTIFACT.
**Execution base:** 9c1e02ac0ad38dd9708a8c38dcd3a82c801ed5c4.
**Authority:** maps-level backend-neutral contract derivation. No concrete carrier is selected. OPFS, IndexedDB, filesystem, network storage and equivalent products are outside this decision.

## 1. Verdict

**CARRIER OBLIGATIONS CLOSED WITH RULING DEBT.**

The repository now contains enough law to state what any authoritative carrier must preserve without choosing the backend.

The remaining ruling debt is primarily:

- R3: volatile vs durable lifetime;
- exact required supported lifetime/domain;
- concrete encoding and physical commit/detection mechanism;
- R4 refused-arrival custody after a refusal;
- concurrency/publication details where a future implementation needs them.

## 2. K1 — one authoritative retained history

The physical implementation must expose exactly one ordered authoritative Lace history.

A cache, loaded Wasm region, derived index, frontier, replay handle, GPU buffer, tensor or view may duplicate bytes for execution, but it is not a second authority if:

1. its authoritative source is named;
2. loss of the derivative cannot change Lace truth;
3. it has no independent append/mutation authority;
4. it can be discarded/reconstructed without inventing rows.

Two independently authoritative copies are forbidden.

## 3. K2 — append

A successful retained append must:

- assign exactly one fresh permanent position to the appended section;
- preserve every earlier position/content association;
- expose no old-row rewrite, delete, renumber, reuse or truncation as part of success.

The carrier may use any physical representation that proves this abstraction.

## 4. K3 — addressability / replay

The carrier must make earlier retained positions recoverable sufficiently for current mechanisms:

- root recovery;
- RootTouch;
- Join validation;
- finite grounding;
- sampling;
- star/search replay.

This may be implemented by direct seek, a derived index, scan, replay, segmented mapping, or another first-party mechanism.

The contract is addressability/recoverability. It is not "every row must have a live native pointer."

## 5. K4 — prefix consistency

A reader of authoritative prefix L[0:n) must observe a prefix that could actually exist under the append-only history.

No reader may fabricate a mix of bytes from incompatible commit states and call that Lace.

Exact multi-thread publication/memory-order semantics remain R9/open where a future concurrent implementation needs them. A serial implementation does not gain a hidden concurrency requirement from this contract.

## 6. K5 — capacity disclosure

Every carrier implementation must publish pointable finite limits:

- supported authoritative rows and/or bytes;
- supported logical Index domain;
- maximum simultaneously resident Core bytes;
- any required contiguous resident allocation;
- refusal threshold before the next permanent position cannot be represented/materialized.

"Infinite" is not a physical contract.

## 7. K6 — recovery identity

Two source-permitted lifetime classes remain.

### Volatile

The process/session-held Lace is authoritative only for that declared lifetime. On loss/reload it does not pretend that old positions still exist.

This is compatible with substrate law as a finite lifetime choice.

### Durable

A restart must reconstruct the same committed authoritative prefix:

- same row order;
- same permanent logical positions;
- no manufactured duplicates;
- no reordered rows;
- no skipped committed middle;
- derived caches may be absent and rebuilt.

The production distribution document contains a proposal that a durable deliverable needs persistence and would make volatile mode demo-only. That proposal explicitly records its acceptance/hosting interpretation as unresolved, so Pass 6 does not convert it into an accepted R3 ruling.

## 8. K7 — interrupted physical append

The authoritative abstraction is logically all-or-nothing:

- a complete committed row belongs to L;
- an unsuccessful append may not rewrite the previous prefix or report false success.

For a durable physical carrier, an interrupted write may leave physical debris only if recovery can detect that it is outside the committed authoritative prefix.

Pass 6 does not choose:

- checksum format;
- footer/length scheme;
- journal protocol;
- segment header;
- fsync strategy;
- storage API.

It derives only the obligation that an incomplete physical tail must never be mistaken for a committed Lace row.

## 9. Authority placement

| State | May survive? | May be lost? | Write authority to Lace? |
|---|---|---|---|
| authoritative carrier history | according to selected R3 lifetime | only according to declared lifetime/failure contract | yes, through the single admitted append boundary |
| resident Core cache/window | optional | yes; loss costs reconstruction/time | no independent authority |
| root/index/search cache | optional | yes; rebuild from authoritative prefix | no |
| holder/application working state | behavior-dependent | according to holder contract | no automatic Core authority |
| WebGPU/WGSL projection state | optional | yes | no |
| WebNN tensor/device state | optional | yes | no |

## 10. Carrier scenario comparison

| Scenario | Can satisfy one-strand authority? | Resident coupling | Durability | Main debt | Target pressure |
|---|---|---|---|---|---|
| C6-A monolithic resident linear memory | yes, if that memory is the sole authority for its lifetime | H = R | volatile unless another persistence mechanism exists | finite ceiling; reload semantics | strong coupling between total supported history and Wasm resident domain |
| C6-B durable append-only log + bounded resident window | yes, if log is sole authority and window is derivative | H may exceed R | yes in principle | stable mapping, commit boundary, recovery proof | target depends mainly on R, not H |
| C6-C segmented append-only authoritative history | yes, if segments compose one ordered logical strand | H may exceed any one segment/window | volatile or durable | position→segment mapping, rollover, recovery order | target depends on resident window, not total segments |
| C6-D volatile session strand | yes for declared session lifetime | implementation choice | no cross-restart persistence | product lifetime decision | target depends on session resident requirement |
| C6-E other | only with explicit authority proof | unknown | unknown | must satisfy K1–K7 | no credit until specified |

No scenario is selected.

## 11. Behavioral-source persistence pressure

### HCC-A

HCC-A requires recurrent feedback and mutable holder-local Story/Meaning/Emotion/Identity-related working state. The Pass-4 map explicitly places that mutability above Lace and allows replayable/ephemeral realization.

It does not state that authoritative Lace must survive browser/process restart.

### Coffee Cup

Coffee Cup requires aftermath to alter later conditions while the impact itself remains resolved history.

It states causal recurrence across later rounds, not a physical storage-backend lifetime. A holder may require persistence to realize a particular product lifetime, but the source alone does not select R3.

### Water / Dual Proofing

Water requires stateful S0–S4 progression and holder-local proofing state.

The source distinguishes desired working behavior from Lace row types and leaves several interface parameters open. It does not establish that authoritative Lace must outlive a process.

### Result

Behavioral recurrence creates a **lifetime question**, not an automatic durable-carrier answer.

The implementation must state the behavioral lifetime it promises and then choose a carrier mode that can support it. Pass 6 does not reverse that dependency.

## 12. Carrier verdict

The backend-neutral obligations K1–K7 are sufficiently specified to reject invalid carrier designs now.

What remains open is which valid lifetime/backend/encoding is required.

**Carrier verdict: CARRIER OBLIGATIONS CLOSED WITH RULING DEBT.**
**Concrete backend: OPEN.**
**R3 lifetime: OPEN.**
