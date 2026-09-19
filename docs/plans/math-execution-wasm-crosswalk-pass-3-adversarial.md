# Mathematical execution × WASM Spec 3.0 — Pass 3 adversarial misreadings

**Status:** ADVERSARIAL / misreading catalog (EXECUTED). **Not a bridge.** **Not an emitter.**
**Pass:** Math-execution × WASM Pass 3 execute (authorized by [math-execution-wasm-crosswalk-pass-3-plan.md](math-execution-wasm-crosswalk-pass-3-plan.md)).
**Parents:** [math-execution-wasm-crosswalk-pass-1.md](math-execution-wasm-crosswalk-pass-1.md); [math-execution-wasm-crosswalk-pass-2-reading.md](math-execution-wasm-crosswalk-pass-2-reading.md).
**Shape precedent (cite-only):** [`../math-execution-model-pass-4-adversarial.md`](../math-execution-model-pass-4-adversarial.md) (A0–A6 row shape).
**FM-* cites (cite-only; not edited):** [`../clipboards/wasm-spec-3-mechanisms.md`](../clipboards/wasm-spec-3-mechanisms.md) / clipboard D3.
**Pinned main:** `c4fa5d55e27f135cf5302c43991a1c66e6d9cfa8`.
**Emission / Φ:** `[GAP]`. No `src/`.
**WASM role:** Shadow compile-target only. **Not** Core. **Not** Graphic D.
**Bridge:** BLOCKED-BRIDGE-COMPLETE **retained**.

**Authority:** Pass 2 reading (K3–K5) → Pass 1 map (M3–M4) → math-exec Pass 4 adversarial (shape only) → mechanisms FM-* / M-T* (cite-only) → G-III-4 → pointer-emission (questions + non-answers) → this catalog (lowest).

Steward line: *Shoe in hands. These sketches show what the crosswalk refuses — not when lace should write a POINTER.*

---

## A0 — Header and non-claims

| Claim | This document |
|---|---|
| Catalogs adversarial misreadings that violate Pass 2 K3/K4/K5 and Pass 1 M4 | **Yes** |
| May cite existing FM-* false friends on mechanisms / clipboard D3 | **Yes** (cite-only) |
| Explains **when** or **why** a POINTER must be written | **No** |
| Derives Φ / arity / adjacency by elimination | **No** |
| Softens or drops any Pass 2 FORBID row | **No** |
| Promotes mem / table / stack as Lace \(L\) | **No** |
| Edits wasm-spec-3 clipboard / mechanisms / ascii-machinery | **No** |
| Amends Pass 1–2 crosswalk products or math-exec Pass 2–6 | **No** |
| Lifts BLOCKED-BRIDGE-COMPLETE | **No** |
| Authorizes `src/` or a bridge crate | **No** |
| Treats this catalog as negative training for an emitter | **No** (see A5 / W15) |

**Law:** Misreadings refute false bridges. They must not be inverted into “therefore emit when…”. Silence on Φ stands. Catalog ≠ Φ; catalog ≠ `src/`.

IDs **W01–W15+** are WASM-crosswalk adversarial rows (distinct from math-exec Pass 4 **N01–N15**).

---

## A1 — Claim inventory under attack

Already sealed claims these misreadings stress (not new claims):

| ID | Sealed claim | Where |
|---|---|---|
| C1 | Linear memory ↛ Lace \(L\) (FORBID-as-Lace-store) | Pass 2 K3; Pass 1 M4; G-III-4; FM-W1 |
| C2 | Table ↛ Star **store** (Star is a view) | Pass 2 K3; Pass 2 S3.1; Pass 4 N03; FM-W2 |
| C3 | Stack / frames ↛ append log | Pass 2 K3; FM-W3 |
| C4 | `br` / `return` / `call` ↛ Φ | Pass 2 K3; G-III-4; FM-W4 |
| C5 | Validate ↛ admit POINTER | Pass 2 K3; FM-W5 |
| C6 | Instantiate / decode ↛ Core birth / `src/` | Pass 2 K3; FM-W9; M-T6 |
| C7 | wat / text ↛ Hands law | Pass 2 K3; FM-W6 |
| C8 | clock/wasm bake ↛ Spec 3.0 authority | Pass 2 K3; Pass 1 M0/M4 |
| C9 | Pass 3 D1 ↛ WASM trainer / scheduler | Pass 2 K3; math-exec Pass 4 N10 |
| C10 | Arrival ↛ host ingest engine | Pass 2 K3; K5 II; FM-W7 |
| C11 | Trap ↛ Lace cut | Pass 2 K3; FM-W8 |
| C12 | Valtypes ↛ WORD/POINTER kinds | Pass 2 K3; M-T2 |
| C13 | Contract III export/view chrome ↛ write-back into \(L\) | Pass 2 K5 III; Pass 4 N06; Pass 5 |
| C14 | Φ Q1–Q5 and G1 remain `[GAP]` / SILENT | Pass 2 K4 |
| C15 | BLOCKED-BRIDGE-COMPLETE; READY-PARTIAL only | Pass 1 M6; Pass 2 K6 |

