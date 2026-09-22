# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 6 findings

**Status:** EXECUTED 2026-09-21.
**Campaign:** Source → Lab → Lace Alignment — restart.
**Pass:** 6 — BOUND THE MACHINE.
**Plan:** [source-lab-lace-alignment-pass-6-plan.md](source-lab-lace-alignment-pass-6-plan.md).
**Recovered execution base:** 9c1e02ac0ad38dd9708a8c38dcd3a82c801ed5c4.
**Recovery context:** the prior Astra execution claim landed without semantic Pass-6 work and was human-authorized for release. This execution resumed the existing committed plan rather than replanning it.
**Implementation:** none.
**Core change:** none.
**RM-A:** remains open / MISSING-A.
**Pointer acceptance:** absent.
**Compilation target:** TARGET UNDECIDED.

Primary artifacts:

- [domain / encoding envelope](source-lab-lace-alignment-pass-6-domain-envelope.md) — 9a090bea540fa0d905047ecdedb3fda0b485f584
- [access / CWS / PWS map](source-lab-lace-alignment-pass-6-access-working-set.md) — da9a53bcab31361e40993b3a14f2a224eb4b0caf
- [backend-neutral carrier contracts](source-lab-lace-alignment-pass-6-carrier-contracts.md) — eb60b50c4bf9bd059dbf7df0b7449da820bb4059
- [capacity / recovery / target re-entry](source-lab-lace-alignment-pass-6-capacity-recovery.md) — c3a27f9069e87c8e040300dde8381aa0531f4073
- global ASCII Pass 38 — ac7db32bc53ec435af9b0cec507e5ec220a04e72

---

## 1. Direct answer to Pass 6

> What finite, pointable domain and memory/carrier envelope must any correct Lace implementation satisfy before a compilation target can be chosen honestly?

Current answer:

~~~
ONE AUTHORITATIVE RETAINED LACE

must have

- a declared finite logical Index domain;
- no wrap, reuse, renumber or truncation on exhaustion;
- a symbolic/selected row encoding sufficient to prove capacity;
- one authoritative carrier with stable ordered positions;
- address/replay access to earlier retained positions;
- a finite refusal boundary before unsupported mutation;
- explicit volatile or durable restart semantics;
- derived caches/windows/frontiers that are non-authoritative;
- holder / WebGPU / WGSL / WebNN state separated from Core authority;
- a numeric resident Core bound before target width can be judged.

Current evidence does NOT require
all authoritative history to be simultaneously resident.
~~~

That last line is the key Pass-6 result.

---

## 2. Four required verdicts

### Domain specification

**SUPPORTED DOMAIN BOUNDED CONDITIONALLY.**

Every finite implementation must declare its supported logical domain and refuse before it would alias an earlier permanent position.

The actual first-release cardinality remains OPEN.

### Carrier contract

**CARRIER OBLIGATIONS CLOSED WITH RULING DEBT.**

Backend-neutral obligations K1–K7 are now pointable.

Still open:
- R3 lifetime: volatile / durable / other;
- concrete backend;
- concrete encoding and physical commit/detection scheme;
- R4 refused-arrival custody;
- task-specific concurrency/publication proof.

### Working-set result

**CORRECTNESS WORKING SET PARAMETRIC.**

Current mechanisms require tail, point, finite-set, prefix-scan, window and global-derived access classes.

No current mechanism proved WHOLE-RESIDENT.

Sampling/search CWS remains parameterized by active sample/window/scale/frontier state and encoding.

### Target re-entry

**NOT READY FOR TARGET COURT.**

The court still lacks target-discriminating numbers:
- required supported domain;
- accepted encoding;
- numeric R;
- numeric required W/PWS;
- R3 lifetime or target-independent closure;
- required Layer-III workloads/windows.

Therefore **TARGET UNDECIDED** remains current.

---

## 3. Domain result

Pass 6 separates:

~~~
D = (I, E, H, R, W, V)

I logical Index domain
E encoded retained-row envelope
H total authoritative retained history
R simultaneously resident Core bytes
W disposable derived Core working state
V holder / Layer-III / view state
~~~

The false equivalences remain rejected:

~~~
I != native pointer width
H != R
R != W
W != authoritative Lace
V != authoritative Lace
~~~

Logical 32-, packed-48-, and 64-bit Index representations remain analytical candidates only.

No width is selected.

---

## 4. Encoding result

The current source supports only symbolic capacity accounting:

~~~
B_WORD = tag + payload + required metadata + padding

B_PTR  = tag + 2 * B_Index + required metadata + padding

B_avg  = p * B_WORD + (1-p) * B_PTR

N_resident = floor(R / B_avg)
~~~

WORD payload bounds and final metadata/padding are not accepted.

