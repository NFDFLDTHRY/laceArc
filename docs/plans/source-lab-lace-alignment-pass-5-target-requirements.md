# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 5 target requirements

**Status:** EXECUTED REQUIREMENTS LEDGER.  
**Campaign:** Source → Lab → Lace Alignment — restart.  
**Pass:** 5 — compilation-target audit.  
**Execution base:** `2f7b8c81b35c087dd2b27c46ae8baf3f64422987`.  
**Purpose:** derive the compilation-target requirements from current Lace contracts **before** selecting wasm32 or wasm64.

This file is not a target decision. It is the requirement side of the court.

---

## 1. Governing separation

```
Lace logical history / index domain
        !=
resident Wasm linear-memory domain
        !=
Rust pointer / usize ABI
        !=
GPU resource / binding domain
        !=
WGSL runtime integer / pointer domain
        !=
WebNN tensor / accelerator domain
```

Target width may satisfy an implementation requirement. It does not define Lace semantics.

---

## 2. Current authoritative constraints

### R-L1 — one authoritative append-only strand

Current manifest and branch contracts require:
- one retained history;
- one fresh permanent position per successful retained section;
- no deletion, reset, rewrite, renumbering, index reuse, vacuum, wraparound, or second authoritative strand.

**Target consequence:** any finite implementation must refuse before an index aliases an earlier position.

**Does this require wasm64?** **NO.** It requires a declared non-wrapping logical domain. Native pointer width is not specified.

### R-L2 — concrete storage and index width remain unresolved

`rust-nostd-branch-contracts.md` explicitly leaves:
- concrete finite-storage provision;
- index width;
- restart/durability;
- interruption behavior;
- concurrency/order

unselected.

**Target consequence:** Pass 5 is forbidden to infer `usize = Index`.

### R-L3 — encoding remains open

The current branch/proposal stack still leaves row encoding and index width under R6/Q2.

No accepted byte size exists for a general WORD or POINTER row.

**Target consequence:** exact “N rows fit in 4 GiB / 16 GiB” counts cannot be honestly computed yet.

Use the symbolic bound:

```
max_resident_rows
  = floor(resident_linear_memory_bytes / average_encoded_row_bytes)
```

until encoding is accepted.

### R-L4 — total persistent history need not equal simultaneously resident memory

Current execution/carrier proposals distinguish:
- abstract authoritative history `L`;
- a physical region carrying a loaded representation;
- optional durable carrier `K`;
- volatile vs durable residence as an unresolved R3 choice.

The repository contains candidate models in which a durable append-only log survives outside the Wasm module and a region is loaded/reconstructed from it.

**Target consequence:** total Lace history may exceed the resident linear-memory working set without contradiction, if such a carrier/window design is later admitted.

**Status:** carrier not selected.

### R-L5 — capacity policy remains open

Current R4 remains:
- grow a region with `memory.grow`;
- fixed capacity + refusal;
- other human ruling.

Who owns custody of a refused arrival is also open.

**Target consequence:** no accepted requirement says the first implementation must address all future Lace history in one allocation.

### R-L6 — persistence/restart remains open

R3 remains unresolved:
- volatile session;
- durable append-only carrier;
- other.

A reload may legally begin empty in a volatile design; durable recovery needs its own proof.

**Target consequence:** wasm64 linear memory cannot be treated as a persistence solution.

### R-L7 — concurrency remains open

The manifest says one strand suggests a single writer, but multi-writer ordering remains unstated.

**Target consequence:** threads/shared-memory capability is not currently a target-selection requirement.

### R-L8 — sampling/search do not currently impose one whole-history resident-array requirement

SM-C19 / SM-C20 / SM-C21 establish:
- finite sample grounding after operands are selected/addressable;
- derived position×scale sampling;
- disposable read-only star/search working machinery.

They do not state:
- all retained history must be resident simultaneously;
- a direct pointer must exist for every historical position;
- GPU/WebNN views must mirror the whole strand.

**Target consequence:** resident working-set size remains OPEN.

---

## 3. Requirements ledger

