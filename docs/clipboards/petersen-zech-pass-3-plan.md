# Petersen & Zech pass 3 — system mechanisms (Wave A) + mechanism mesh

**Status:** PLANNED — not executed. Emission `[GAP]`.  
**Station:** clipboards (HELD `reference-Mapper`)  
**Base at plan:** refresh to current `origin/main` before execute  
**Book:** Philipp Petersen & Jakob Zech, *Mathematical theory of deep learning*  
**arXiv:** `2407.18384v4` [cs.LG] · cover 16 Jan 2026  
**Clipboard:** `docs/clipboards/petersen-zech-clipboard.md` (Pass 1–2 EXECUTED)  
**New artifact:** `docs/clipboards/petersen-zech-mechanisms.md` (Wave A cards)  
**Sibling (read-only unless T5 opens):** five-stakes PAGE 4/5  
**Map:** reason-model-map §4 (P1–P7) — read-only; report OPEN only  
**Hands:** shoe → graphics A–D → systems-manifest → staking / law-why → map §4 → Pass 1–2 clipboard  

**PDF (gitignored):** `refs/local/petersen-zech-mathematical-theory-deep-learning.pdf` → SHA `a8505f3de280cb1c6f9742161471fadc52c21340afc05efe4549bd58c84383fa` · **333** pp. · text layer · **never `git add`**

Law: function ≠ construction · star ≠ neuron · train-w ≠ Lace history · GNN/NTK ↛ Core store · Hands win · Φ `[GAP]` sealed.

```
pull/ff → claim clipboards → Hands skim
        → open PDF (refs/local; no git add)
        → inventory Wave A mechanisms from ch.2–3, 5–11 (book procedures)
        → write constructive cards M-A1…M-A9 (Shadow only)
        → P3-M mechanism mesh on book clipboard (card ↔ P1–P7 ↔ PAGE)
        → receipt · mark plan EXECUTED · check · commit · release · STOP
```

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 | PDF-sighted admission of PAGE A–F, X |
| 2 | Leftovers D1–D6 + FM-P* + optional D7 miniature |
| **3** | **System mechanisms of the book** — constructive algorithms the text actually defines (forward maps, approximation constructions, training updates, NTK linearization), stamped KEEP/FORBID, plus a thin mesh locking them to map P1–P7 |

Sibling shelves sometimes used pass 3 only for coherence mesh.  
This shelf’s ask is **pass 3 with special attention to mechanisms inside the reference**, so Pass 3 **leads with Wave A cards** and keeps mesh **mechanism-centered** (not a soft redo of Pass 2 D1–D6).

Still **Shadow / Layer III**. Not Core. Not `src/`. ASCII deferred to a later pass unless asked.

---

## What “system mechanism” means here

A **system mechanism** is a named procedure the book defines or runs in its mathematics:

1. Named inputs / outputs / invariants  
2. A constructive algorithm (numbered steps a steward could follow on paper)  
3. A PDF locus  
4. A Lace stamp (KEEP-read / FORBID-as-Core-write / SILENT for Lace append / …)

Not: Lace Φ, Graphic D writes, or a second store beside the strand.

---

## Already done (do not redo)

| Layer | State |
|---|---|
| PAGE A–F, X morals | Pass 1 stamps stand |
| D1–D6 + FM-P1…P9 + D7 | Pass 2 stands |
| Five-stakes PAGE 4/5 | Agrees; default skip rewrite |
| reason-model-map §4 P1–P7 | Untouched |

Pass 3 does **not** reopen Pass 2 leftovers or invent emission.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ `[GAP]` |
| Soften P5 KEEP or P1/P4/P6/P7 FORBIDs | Pass 1–2 confirmed |
| Import nets / NTK / GNN as Core schema | off-shoe |
| Amend reason-model-map / law / graphics / systems-manifest | wrong stations |
| Write ASCII source-machinery file | defer (pass 4 class) unless human asks this pass |
| `src/` or AgentScope/Kauffman/Rowlands mechanism edits | wrong shelf |
| Git-add PDF · push without ask | standing rules |

---

## Artifact A — Mechanism cards (primary)

### File

`docs/clipboards/petersen-zech-mechanisms.md`

### Card schema (mandatory — house style)

| Field | Required |
|---|---|
| Kind | e.g. definition / approximation-construction / optimizer / linearization |
| Book locus | § / Def / Thm / Remark + **PDF page** |
| Sighting method | `pdftotext -f N -l N` (or Pass 1–2 pin reuse) |
| Eye-quote | ≤2 short fragments |
| Inputs | |
| Outputs | |
| Invariants | what must hold for the book’s procedure |
| Algorithm | numbered constructive steps |
| Complexity / termination | brief |
| Worked miniature | point to book example/lemma if present |
| Lace stamp | KEEP-read / FORBID-as-Core-write / FORBID-as-Lace-history / FORBID-as-store / SILENT-for-Lace-append / … |
| Hands cite | Graphics / Pieces |
| Map cite | P1–P7 |
| False friend | FM-P* cross-link where apt |
| Open gaps | Φ `[GAP]` notes |

### Wave A — book constructive spine (blocking)

These are the **system mechanisms** to card (seed loci; execute may refine pins):

