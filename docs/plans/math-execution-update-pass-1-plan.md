# Mathematical execution model — UPDATE campaign · Pass 1 of 6 PLAN

**Status:** **`PLAN`** · not executed. **Station:** maps (HELD `Grok-maps` · BASE `ad54212`).
**Emission:** `[GAP]`. No `src/`. Not an emitter. Does not accept `pointer-emission.md`.
**Object under test:** [`docs/math-execution-model.md`](../math-execution-model.md) — sealed **partial** Hands algebra (old Pass 2 product).
**Why a new campaign:** that model is **old against the tree**. Human 2026-09-20: pointer-emission rules **will need to be calculated, not known yet**. The systems-level model is how those questions get answered. Copying SPOKEN campaign lines into `Step` would be knowing, not calculating.

This file does not rewrite S0–S8. Execute writes a drift register only.

---

## 0. What is already done, and must not be re-opened as if missing

The **first** math-execution campaign ran:

| Old pass | Product | Plan header still says |
|---|---|---|
| 1 problem map | [`math-execution-problem-map-pass-1.md`](math-execution-problem-map-pass-1.md) EXECUTED | — |
| 2 partial model | [`../math-execution-model.md`](../math-execution-model.md) EXECUTED | `[PLAN] — not executed` |
| 3 D1 witness | [`../math-execution-model-pass-3-witness.md`](../math-execution-model-pass-3-witness.md) EXECUTED | same stale header |
| 4 adversarial | [`../math-execution-model-pass-4-adversarial.md`](../math-execution-model-pass-4-adversarial.md) EXECUTED | same |
| 5 A–C projections | [`../math-execution-model-pass-5-projections.md`](../math-execution-model-pass-5-projections.md) EXECUTED | same |
| 6 Arrival | [`../math-execution-model-pass-6-arrival.md`](../math-execution-model-pass-6-arrival.md) EXECUTED | same |

Verdict of that campaign stands: **READY-PARTIAL ∧ BLOCKED-COMPLETE**. This update campaign **inherits** that. It does not mint a total `Step`. It does not open `src/`.

---

## 1. What pass 1 is for

**One question:** relative to `origin/main` at execute time, and to the human sentences of 2026-09-20, **what does the sealed partial model still say that the tree no longer says — or that it must not be allowed to say?**

**One result (on execute):** [`math-execution-update-pass-1-drift.md`](math-execution-update-pass-1-drift.md) — a dated drift register. Rows are SOURCE / STALE / SILENT / CONFLICT / MUST-NOT. No new morphism. No Φ-schedule.

---

## 2. Drift already visible at plan time (execute re-reads; these are not yet findings)

| Id | Where the model speaks | What the tree / human now say | Class to test |
|---|---|---|---|
| U1 | Header: Φ-schedule **Q1 open** | [`pointer-emission.md`](../pointer-emission.md): Q1 **SPOKEN**, not accepted | STALE vs SPOKEN |
| U2 | S4.2 Q0 later-arrival kind OPEN | Q0 SPOKEN + HANDS CONFLICT on D1 `0003` | STALE / CONFLICT |
| U3 | S4.2 Q1 schedule OPEN | Q1 SPOKEN *pay into prefix*; adjacency / fan-out still refused | STALE vs SPOKEN |
| U4 | S4.2 Q3 leftover OPEN | Q3 CLOSED no-emit + SPOKEN leftover = arrival order on the wire | STALE vs SPOKEN |
| U5 | S4.2 Q5 require POINTER OPEN | Q5 SPOKEN later pass is Φ payment + HANDS CONFLICT `0003`+`0004` | STALE / CONFLICT |
| U6 | Schedule treated as a missing *sentence* | Human: rules **calculated, not known yet** | MUST-NOT (do not fill Q1 from SPOKEN as if known) |
| U7 | Pin SHA `3cee660` | tip `ad54212` and later | STALE pin |
| U8 | Old pass-2…6 **plan** headers still `[PLAN] — not executed` | products EXECUTED | STALE index (hygiene; not algebra) |
| U9 | Cites prefix-device pass 5/6 | pass 7 exists on the emission file | SILENT / STALE cite |
| U10 | Hands §2 / atomic map soft diff | dual-universe file [`clock/system-mathematical-model.md`](../clock/system-mathematical-model.md) has its own Hands/Shadow wall | ALIGN later, not this pass rewrite |
| U11 | S1.1 conceptual-reference correction | law-why correction 2026-09-20 | VERIFY still complete |
| U12 | — | rustc/Cargo shelf 10 pass 6 is toolchain Shadow, **not** `Arrive` / Φ | MUST-NOT leak |

Execute may add rows. It may drop a plan-time row if the re-read shows the model already matches. It may not invent a calculation to close U6.

---

## 3. The remaining five passes (named only)

| Pass | Job | Must not |
|---|---|---|
| **2** | Retie the model's **header and S4 question table** to the emission file: SPOKEN / CONFLICT / CLOSED / `[GAP]` as *labels of the law file*, not as calculated rules | Promote SPOKEN → schedule |
| **3** | State what a **calculation** of emit-when / arity / leftover would take as input (objects already in \(L\), Arrive, star-as-view) and what it is forbidden to take (Shadow, rustc receipt, habit) | Write the function |
| **4** | Align Hands universe here with Hands § in the dual-universe file. Wall \(W : \mathcal{S} \not\hookrightarrow \mathcal{H}\) stays | Import H/C/W as Core |
| **5** | Refresh the D1 witness against the updated *labels*, not against a new emitter | New transcript that “decides” Q2 |
| **6** | Readiness: what is now calculable, what remains uncomputable, STOP | `src/`, acceptance sentence |

Pass 1 does not start pass 2.

---

## 4. Authority on execute (read-only except the drift file)

1. Graphics A–D  
2. [`systems-manifest.md`](../systems-manifest.md)  
3. [`pointer-emission.md`](../pointer-emission.md) — DRAFT, not accepted  
4. This partial model and its six old products  
5. [`clock/system-mathematical-model.md`](../clock/system-mathematical-model.md) — cite only  
6. Human sentences 2026-09-20: *calculated, not known yet*; *systems-level model answers the emission questions*

Law, graphics PNGs, rust-target clipboard, `src/` — not this pass.

---

## 5. Accept pass 1 when

- Drift file exists and every U-row is marked tested (kept / dropped / split) with a cite.
- Model body S1–S6 **untouched**.
- Old campaign products **untouched**.
- No Φ-schedule written. No arity picked. No `src/`.
- Plan header flipped `PLAN` → `EXECUTED`.
- maps released or held only if pass 2 is immediately authorized.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to the algebra. **Knowing a schedule is not calculating one.** Emission remains `[GAP]`.