---

## A2 — Adversarial misreading catalog

Each row: a short sketch that **must not** be treated as Hands growth or as a KEEP expansion. “Must not infer” is mandatory.

| ID | Sketch | Attacks | Cite | Must not infer |
|---|---|---|---|---|
| W01 | Treat WASM linear `meminst` bytes as Lace’s 1D strand \(L\), or rewrite \(L\) as a growable byte array keyed by WASM addresses | C1; FORBID-as-Lace-store; mem⇒\(L\) | Pass 2 K3; Pass 1 M4; G-III-4; mechanisms M-T4; **FM-W1** | That target linear memory is the Hands store |
| W02 | Allocate a WASM `tableinst` (funcref/externref) and call it the Star store / star index beside \(L\) | C2; table⇒Star store | Pass 2 K3; math-exec Pass 2 S3.1; Pass 4 N03; M-T4; **FM-W2** | That Star membership is a Core table |
| W03 | Equate operand stack / call frames with Lace’s append-only log, or schedule Arrive from frame push/pop | C3; stack⇒append | Pass 2 K3; Pass 1 M4; M-T4; **FM-W3** | That ISA stack depth is Hands append order |
| W04 | Read `br` / `return` / `call` reductions as POINTER when / arity / adjacency (Φ fill from control) | C4; C14; FORBID-as-emission-rule | Pass 2 K3/K4; G-III-4; M-T5; **FM-W4** | That target control settles emission Q1–Q3 |
| W05 | Treat Spec validation accept (“Only valid modules can be instantiated”) as admitting a POINTER row or Lace write gate | C5; C14; validate⇒admit | Pass 2 K3/K4; M-T3; **FM-W5** | That well-formedness is Hands participation |
| W06 | Treat instantiate (`module`→instance) or binary decode success as Core birth, door open, or license to add `src/` | C6; C15; instantiate/decode⇒Core/`src/` | Pass 2 K3; Pass 1 M4; M-T1/M-T6; **FM-W9** | That target packaging births Lace Core |
| W07 | Elevate `.wat` / text twin (or Spec prose) over Graphics / Hands as sole authority for lace law | C7; wat⇒Hands | Pass 2 K3; PAGE G; M-T7; **FM-W6** | That text format is Hands law |
| W08 | Cite `docs/clock/wasm/` bake output as Spec 3.0 authority superseding the wasm-spec-3 clipboard shelf | C8; clock/wasm⇒Spec | Pass 2 K3; Pass 1 M0/M4; mechanisms Wave D seed | That a projection bake is Spec authority |
| W09 | Feed math-exec Pass 3 D1 POINTER rows into a WASM trainer, scheduler, or generative policy for lace | C9; D1⇒WASM trainer | Pass 2 K3; math-exec Pass 3–4 law; Pass 4 N10; Pass 1 M4 | That the Graphic D specimen trains target ISA or Φ |
| W10 | Rework Contract II Arrival as a WASM host ingest engine (embedder import pipeline owning a second store) | C10; Arrival⇒host ingest | Pass 2 K3/K5 II; Pass 6 thin feed; M-T8; **FM-W7** | That Arrival is Spec embedding or fills `[GAP]` |
| W11 | Identify WASM trap / divergence with a Lace cut, authorized rewrite, or append rule | C11; trap⇒cut | Pass 2 K3; G-III-4; M-T9; **FM-W8** | That abort/non-termination is Hands cut |
| W12 | Map WASM `valtype` (i32/i64/f32/f64/v128/reftype) onto Lace WORD/POINTER kinds or Graphic D row kinds | C12; valtype⇒kinds | Pass 2 K3; M-T2; clipboard PAGE C | That ISA types install Core alphabet |
| W13 | Let Contract III export / debug / hologram chrome write back into \(L\) (or mutate strand from a view of an instance) | C13; export/view⇒write-back | Pass 2 K5 III; math-exec Pass 5; Pass 4 N06 | That Layer III views may mutate the strand |
| W14 | Declare completeness-by-elimination: every WASM op not listed FORBID is KEEP-emit / may write POINTER | C14; C15; non-FORBID⇒KEEP-emit | Pass 2 K2 law; K4 SILENT; Pass 3 plan §1 Law | That silence or KEEP-read licenses emission |
| W15 | Use this adversarial catalog (W01–W14) as a negative training set to learn an emit policy or bridge crate | C14; C15; catalog⇒emitter training | Pass 3 plan A5; math-exec Pass 4 A6; Pass 2 K6 | That refusals invert into Φ or authorize `src/` |

No further W-rows added beyond Hands / Pass 2 / clipboard-cited families. Spec procedures not invented.

---

## A3 — Relation to Pass 2