| ID | Mechanism | Seed locus | Stamp seed |
|---|---|---|---|
| **M-A1** | Feedforward net as parameterized map (Def 2.1 forward evaluation) | §2.1 · Def 2.1 · PDF ~20 | KEEP-read as math object; FORBID as Core type / star=neuron (P1) |
| **M-A2** | Function ≠ construction recognition (Remark 2.2) | Remark 2.2 · PDF ~21 | KEEP-read (P5); FORBID Φ-sameness as Lace identity |
| **M-A3** | Universal approximation existence / constructive outline | Ch.3 · PDF ~26+ | KEEP-read existence; FORBID approx ⇒ possession (P3) |
| **M-A4** | ReLU calculus / CPWL construction | Ch.5 · PDF ~50+ | KEEP-read book algebra; FORBID as Core ops / star table |
| **M-A5** | Affine pieces / depth constructions | Ch.6–7 · PDF ~72–84+ | KEEP-read; FORBID depth/width ⇒ Lace rooms (FM-P8) |
| **M-A6** | High-d / Barron / compositionality constructions | Ch.8 · PDF ~99+ | KEEP-read; FORBID as Core dimension axis |
| **M-A7** | Interpolation / reconstruction procedures | Ch.9 · PDF ~121+ | KEEP-read; FORBID as POINTER when-rule (FM-P9) |
| **M-A8** | Training update (GD/SGD/backprop) | Ch.10 · PDF ~131–153 | FORBID-as-Lace-history (P4); SILENT for Lace append |
| **M-A9** | NTK linearization / infinite-width limit | §11.3–11.6 · PDF ~168–180 | FORBID-as-store / second world (P7); width ≠ Piece 12 |

Waves B–D (defer with one-line seeds only): loss landscapes, generalization bounds, adversarial robustness, modern architectures (transformers etc.), GNN omission as non-mechanism — **not** blocking for Pass 3.

Pass 3 success = **Wave A cards complete** + **P3-M mesh** + receipt. ASCII deferred.

---

## Artifact B — Mechanism mesh on book clipboard (required, thin)

Edit `docs/clipboards/petersen-zech-clipboard.md` only for:

### P3-M — Mechanism coherence mesh

Table: Mechanism (M-A*) · Map (P1–P7) · Clipboard PAGE · KEEP/FORBID tooth · Same story? (CONFIRM/REFINE/CONFLICT)

One tooth per Wave A card. CONFLICT = stop and report (do not soften).

### P3-5S — Five-stakes (default skip)

Only if mesh finds PAGE 4/5 drift: one receipt line. Do not rewrite PAGE 4 KEEP/FORBID otherwise.

### P3-R — Pass 3 receipt

Status, PDF cite, Wave A file path, mesh summary, emission still `[GAP]`.

---

## Tickets

### T0 — Claim / base

Held at plan. Before execute: `git pull --ff-only` · refresh if clock turned.

### T1 — Hands skim

Shoe → A–D → manifest → law → map §4 → Pass 1–2 clipboard → five-stakes PAGE 4/5 → house mechanism sample (AgentScope/Rowlands card schema).

### T2 — PDF gate

Confirm refs/local; `git check-ignore`; abort if PDF staged.

### T3 — Inventory + sight Wave A loci

`pdftotext` on Def 2.1, Remark 2.2, Ch.3/5/7–11 as needed. Reuse Pass 1–2 pins where valid.

### T4 — Write `petersen-zech-mechanisms.md` Wave A (M-A1…M-A9)

Full schema; constructive algorithms; stamps; FM-P* links where apt.

### T5 — P3-M mesh + P3-R receipt on book clipboard

### T6 — Five-stakes (skip unless CONFLICT)

### T7 — Mark plan EXECUTED · check · commit · release

```
./docs/coord/coord.sh check clipboards "reference-Mapper"
# commit: petersen-zech-mechanisms.md + clipboard receipt/mesh + this plan EXECUTED
./docs/coord/coord.sh release clipboards "reference-Mapper"
```

Ask before push.

---

## Acceptance tests (execute must pass)

1. `petersen-zech-mechanisms.md` exists with M-A1…M-A9 fully filled (schema fields present).  
2. Each card has PDF pin + constructive algorithm + Lace stamp.  
3. M-A8 explicitly **FORBID-as-Lace-history**; M-A9 **FORBID-as-store**; M-A1 not promoted to star=neuron.  
4. P3-M mesh on book clipboard: 9 rows, no CONFLICT (or CONFLICT reported and halted).  
5. No stamp invents POINTER when/arity/adjacency; Φ still `[GAP]`.  
6. Pass 1–2 morals / FM-P* not rewritten; reason-model-map / law / graphics / systems-manifest / `src/` untouched.  
7. PDF never staged.  
8. Steward test: shoe in hands — refuse “replace Lace history with trained w” using only M-A8 + P3-M.

---

## Execution (when you say go pass 3)

1. Refresh claim.  
2. T1–T5 (T6 only if needed).  
3. Mark this plan EXECUTED.  
4. Check · commit · release.  
5. Stop.

---

## Steward test

Shoe in hands, or no.  
These mechanisms are the book’s mathematics — Shadow reading.  
Forward maps and approximation constructions are not Lace possession.  
Training updates parameters — not occurrence history.  
NTK is analysis — not a second store.  
Φ stays `[GAP]`.