Therefore exact rows-per-4-GiB or rows-per-16-GiB claims remain unavailable.

---

## 5. Mechanism access / residence result

| Mechanism | Current minimum access result | CWS result |
|---|---|---|
| WORD arrival | tail-local | bounded |
| seen/root | prefix-scan sufficient in principle | bounded simultaneous scan state; G1 still open |
| RootTouch | finite-set(2) | bounded |
| Join | finite-set(2) | bounded |
| finite grounding | k-parametric selected operands | k-parametric input, constant per Join step |
| L-M20 sampling | prefix/window/global-derived | parametric, reconstructible |
| L-M21 search | explicit frontier/path + replayable history | parametric, disposable |
| RM-A | excluded | MISSING-A |

A resident root map, reverse-pointer table, Star table, full sampling lattice or search cache is not required semantic state.

Such structures, if ever admitted, are PWS/derived machinery and must be disposable without changing Lace truth.

---

## 6. Correctness versus performance

No accepted numeric Core service level was found for:

- latency;
- throughput;
- startup/recovery time;
- energy;
- thermal budget;
- GPU transfer/window;
- search/frontier size.

The human-reported production goal of no required server reconnect after install is a connectivity/lifetime property, not a numeric execution-speed requirement. Its production-host/durable interpretation remains explicitly unresolved in the kit record.

Therefore:

**PWS = OPEN.**

No target may win because an imagined cache would be faster.

---

## 7. Carrier contract result

Any carrier must satisfy:

1. one authoritative retained history;
2. one fresh-position append preserving the earlier prefix;
3. earlier-position addressability/replay;
4. prefix consistency;
5. explicit finite capacity/resident/refusal limits;
6. explicit volatile or durable recovery identity;
7. interrupted physical bytes may not become fabricated committed rows.

The abstract scenarios survive as scenarios:

- monolithic resident linear memory;
- durable authoritative log + bounded resident window;
- segmented one-logical-strand history;
- volatile session strand;
- another explicitly proven class.

No OPFS, IndexedDB, filesystem, database, network store or other product is selected.

---

## 8. Capacity / refusal result

Derived authoritative boundary:

~~~
before = L

successful append:
    L -> L + exactly one admitted row

failed / refused append:
    L -> L
~~~

On exhaustion:
- no wrap;
- no reuse;
- no renumber;
- no truncate-old-history;
- no false success.

Refused-arrival custody remains OPEN.

A durable backend may physically expose an incomplete tail only if it is detectably outside the committed authoritative prefix.

---

## 9. Behavioral persistence result

Pass-4 source maps were checked as desired-behavior mechanisms, not treated as holder machinery.

- HCC-A requires recurrent feedback and mutable holder-local state.
- Coffee Cup requires aftermath to alter later conditions without rewriting impact.
- Water requires stateful S0–S4 proofing progression.

None of the three original-source obligations, as currently mapped, states a browser/process persistence lifetime for authoritative Lace.

Behavioral recurrence therefore creates a **lifetime obligation to state**, not an automatic durable-storage decision.

---

## 10. Layer-III result

### WebGPU

No current required workload needs a whole-history GPU mirror.

Required window: OPEN / workload-dependent.

### WGSL

No current required shader workload needs the global logical Index directly.

Host pointer width remains separate from shader pointer/integer representation.

### WebNN

No current accepted workload requires WebNN.

Required tensor window: not currently required; future workload OPEN.

**Result:** Layer III still supplies no hidden wasm64 requirement.

---

## 11. Human / product ruling board

### Derivable from current law

- finite implementation must declare a supported domain;
- no wrap/reuse/renumber;
- one authoritative strand;
- failure/refusal cannot rewrite the prior prefix or report false success;
- caches/indexes/frontiers/views do not gain authority;
- whole-history residence is not currently required;
- logical Index width does not imply native pointer width;
- Layer III remains separate from Core authority.

### Experimentally measurable later

- candidate row-size costs;
- candidate Index-width storage costs;
- scan/replay/window memory;
- root/search/sampling performance;
- actual wasm32/wasm64 build closure;
- actual Pixel resident capacity/performance;
- actual GPU transfer/window behavior;
- actual WebNN workload support if one is required.

### Requires human / product ruling before a concrete implementation claim

- required first-release supported domain/lifetime;
- R6 final encoding / Index representation;
- R3 volatile vs durable lifetime, unless a later accepted product contract forces one;
- R4 refused-arrival custody;
- any numeric SLA/PWS requirement;
- any production retention promise that exceeds a volatile session.

These are exposed directly. None is buried inside target or carrier selection.

---

## 12. Target-discriminator result

The primary target discriminator is still **required simultaneously resident Core bytes R**.

Current state:

