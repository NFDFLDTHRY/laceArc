# Mathematical execution model — UPDATE campaign · Pass 4 of 6 PLAN

**Status:** **`EXECUTED`** 2026-09-20 · [`math-execution-update-pass-4-align.md`](math-execution-update-pass-4-align.md). **Station:** maps (`Grok-maps`).
**Emission:** `[GAP]`. No `src/`. Not an emitter. Does not accept `pointer-emission.md`.
**Depends on:** pass 1–3 EXECUTED. Interface: [`math-execution-update-pass-3-inputs.md`](math-execution-update-pass-3-inputs.md). Governing MUST-NOT remains **U6**.
**Objects (read):** [`docs/math-execution-model.md`](../math-execution-model.md) · Hands §2 + wall §5 of [`docs/clock/system-mathematical-model.md`](../clock/system-mathematical-model.md).

Pass 3 named what a calculation may see. Pass 4 checks the two Hands write-ups still describe **one** universe. It does not merge the files and does not import Shadow.

---

## 0. One question

Do the sealed partial execution model and Hands §2 of the dual-universe file agree on \(L\), Arrive, Star-as-view, the wall \(W : \mathcal{S} \not\hookrightarrow \mathcal{H}\), and the sealed Participate hole — or has UPDATE labeling drifted them apart?

## 1. One result (on execute)

[`math-execution-update-pass-4-align.md`](math-execution-update-pass-4-align.md) — a row per Hands object: AGREE / LABEL-ONLY / DIVERGE / MUST-NOT.

No new morphism. No fill of \(\mathsf{Participate} = [GAP]\). Dual-universe §3 Shadow machine is **cite-only**.

---

## 2. Rows the align file must test

| Object | Execution model | Dual-universe Hands |
|---|---|---|
| Store | S1.2 \(L\) append-only | §2.2 same |
| Alphabet | S1.3 WORD \| POINTER | §2.1 |
| Arrive | S2 WORD append | §2.4 \(\mathsf{Arrive}(v)\) |
| Star | S3.1 membership view | §2.3 formation reading, not table |
| Φ-morphism shape | S4.2 | §2.4 second half in prose; algorithm silent |
| Schedule / Participate | Q1 SPOKEN ≠ calculated | §2.4 \(\mathsf{Participate}=[GAP]\); §2.8 item 1 |
| Q2 arity | CONFLICT | §2.8 item 1 includes arity \([GAP]\) |
| Q3 adjacency emit | CLOSED no | §2.8 item 1 |
| Wall | S1.1 conceptual refs; S6 #8 | §1.1 \(W : \mathcal{S} \not\hookrightarrow \mathcal{H}\); §5 |
| Projection | S3.4 no write-back | §2.6 |
| Arrival thinness | S5 II | §2.7 |
| Forbidden ops | S6 | §2.5 |

**Expected:** AGREE on store / Arrive / wall / forbids. LABEL-ONLY where this campaign stamped SPOKEN and the dual file still writes bare \([GAP]\). That is not a license to copy SPOKEN into §2.8.

**DIVERGE** is a finding. Execute records it. It does not pick a winner to soothe. A Hands/Hands split stops the campaign until you say which file is the stamp source for that cell.

## 3. Allowed surgical edits (optional)

- One sentence in execution-model S1.1 or S7 pointing at the wall formula \(W : \mathcal{S} \not\hookrightarrow \mathcal{H}\) if it is not already explicit.
- One sentence in the align file that dual-universe §2.8 item 1 remains \([GAP]\) *as calculation*, even though the emission file now has SPOKEN labels.

Do **not** edit dual-universe §3–§4 Shadow machinery. Do **not** retie §2.8 to SPOKEN (that would be knowing on the wrong file).

## 4. Forbidden this pass

- Import H/C/W, OBS, Anchor, \(L_{\mathrm{story}}\), RIC/PFC as Core rows
- Fill Participate / H-PTR / H-k
- Treat rustc shelf 10 as Hands
- Refresh D1 witness (pass 5)
- Edit `pointer-emission.md`
- Open `src/`
- Start pass 5

## 5. Accept pass 4 when

- Align file exists; every row in §2 is marked.
- Zero MUST-NOT breaches (no Shadow-in-\(L\)).
- If any DIVERGE: named, not smoothed.
- Execution-model S2–S6 equations unchanged except the optional wall pointer.
- U6 held. Emission `[GAP]`.
- Plan `PLAN` → `EXECUTED`. maps released unless pass 5 is immediately authorized.

## Steward test

Shoe in hands. Two descriptions of one lace. A wall is not a bridge. **Shadow does not calculate Φ.**
