# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 6 capacity / recovery / target re-entry

**Status:** EXECUTED PASS-6 ARTIFACT.
**Execution base:** 9c1e02ac0ad38dd9708a8c38dcd3a82c801ed5c4.
**Authority:** maps-level derivation. No target, carrier backend, row encoding, RM-A rule, retry policy, or implementation is selected.

## 1. Capacity / refusal contract

### R6-A preflight

Before committing a retained row, the implementation must establish that the next fresh logical position and required authoritative carrier capacity are available inside its declared supported domain.

### R6-B exhaustion

If the next row cannot be represented/materialized within the declared domain:

- do not wrap;
- do not reuse an earlier Index;
- do not renumber prior rows;
- do not truncate old Lace;
- do not rewrite prior content;
- do not report success.

The authoritative prefix remains unchanged.

### R6-C logical commit boundary

Existing branch-contract and execution-model obligations are sufficient to derive a logical all-or-nothing authority boundary:

~~~
before = L
successful append = L + exactly one admitted row
unsuccessful append = L
~~~

A durable physical carrier may contain an interrupted, detectable tail outside the committed prefix. It may not promote that tail to authoritative Lace during recovery.

The physical detection/commit representation remains backend-specific and OPEN.

### R6-D refused-arrival custody

Current law does not decide what happens to the arrival after refusal.

~~~
arrival
  |
capacity preflight
  |
  +--> enough capacity --> commit one row
  |
  +--> insufficient --> REFUSE before authoritative mutation
                         |
                         +--> custody / retry / discard / upstream behavior OPEN
~~~

Pass 6 does not invent retry semantics.

## 2. Capacity forecasts

Operational tooling may later report:

- logical positions remaining;
- authoritative bytes remaining;
- resident bytes remaining;
- hypothetical exhaustion time under a named workload.

Those are estimates. They cannot change the append/refusal semantics.

No forecast is computed here because row encoding, workload and supported product domain remain OPEN.

## 3. Restart / recovery modes

### Volatile

Contract obligations:

- declare the authoritative lifetime explicitly;
- after lifetime ends, do not expose stale positions as if the old Lace still exists;
- no durability claim.

### Durable

Minimum recovery obligations:

1. acknowledge append only at a defined authoritative commit boundary;
2. recover the same committed prefix after restart;
3. preserve permanent positions;
4. manufacture no duplicate or reordered rows;
5. treat incomplete tail as absent or detectably non-authoritative;
6. allow derived caches/indexes/frontiers to be discarded and rebuilt;
7. keep holder and Layer-III state separately classified.

No file/API/format is chosen.

## 4. Performance inventory

The Pass-6 search of current governing/project surfaces found no accepted numeric service level for Core execution.

| Requirement class | Current accepted numeric value |
|---|---|
| latency | OPEN |
| throughput | OPEN |
| resident Core memory | OPEN |
| startup/recovery time | OPEN |
| energy | OPEN |
| thermal | OPEN |
| GPU transfer/window budget | OPEN |
| search frontier/window budget | OPEN |

The recorded distribution goal includes a human-reported requirement that an installed production app not require a server reconnect after installation. The same kit document records unresolved interpretation/acceptance around the proposed production surface. In either case, this is an offline/connectivity property, not a numeric latency or resident-memory budget.

Therefore a semantically windowable implementation cannot be rejected for hypothetical slowness until a performance requirement exists and is measured.

## 5. Layer-III window separation

### WebGPU

Current evidence requires WebGPU to remain a derived Layer-III resource domain.

No current workload requires a whole-history GPU mirror.

Required GPU-visible window size: **OPEN / workload-dependent**.

Chunking/windowing is semantically harmless only when the projection/compute can be reconstructed from authoritative Lace and discarded GPU state has no write authority. Exact workload proof remains future work.

### WGSL

Current evidence does not require global logical Lace positions to be represented directly in a shader.

If a future shader needs global positions, its representation must be explicit. A base + local index scheme is a candidate technique, not a Pass-6 selection.

Required shader-wide logical Index: **NOT CURRENTLY REQUIRED / workload OPEN**.

### WebNN

No current accepted Core/holder workload requires WebNN at all.

Required tensor window: **NOT REQUIRED BY CURRENT WORKLOAD / future workload OPEN**.

A tensor uint64/int64 capability does not select host pointer width.

## 6. Target-discriminator table

A row with OPEN receives no target credit.

| Requirement | Current value | wasm32 consequence | wasm64 consequence | Target-discriminating? |
|---|---|---|---|---|
| logical Index width | OPEN; 32/48/64 analytical candidates | explicit wide logical value possible independently of pointer ABI | native usize may be wider but equivalence is not required | no, while OPEN |
| max authoritative rows | OPEN | no conclusion | no conclusion | yes when ruled |
| max authoritative bytes H | OPEN | may exceed R under lawful carrier | may also exceed R | only through chosen carrier relation |
| max resident Core bytes R | OPEN; no whole-history-resident law | must fit memory32 practical/declared implementation envelope | larger resident domain available if device/toolchain prove it | **yes**, primary |
| derived Core W | parametric sampling/search/frontier state | must fit alongside R | must fit alongside R | yes if a numeric required bound appears |
| required contiguous allocation | OPEN / none established beyond chosen resident objects | no conclusion | no conclusion | yes if > memory32 ability |
| required random-access range | authoritative history must be addressable/replayable; not necessarily resident | carrier translation may satisfy | direct wider resident addressing possible | no current winner |
| durability/recovery | R3 OPEN | target-neutral | target-neutral | no, absent a coupled implementation |
| latency/throughput | no accepted numeric SLA | no performance rejection available | no performance award available | no, while OPEN |
| GPU-visible window | OPEN Layer III | independent bounded resource | independent bounded resource | no Core target winner |
| WGSL index representation | no required global-index workload | explicit representation if later needed | explicit representation if later needed | no current winner |
| WebNN tensor window | no required workload | independent | independent | no current winner |

## 7. Target re-entry verdict

The Pass-6 plan requires one of READY, READY CONDITIONALLY, or NOT READY.

Current result:

**NOT READY FOR TARGET COURT.**

Reason:

- required supported domain is not numerically ruled;
- encoding envelope is symbolic only;
- resident correctness working set is parametric, not numerically bounded;
- R3 lifetime remains open;
- no numeric PWS/SLA exists;
- Layer-III required workloads/windows are not fixed.

Pass 6 has removed several false target discriminators, but it has not created the missing numbers.

Therefore:

~~~
TARGET = UNDECIDED
~~~

remains the only honest target state.

## 8. What would reopen the target court

A later target court becomes meaningful when the project can point to:

1. required supported logical domain or release tier;
2. selected/accepted row+Index encoding sufficient for capacity proof;
3. carrier class and H-to-R relationship;
4. numeric maximum required resident Core bytes, including required CWS;
5. any mandatory performance working-set/SLA bound;
6. R3 lifetime or proof that the target is independent of the remaining R3 branches;
7. actual required Layer-III workloads/windows.

Only then do rustc/Cargo/Pixel target probes spend evidence against a real requirement instead of against architecture invented for the probe.

## 9. Capacity/recovery verdict

- finite refusal boundary: REQUIRED;
- no-wrap/no-reuse/no-renumber: REQUIRED;
- logical failure leaves authoritative prefix unchanged: DERIVED;
- physical partial-write detection method: OPEN;
- refused-arrival custody: OPEN / human-product ruling;
- restart mode: OPEN R3;
- durable recovery obligations: DERIVED conditionally;
- numeric performance budget: OPEN;
- target re-entry: **NOT READY**.
