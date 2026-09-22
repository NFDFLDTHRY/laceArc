# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 3 source-gap ledger

**Status:** EXECUTED PASS-3 ARTIFACT.
**Execution base:** 08f5cc54290659cb8587167ec171344dd09adc5c.
**Purpose:** expose technical source gaps without filling them by inference or premature technology selection.

---

## 1. GAP-HOST — browser Wasm host/embedder contract

### Why it exists

The WebAssembly core source explicitly says:
- the core spec does not define interaction with a specific execution environment;
- environment-specific APIs are complementary documents;
- external environment access occurs through capabilities supplied by the embedder/imported into the module.

Therefore the current six-source corpus proves the **need** for an embedding layer while not supplying the browser-specific embedding contract itself.

### Missing source scope

A future primary source should establish, at minimum where implementation needs it:
- browser module instantiation interface;
- imported host functions;
- exported function access;
- browser \`WebAssembly.Memory\` object semantics;
- JS/Wasm value boundary relevant to selected target;
- lifecycle/exception behavior used by the app.

### What GAP-HOST blocks

| Question | Blocked? |
|---|---|
| current Lace mathematics S1–S10 | **NO** |
| generic behavioral device mathematics | **NO** |
| source-specific HCC/Cup/Water mathematical devices | **NO**, unless implementation details are being claimed |
| complete browser implementation topology | **YES** |
| proof of \(G\) entering Wasm-hosted S9 device | **YES** at concrete API level |
| proof of Wasm-mediated WebGPU/WebNN calls | **YES** |
| definitive browser memory boundary claims relying on JS Wasm API | **YES** |
| target selection | **MAY MATTER**, but is not the only target debt |

### Status

\[
\boxed{GAP\!-\!HOST=[MISSING\ PRIMARY\ SOURCE]}
\]

Pass 3 does not acquire that source.

---

## 2. GAP-CARRIER — durable browser carrier

### Why it is conditional

Pass 6 left R3 lifetime open.

No current technical building source defines durable Lace storage.

Runtime state in:
- Wasm linear memory;
- GPU buffers/textures;
- WGSL address spaces;
- WebNN tensors/contexts

does not establish persistence across the product lifetime.

### Branch

If:

\[
R3=volatile,
\]

then a durable-browser-carrier source is not required merely to satisfy Lace's declared volatile lifetime.

If:

\[
R3=durable,
\]

then a primary source for the selected browser carrier becomes mandatory.

### What GAP-CARRIER blocks

| Question | Volatile branch | Durable branch |
|---|---|---|
| current mathematics | no | no |
| mathematical carrier contract | no; already backend-neutral | no; already backend-neutral |
| concrete implementation | carrier implementation still needed | **blocked until source/backend selected** |
| restart/durability proof | n/a beyond declared volatile lifetime | **blocked** |
| target selection | may be independent | may affect resident/carrier architecture |
| product "installed once, offline forever" persistence claim | insufficient alone | **blocked until durable route specified/proved** |

### Status

\[
\boxed{GAP\!-\!CARRIER=[DEFERRED\ BY\ R3]}
\]

No OPFS, IndexedDB or other API is selected.

---

## 3. GAP-APP — installed application / browser lifecycle

### Why it exists

The six building references define:
- Rust build machinery;
- Wasm core execution;
- GPU API/shader execution;
- neural inference.

They do not collectively define:
- PWA installation;
- service-worker lifecycle;
- Cache Storage;
- generic Window/Worker lifecycle;
- update/install semantics;
- browser origin/application lifecycle generally.

Those concerns exist elsewhere in repository proposals/kit material but are not covered by this six-source compute/toolchain corpus.

### What GAP-APP blocks

| Question | Blocked? |
|---|---|
| mathematical execution model | no |
| compute capability graph | no |
| complete installed-app implementation architecture | **yes** |
| production offline/update proof | **yes** unless separately sourced/tested |
| target selection | possibly indirect, not a current target winner |

### Status

\[
\boxed{GAP\!-\!APP=[SEPARATE\ SOURCE\ SURFACE]}
\]

This is not automatically a request to create another clipboard campaign in Pass 3.

---

## 4. Existing toolchain source gaps retained

Pass 3 does not erase existing shelf-10 gaps.

### Cargo / rustc closure

Still not source-established by the current Cargo Book:
- exact \`compiler_builtins\` requirement for the chosen build;
- exact build-std lockfile representation needed by historical receipt proposals;
- actual built crate closure.

### Target build evidence

Still NOT_RUN in this pass:
- toolchain install/pin;
- actual target build;
- Wasm artifact inspection;
- feature/import/export validation;
- Pixel/browser execution.

These remain higher-rung evidence debt, not missing mathematical semantics.

---

## 5. Device capability gaps

Specifications describe possibilities.

Pass 3 does not establish target-device support for:
- specific WebGPU optional features/limits;
- specific WGSL optional language features;
- actual WebNN API availability;
- actual WebNN operator support;
- WebNN↔WebGPU export support on target;
- resource capacities/performance;
- sustained accelerator operation.

These belong to evidence ladder T2–T6.

### Status

\[
\boxed{
SpecCapability\neq DeviceEvidence
}
\]

---

## 6. Gap priority

### Required before source-complete browser implementation planning

1. **GAP-HOST**

### Required only after/if human/product ruling chooses durable R3

2. **GAP-CARRIER**

### Required before complete install/offline production architecture proof

3. **GAP-APP**

### Required before concrete build/target/device proof

4. toolchain/device T1–T6 evidence

This is dependency ordering, not a new pass order.

---

## 7. Non-gaps

Pass 3 specifically does **not** classify the following as missing source problems:

- Lace semantics: already governed by Graphics/manifest/human rulings.
- S9 read-device algebra: mathematical layer already established.
- S10 observability: mathematical/source layer already established.
- GPU shader language: WGSL is staked.
- GPU host API: WebGPU is staked.
- neural inference API: WebNN is staked.
- Cargo/rustc build mechanisms: sources are staked, although some concrete build facts remain open.

---

## 8. Source-gap verdict

**HOST SOURCE GAP REAL AND CURRENT.**

**DURABLE-CARRIER SOURCE GAP REAL BUT CONDITIONAL ON R3.**

**INSTALLED-APP SOURCE SURFACE SEPARATE FROM THE SIX-SOURCE COMPUTE SHELF.**

No gap is filled by analogy.