| ID | Requirement | Current value | Authority/evidence | Target relevance |
|---|---|---|---|---|
| RQ1 | Logical Index cardinality | **OPEN**; permanent/non-wrapping only | strand branch contract | may motivate wide logical integer; does not select pointer width |
| RQ2 | Encoded row-size range | **OPEN** | R6/Q2; encoding not accepted | blocks exact rows-per-memory calculation |
| RQ3 | Total persistent Lace domain | **OPEN** | one strand; finite supported domain required | may exceed resident set if carrier admitted |
| RQ4 | Resident Wasm working set | **OPEN** | no whole-history-resident law found | direct wasm32/wasm64 discriminator |
| RQ5 | Restart/durability | **OPEN R3** | execution/carrier model | separates persistence from linear memory |
| RQ6 | Concurrency | **OPEN** | manifest | no current threads requirement |
| RQ7 | First deployment population | Pixel 9a / Chrome installed-WebApp path is current project target context; actual Pass-5 device run **NOT_RUN** | project context + prior plans | target must work there before acceptance |
| RQ8 | WebGPU-visible window | **OPEN; Layer III only** | WebGPU shelf/spec | independent GPU limits; cannot select Core target alone |
| RQ9 | WGSL wide-index representation | **OPEN / may be unnecessary** | WGSL shelf/spec | shader runtime width independent of host pointer ABI |
| RQ10 | WebNN tensor/operator domain | **OPEN / optional unless a workload requires it** | WebNN shelf/spec | tensor width/capacity independent of host pointer ABI |

---

## 4. What is established about logical width

Current law requires:

```
fresh index
per retained row

+
no wrap
no reuse
no renumber
```

It does **not** currently require:

```
Index = usize
Index = raw pointer
Index = Wasm address
Index = WGSL pointer
Index = WebNN tensor offset
```

A future implementation may choose an explicit logical integer type wider than native pointers if its carrier/window design supports that mapping.

Whether that is the correct design remains a Lab question.

---

## 5. What would actually justify wasm64

A project-side requirement for wasm64 would become strong if an accepted implementation contract requires **more than memory32's usable resident domain in one simultaneously addressable Wasm memory**.

Examples:

- an admitted all-in-linear-memory strand whose required supported domain exceeds 4 GiB;
- a required algorithm whose correct execution needs >4 GiB resident at once and cannot be lawfully windowed/streamed;
- another accepted ABI/data-structure requirement that genuinely depends on 64-bit native Wasm pointers.

None of those requirements is established today.

---

## 6. What would make wasm32 sufficient

wasm32 becomes sufficient if the accepted implementation can state:

```
resident working set <= memory32 supported domain

AND

logical indices remain non-wrapping in their own declared type/domain

AND

history larger than the resident set, if allowed at all,
is carried/replayed/windowed without violating one-strand authority
```

This is **conditional**, because the carrier and supported-domain rulings are still open.

---

## 7. Layer-III material does not create a hidden wasm64 requirement

### WebGPU

GPU buffers/bindings are independent bounded resources. A larger Wasm address space does not create an equally large shader-visible resource.

### WGSL

Concrete shader integer and pointer semantics are independent from Rust/Wasm pointer width. A wide logical host index needs an explicit shader representation only if the shader actually needs it.

### WebNN

Tensor element types, tensor byte limits, and selected acceleration backend are independent from Rust/Wasm pointer width.

Therefore none of the current Layer-III materials establishes:

```
wasm64 required
```

---

## 8. Requirement verdict

```
PERMANENT / NON-WRAPPING LOGICAL INDEX:
    REQUIRED

64-BIT LOGICAL INDEX:
    NOT YET SELECTED

>4 GiB SIMULTANEOUSLY RESIDENT WASM MEMORY:
    NOT ESTABLISHED

ONE-MEMORY WHOLE-HISTORY CARRIER:
    NOT ESTABLISHED

WINDOWED / EXTERNAL DURABLE CARRIER:
    POSSIBLE CANDIDATE, NOT SELECTED

PERSISTENCE / RESTART:
    OPEN

CAPACITY / REFUSAL:
    OPEN
```

**Result:** the current Lace requirements do **not** prove a need for `wasm64-unknown-unknown`.

That is not yet proof that wasm32 is sufficient for the final implementation, because the requirements that would bound its supported domain remain open.