- R is not numeric;
- H may lawfully differ from R under a later admitted carrier;
- W is parametric;
- V is outside authoritative Core state.

So Pass 6 removes the invalid path:

~~~
permanent indices -> whole history resident -> wasm64
~~~

without replacing it with:

~~~
windowable -> wasm32
~~~

Both shortcuts are rejected.

---

## 13. Falsifier board

| Falsifier | Result |
|---|---|
| F1 target drives envelope | HELD |
| F2 concrete carrier smuggled | HELD |
| F3 logical Index = native pointer | HELD |
| F4 whole history assumed resident | HELD |
| F5 streamable = performant | HELD |
| F6 cache becomes authority | HELD |
| F7 holder state counted as Core | HELD |
| F8 GPU/NN state counted as history | HELD |
| F9 finite = small | HELD |
| F10 unbounded future-proofing | HELD |
| F11 exhaustion mutates history | HELD |
| F12 retry semantics invented | HELD |
| F13 durability inferred from recurrence | HELD |
| F14 persistence inferred from Wasm memory | HELD |
| F15 encoding selected during envelope math | HELD |
| F16 RM-A state included as accepted | HELD |
| F17 performance requirement invented | HELD |
| F18 target resealed early | HELD |
| F19 implementation gate moves | HELD |

**19/19 falsifiers held.**

---

## 14. Completion board

| Gate | Result |
|---|---|
| G1 current main/stations pinned | PASS |
| G2 Pass-5 requirements/audit reread | PASS |
| G3 logical vs native pointer domain separated | PASS |
| G4 candidate logical widths mapped without selection | PASS |
| G5 symbolic WORD/POINTER envelope | PASS |
| G6 all current mechanisms access-classified | PASS |
| G7 root/RootTouch CWS | PASS |
| G8 Join CWS | PASS |
| G9 finite grounding k-parametric | PASS |
| G10 sampling access/CWS | PASS |
| G11 search access/CWS | PASS |
| G12 RM-A excluded from accepted budget | PASS |
| G13 CWS vs PWS separated | PASS |
| G14 backend-neutral carrier contract | PASS |
| G15 carrier scenarios compared | PASS |
| G16 no target-helping carrier selection | PASS |
| G17 authority/cache/view/holder separated | PASS |
| G18 finite refusal obligation explicit | PASS |
| G19 no-wrap/no-reuse preserved | PASS |
| G20 refused-arrival custody remains open | PASS |
| G21 volatile/durable obligations mapped | PASS |
| G22 partial-write/recovery obligations named | PASS |
| G23 recurrence kept separate from durability | PASS |
| G24 performance requirements inventoried | PASS |
| G25 absent numeric requirements left OPEN | PASS |
| G26 WebGPU window separate | PASS |
| G27 WGSL representation separate | PASS |
| G28 WebNN domain separate | PASS |
| G29 optional calculator | N/A — not needed; formulas sufficient |
| G30 target-discriminator table | PASS |
| G31 human-ruling board | PASS |
| G32 target re-entry verdict | PASS — NOT READY |
| G33 target remains UNDECIDED | PASS |
| G34 Passes 32–37 preserved | PASS |
| G35 global ASCII changed last after envelope artifacts | PASS |
| G36 linear Pass 38 | PASS |
| G37 no RM-A design | PASS |
| G38 no Core/acceptance/implementation movement | PASS |
| G39 all claims released | FINAL RELEASE STEP — verified by station state after this findings commit |

---

## 15. Pass-38 propagation

Pass 6 materially changed the companion's implementation-envelope reading, so [systems-manifest-ascii.md](../systems-manifest-ascii.md) now carries linear **Pass 38**.

Pass 38 preserves:
- Pass 32 mechanism catalog;
- Pass 33 vertical alignment;
- Pass 34 traceability;
- Pass 35 assays;
- Pass 36 desired-behavior mechanism recovery;
- Pass 37 target audit.

It adds the domain/carrier/CWS/refusal/recovery envelope and does not select a backend or compile target.

---

## 16. Final Pass-6 verdict

~~~
DOMAIN:
    SUPPORTED DOMAIN BOUNDED CONDITIONALLY
    exact cardinality OPEN

CARRIER:
    CARRIER OBLIGATIONS CLOSED WITH RULING DEBT
    backend + R3 lifetime OPEN

WORKING SET:
    CORRECTNESS WORKING SET PARAMETRIC
    whole-history residence NOT established

TARGET RE-ENTRY:
    NOT READY FOR TARGET COURT

TARGET:
    TARGET UNDECIDED

RM-A:
    MISSING-A

CORE:
    unchanged

ACCEPTANCE:
    absent
~~~

Pass 6 stops here.

It does not open Pass 7 automatically.