| Item | Stance |
|---|---|
| Pass 2 K2 KEEP rows | Unchanged; W-rows do not expand KEEP into Core write |
| Pass 2 K3 FORBID rows | Stressed by W01–W13; **none softened** |
| Pass 2 K4 SILENT / GAP | Stressed by W04–W05, W14–W15; Φ / G1 still open (A4) |
| Pass 2 K5 seams | W10 (II), W13 (III), W01–W03 (I store refuse) |
| Pass 2 K6 non-extension | Assumed; this catalog adds zero Core morphisms |
| Pass 1 M4 promotions | Mirrored in W01–W10 families |
| Cite conflict with Pass 2? | **None found** — no STOP row |

**Map (family → Pass 2):**

| W | Primary Pass 2 attack |
|---|---|
| W01 | K3 mem⇒\(L\) |
| W02 | K3 table⇒Star store |
| W03 | K3 stack⇒append |
| W04 | K3 br/return/call⇒Φ; K4 Q1–Q3 |
| W05 | K3 validate⇒admit; K4 SILENT |
| W06 | K3 instantiate/decode⇒Core |
| W07 | K3 wat⇒Hands |
| W08 | K3 clock/wasm⇒Spec |
| W09 | K3 D1⇒trainer |
| W10 | K3 Arrival⇒host; K5 II |
| W11 | K3 trap⇒cut |
| W12 | K3 valtype⇒kinds |
| W13 | K5 III write-back |
| W14 | K2/K4 completeness-by-elimination |
| W15 | K6 / plan A5 catalog misuse |

---

## A4 — Φ / G1 checklist (still open)

| Emission Q / gap | Settled by this catalog? |
|---|---|
| **Q1** When is a POINTER appended? | **No.** W04/W05 refuse false *sources* of “when”; they do not supply when. |
| **Q2** What is the arity? | **No.** W04 refuses control⇒arity; does not state arity. |
| **Q3** Do adjacent WORDs already constitute a relation? | **No.** No W-row answers adjacency; SILENT retained. |
| **Q4** POINTER→POINTER / WORD-only / proof of earlier? | **No.** Call stacks ≠ Lace proof (K4); W03/W04 do not fill Q4. |
| **Q5** Does a later star pass require a POINTER? | **No.** W02 refuses table⇒Star store; does not answer Q5. |
| **G1** Tokenization (Arrival) | **No.** W10 refuses host-ingest rewrite; Spec codecs ≠ Hands G1. |

Rejected emission lookalikes in pointer-emission remain non-answers here too. W14 explicitly refuses filling Φ by elimination.

---

## A5 — Forbidden misuses of this catalog

1. Using W01–W15 as a **negative training set** to learn an emit policy or bridge (see W15).  
2. Reading “all WASM ops not listed may KEEP-emit / write POINTER” (see W14).  
3. Completeness-by-elimination (“we ruled out lookalikes ⇒ Φ is …”).  
4. Elevating these sketches to Hands law by citation alone.  
5. Softening any Pass 2 K3 FORBID because a sketch “covers” it.  
6. Calling this file a `Participate` implementation, Core test suite, or bridge crate.  
7. Opening `src/` because the catalog exists.  
8. Editing wasm-spec-3 clipboard / mechanisms / ascii-machinery to “match” a sketch.  
9. Amending Pass 1–2 crosswalk products or math-exec Pass 2–6 in place of this catalog.  
10. Lifting BLOCKED-BRIDGE-COMPLETE.

---

## A6 — Steward receipt

| Field | Value |
|---|---|
| Pass | Math-execution × WASM Pass 3 **EXECUTED** (adversarial misreading catalog) |
| Product | `docs/plans/math-execution-wasm-crosswalk-pass-3-adversarial.md` |
| Plan on branch | `docs/plans/math-execution-wasm-crosswalk-pass-3-plan.md` |
| Pinned SHA | `c4fa5d55e27f135cf5302c43991a1c66e6d9cfa8` |
| Φ | `[GAP]` |
| Bridge | BLOCKED-BRIDGE-COMPLETE **retained** |
| Misreading families | W01–W15 (15) |
| Pass 2 FORBID softened? | **No** |
| Clipboard / mechanisms edited? | **No** |
| Pass 1–2 products amended? | **No** |
| Math-exec Pass 2–6 amended? | **No** |
| `src/` | Not authorized |
| Parent plan | `docs/plans/math-execution-wasm-crosswalk-pass-3-plan.md` |
| Supersedes | Plan PR #18 (execute lands plan + product) |

**Steward tests (plan §6):** no derive-when/arity/adjacency from W-rows; no FORBID softened; no mem/table/stack as \(L\); no clipboard edits; BLOCKED-BRIDGE-COMPLETE retained; catalog does not authorize `src/` or an emitter; Pass 1–2 products not silently rewritten; Q1–Q5 + G1 unanswered.

*Shoe in hands. Refusals listed. Participation cut remains sealed.*
