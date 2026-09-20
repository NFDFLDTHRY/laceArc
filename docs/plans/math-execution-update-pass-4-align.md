# Mathematical execution model — UPDATE pass 4 · Hands/Hands align

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (`Grok-maps`).
**Ticket:** [`math-execution-update-pass-4-plan.md`](math-execution-update-pass-4-plan.md).
**Reads:** [`../math-execution-model.md`](../math-execution-model.md) · Hands §2 and wall §1.1/§5 of [`../clock/system-mathematical-model.md`](../clock/system-mathematical-model.md).
**Emission:** `[GAP]`. No `src/`. Dual-universe §3 Shadow **not imported**.

One universe, two write-ups. This file does not merge them.

---

## Register

| Object | Execution model | Dual-universe Hands | Mark |
|---|---|---|---|
| Store | S1.2 \(L\) finite append-only sequence | §2.2 same | **AGREE** |
| Alphabet | S1.3 WORD \| POINTER | §2.1 | **AGREE** |
| Arrive | S2 \(\mathsf{Arrive}(v)\) WORD append | §2.4 same formula | **AGREE** |
| Star | S3.1 membership view; formation not exhausted | §2.3 formation reading, not table | **AGREE** |
| Φ-morphism shape | S4.2 \(L\times R \mapsto\) POINTER | §2.4 second half in prose; algorithm silent | **AGREE** on shape; schedule not here |
| Schedule / Participate | Q1 SPOKEN ≠ calculated; \(\Phi_{\mathrm{schedule}}\) undefined in pass 3 | §2.4 \(\mathsf{Participate}=[GAP]\); §2.8 item 1 bare \([GAP]\) | **LABEL-ONLY** |
| Q2 arity | CONFLICT; \(k\ge 1\) not \(k=2\) | §2.8 item 1 arity inside the same \([GAP]\) | **LABEL-ONLY** |
| Q3 adjacency emit | CLOSED no; leftover SPOKEN ≠ calculated | §2.8 item 1 “whether adjacent WORDs imply a relation” \([GAP]\) | **LABEL-ONLY** on leftover; **AGREE** that adjacency does not fire |
| Wall | S1.1 conceptual refs; S6 #8 no Shadow-as-schedule | §1.1 \(W : \mathcal{S} \not\hookrightarrow \mathcal{H}\); §5 | **AGREE**; formula now pointed from S1.1 |
| Projection | S3.4 \(\pi\) no write-back | §2.6 | **AGREE** |
| Arrival thinness | S5 II zero own store | §2.7 | **AGREE** |
| Forbidden ops | S6 1–10 | §2.5 | **AGREE** on the Hands set; execution S6 adds emission-DRAFT and `src/` refusals |
| G1 word identity | S1.3 OPEN | §2.8 item 3 \([GAP]\) | **AGREE** |
| Third entry kinds | two kinds only | §2.8 item 4 \([GAP]\) | **AGREE** not to install them |
| Read/query as Core | S5 “no query interface” | §2.8 item 5 \([GAP]\) | **AGREE** |
| Concurrency | silent | §2.8 item 6 \([GAP]\) | **LABEL-ONLY** (dual names a hole this file never stated) |
| Holder train / H×C×W | S0 No; S7 excluded from \(L\) | §3 lives in \(\mathcal{S}\) | **MUST-NOT** held — not imported |

**DIVERGE:** none.

LABEL-ONLY means the hole is the same hole. This campaign’s SPOKEN stamps are not copied into dual-universe §2.8. Participate stays \([GAP]\) as calculation.

---

## Surgical edit this pass

Execution-model S1.1 now names the wall formula \(W : \mathcal{S} \not\hookrightarrow \mathcal{H}\) and points at dual-universe §1.1. S2–S6 equations unchanged. Dual-universe file **not edited**.

## `P4-R`

| | |
|---|---|
| Rows | 17 |
| AGREE | 12 |
| LABEL-ONLY | 4 (schedule/Participate, Q2, Q3 leftover, concurrency) |
| DIVERGE | 0 |
| MUST-NOT | held (no Shadow-in-\(L\)) |
| Participate filled | **no** |
| Next | pass 5 D1 witness refresh; **not opened** |

**Emission `[GAP]`. Shoe in hands. A wall is not a bridge.**
