# CLIPBOARD — laceArc ← Xiao & Zhu *Foundations of Large Language Models*

**Current source qualification, 2026-09-20 — repository update pass 2:** the [pass 1 source sightings](../plans/repo-update-pass-1-evidence.md#7-targeted-source-sightings-and-current-handoff) of printed p.2 / PDF p.9 Eq.1.1 and printed p.38 / PDF p.45 §2.1.1 distinguish indexed occurrences from shared vocabulary identity. An indexed sequence keeps its order comparison when positions share a token ID. The current panels and failure/coupling readings below now carry corrected X1/X2; replacing retained Lace occurrences with one vocabulary object, count or embedding store remains forbidden. Earlier Pass 1–6 receipts, including their CONFIRM counts and the old “dies at intern” receipt wording, remain dated records of the earlier reading. No new PDF sighting, tokenizer, emission rule or campaign restamp is claimed here.

Shadow stake only. Hands win. POINTER emission = `[GAP]`.
PDF: gitignored `refs/local/xiao-zhu-foundations-llm.pdf` → attachment `0f5d145d…ba50bc1a.pdf` (arXiv:2501.09223v2, 15 Jun 2025 / book date 17 Jun 2025). **Never git-add the PDF.**
License: CC BY-NC 4.0. Cite; do not fold body text into Apache Core.
This file is Layer III. Not Core.

**PDF fact this pass:** 277 pages. Text layer present. Printed page \(p\) ≈ PDF page \(p−7\) (ch.1 starts PDF 8 = printed p.1; PDF = printed + 7). Eye-quotes are short fragments.

Law on this clip: arrival order kin · intern / MASK / embed / next-token ≠ Core · `[GAP]` sealed.

```
fetch/ff main → shoe → graphics A–D → manifest → law
                 → reason-model-map §3
                 → Xiao & Zhu PDF (no git add)
                 → PAGE A → B → C → D → E → F → X
                 → this file
                 → STOP
```


## Pass 1 (PDF-sighted) receipt

| Field | Value |
|---|---|
| Status | EXECUTED |
| When | 2026-09-18 ~19:06 PT |
| Station | clipboards · agent `reference-Mapper` |
| Plan | [xiao-zhu-pass-1-pdf-plan.md](xiao-zhu-pass-1-pdf-plan.md) |
| Hands skim | shoe → graphics A–D → systems-manifest → staking / law-why → reason-model-map §3 (X1–X7) → this clipboard → five-stakes PAGE 3/5 (read-only; T6 skip) |
| PDF | **PRESENT** — `refs/local/xiao-zhu-foundations-llm.pdf` → attachment `0f5d145d298a90bbe1648b365d97b8833e86be3c31bedd7db900a932ba50bc1a.pdf`; **277** pp.; text layer yes; SHA matches; `git check-ignore` OK; never staged |
| Method | `pdftotext -f N -l N -layout` on this attachment (primary) |
| Product | A–F, X loci re-pinned; Eq 1.1 / decoder-only prefix LM / MASK / embeds / generative next-token / Ch.5 inference re-verified; false friends refreshed; morals unchanged |
| Stamps | **CONFIRM** ×6 (A,B,C,D,E,X) · **REFINE** ×1 (B eye-quote wording) · **SILENT** ×1 (F on Φ) · **CONFLICT** ×0 (no map/Hands conflict this pass) |
| Amended | reason-model-map · law · graphics · five-stakes · src/ · systems-manifest | **No** |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no Lace tokenizer; Φ unfilled |

### Offset certificate (printed ↔ PDF, this attachment)

| Printed | PDF (1-based) | Locus |
|---|---|---|
| p.1 | 8 | Ch.1 Pre-training head |
| p.2 | 9 | Eq (1.1) \(o = g_\theta(x_0,\ldots,x_m)\) |
| p.7 | 14 | §1.2.1 Decoder-only “preceding tokens” |
| p.9–10 | 16–17 | §1.2.2.1 Masked LM |
| p.19 | 26 | Token Deletion (BART corruption) |
| p.23 | 30 | BERT 80/10/10 MASK / replace / leave |
| p.25 | 32 | \(e = x + e_{pos} + e_{seg}\) |
| p.29 | 36 | “every token is just an entry of the shared vocabulary” |
| p.37–38 | 44–45 | word/token interchangeably; eq (2.3); \(e_i\) = token + positional |
| p.70 | 77 | §2.3.3 Cache and Memory |
| p.203 | 210 | Ch.5 Inference · \(\hat y = \arg\max Pr(y\mid x)\) |

Rule: **printed \(p\) ≈ PDF \(p − 7\)** (equivalently PDF ≈ printed + 7). **CONFIRM** on pairs above.

### Per-page stamps vs reason-model-map §3

| PAGE | Stamp | PDF pin(s) | Eye (short) / Notes |
|---|---|---|---|
| A Token sequence / arrival order | **CONFIRM** X1 (weak kin) | §1.2.1 PDF 14; Eq 1.1 PDF 9; encoder-only PDF 15 | “predicts the distribution of tokens at a position given its preceding tokens” · KEEP arrival order; dies at intern |
| B Interned vocabulary token | **CONFIRM** X2 CONFLICT; **REFINE** eye-quote | PDF 36 shared-vocab entry; PDF 44–45 word↔token / pick \(x_i\in V\) | Prior “Each token is represented as an entry…” was paraphrase → replace with book wording · FORBID intern id as Lace occurrence identity |
| C MASK / replace / corrupt | **CONFIRM** X4 CONFLICT | PDF 16–17; BERT PDF 30–31; deletion PDF 26 | 80% [MASK] / 10% random / 10% leave; Token Deletion · FORBID as Lace cut |
| D Embed / position store | **CONFIRM** X5 CONFLICT | PDF 32–33 eq (1.20); PDF 45 \(e_i\) | \(e = x + e_{pos} + e_{seg}\); decoder \(e_i\) = token emb + positional emb · FORBID embed store as Core |
| E Next-token / causal LM | **CONFIRM** X3 / X7 CONFLICT | PDF 14–15 loss (1.5)–(1.7); PDF 45 eq (2.3); Ch.5 PDF 210 eq (5.1) | \(\hat x_i = \arg\max Pr(x_i\mid prefix)\); inference \(\arg\max Pr(y\mid x)\) · FORBID next-token as Core continue |
| F When-to-point / false friends | **SILENT** on Φ | none as emission; lookalikes PDF 44, 45, 77, 210; Ch.3–4 TOC | still no when/arity/adjacency; tokenizer [GAP] opened not closed |
| X Cross-cut | **CONFIRM** | derived from A–F pins | temptations vs Hands; tokenizer `[GAP]`; Φ `[GAP]` |

T6 five-stakes: **skip** — PAGE 3/5 source pins (Eq 1.1 PDF 9; BERT PDF 30; §2.1.1 PDF 45; Ch.5 PDF 210) and KEEP/FORBID agree with this PDF (no eye-quote conflict).


## Pass 2 receipt

| Field | Value |
|---|---|
| Status | EXECUTED |
| When | 2026-09-18 ~19:13 PT |
| Station | clipboards · agent `reference-Mapper` |
| Plan | [xiao-zhu-pass-2-plan.md](xiao-zhu-pass-2-plan.md) |
| Hands skim | shoe → graphics A–D → systems-manifest → staking / law-why → reason-model-map §3 (X1–X7) → Pass 1 clipboard → five-stakes PAGE 3/5 (read-only; T5 skip) |
| PDF | **PRESENT** — cite Pass 1: `refs/local/xiao-zhu-foundations-llm.pdf` → `0f5d145d…ba50bc1a.pdf`; **277** pp.; text layer; printed≈PDF−7; SHA match; gitignored; never staged |
| Product | D1–D6 leftovers (+ D7 Shadow BERT MASK miniature); A–X morals untouched |
| Amended | reason-model-map · law · graphics · five-stakes · src/ · systems-manifest | **No** |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no Lace tokenizer; Φ unfilled |
| T5 five-stakes | **skip** (default) — PAGE 3/5 KEEP/FORBID agree; no rewrite |
| D7 | **included** — §1.3 BERT MASK/replace/leave (PDF 30–31); FORBID-as-Core-write; SILENT for Lace append |

## Pass 3 receipt

| Field | Value |
|---|---|
| Status | EXECUTED |
| When | 2026-09-18 ~19:23 PT |
| Station | clipboards · agent `reference-Mapper` |
| Plan | [xiao-zhu-pass-3-plan.md](xiao-zhu-pass-3-plan.md) |
| Hands skim | shoe → graphics A–D → systems-manifest → staking / law-why → reason-model-map §3 (X1–X7) → Pass 1–2 clipboard (FM-X* + D7) → five-stakes PAGE 3/5 (read-only; T6 skip) → AgentScope/Petersen mechanism card schema |
| PDF | **PRESENT** — cite Pass 1: `refs/local/xiao-zhu-foundations-llm.pdf` → attachment `0f5d145d…ba50bc1a.pdf`; SHA-256 `0f5d145d298a90bbe1648b365d97b8833e86be3c31bedd7db900a932ba50bc1a`; **277** pp.; text layer yes; printed≈PDF−7; gitignored; never staged |
| Method | `pdftotext -f N -l N -layout` on §1.1 / §1.2 / §1.3 / §2.1.1 / §2.3.3 / §3.3.2 / §4.2 / §4.3–4.4 / §5.1; Pass 1–2 pins reused |
| Product | Wave A mechanism cards **M-A1…M-A9** in [xiao-zhu-foundations-mechanisms.md](xiao-zhu-foundations-mechanisms.md); P3-M mechanism mesh below; Waves B–D deferred one-line seeds; ASCII **not** created |
| Mesh | **CONFIRM** ×9 · **REFINE** ×0 · **CONFLICT** ×0 |
| Amended | reason-model-map · law · graphics · five-stakes · src/ · systems-manifest · Pass 1–2 morals / FM-X* / D7 | **No** |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no invented Φ |
| Tokenizer | still `[GAP]` — PAGE F open; no Lace tokenizer invent |
| T6 five-stakes | **skip** (default) — P3-M finds no CONFLICT with PAGE 3/5 |

### P3-M — Mechanism coherence mesh

| Mechanism | Map | Clipboard PAGE | KEEP/FORBID tooth | Same story? |
|---|---|---|---|---|
| M-A1 Pre-train / foundation adapt pipeline | **X** / FM-X9 | X | KEEP-read pipeline; FORBID-as-Core-write; FORBID corpus→DOCUMENT | **CONFIRM** |
| M-A2 Tokenization → shared-vocab intern | **X2** | B | KEEP-read book primitive; **FORBID-as-Lace-identity** | **CONFIRM** |
| M-A3 Token + position (+ segment) embed | **X5** | D | KEEP-read book vectors; **FORBID-as-store** | **CONFIRM** |
| M-A4 Decoder-only causal next-token train | **X3** | E / A | KEEP-read objective; **FORBID next-token as Core continue**; SILENT | **CONFIRM** |
| M-A5 BERT MASK 80/10/10 corruption | **X4** | C / D7 | KEEP-read paper corruption; **FORBID-as-Core-write** (MASK ≠ Lace cut); SILENT | **CONFIRM** |
| M-A6 Soft-prompt / prompt-tuning | **X6** | F | KEEP-read steward; **FORBID as Core rows** | **CONFIRM** |
| M-A7 Instruction fine-tuning (SFT) | **X6** | F | KEEP-read steward; FORBID-as-Core-write; SILENT | **CONFIRM** |
| M-A8 RLHF / preference / DPO family | **X6** | F | KEEP-read steward alignment; **FORBID as Core write** | **CONFIRM** |
| M-A9 Prefilling / decode / KV-cache | **X7** | E / F | KEEP-read projection; **FORBID Core continue / POINTER when**; Φ `[GAP]` | **CONFIRM** |

P3-M summary: **9 CONFIRM · 0 REFINE · 0 CONFLICT**. Hard stamps retained (M-A2 identity · M-A3 store · M-A4/M-A9 next-token/decode · M-A5 MASK≠cut · M-A9 not POINTER when). Emission `[GAP]`. Tokenizer `[GAP]`. Five-stakes PAGE 3/5 untouched.

**P3-5S five-stakes:** skip — no PAGE 3/5 drift.

Pass 4 ASCII: see [xiao-zhu-foundations-ascii-machinery.md](xiao-zhu-foundations-ascii-machinery.md) (P-A1…P-A9).

## Pass 4 receipt

| Field | Value |
|---|---|
| Status | EXECUTED |
| When | 2026-09-18 ~19:30 PT |
| Station | clipboards · agent `Xiao–Zhu pass 4: ASCII Wave A machinery` |
| Plan | [xiao-zhu-pass-4-plan.md](xiao-zhu-pass-4-plan.md) |
| Hands skim | shoe → graphics A–D → systems-manifest → staking / law-why → reason-model-map §3 (X1–X7) → mechanisms Wave A M-A1…M-A9 → Pass 3 clipboard (P3-M) → five-stakes PAGE 3/5 (read-only) → AgentScope/Petersen ASCII schema |
| PDF | **PRESENT** — cite Pass 1: `refs/local/xiao-zhu-foundations-llm.pdf` → attachment `0f5d145d…ba50bc1a.pdf`; SHA-256 `0f5d145d298a90bbe1648b365d97b8833e86be3c31bedd7db900a932ba50bc1a`; **277** pp.; text layer yes; printed≈PDF−7; gitignored; never staged |
| Product | [xiao-zhu-foundations-ascii-machinery.md](xiao-zhu-foundations-ascii-machinery.md) — SOURCE MACHINERY overview + panels **P-A1…P-A9** 1:1 with M-A1…M-A9 + cross-walk + P4-X |
| P4-X | **9/9 PASS · FIX 0** (stamp · Implements · fence book-only / no POINTER word · false-friend · overview attach) |
| Amended | reason-model-map · law · graphics · five-stakes · src/ · systems-manifest · M-A* algorithms · Pass 1–2 morals / FM-X* / D7 | **No** |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no invented Φ |
| Tokenizer | still `[GAP]` — PAGE F open; no Lace tokenizer invent |
| Five-stakes | **skip** (default) — no PAGE 3/5 drift |

### P4 cross-walk pointer

Full table in ascii-machinery. Brief: P-A1↔M-A1/X·FM-X9 · P-A2↔M-A2/X2·FM-X2/8 · P-A3↔M-A3/X5·FM-X5 · P-A4↔M-A4/X3·FM-X3 · P-A5↔M-A5/X4·FM-X4·D7 · P-A6↔M-A6/X6·FM-X6 · P-A7↔M-A7/X6 · P-A8↔M-A8/X6 · P-A9↔M-A9/X7·FM-X7.

---

## Pass 5 — ASCII as order proposal + accuracy steward

**Status:** EXECUTED · 2026-09-18 ~19:45 PT · station clipboards · `reference-Mapper`  
**Plan:** [xiao-zhu-pass-5-plan.md](xiao-zhu-pass-5-plan.md)  
**ASCII:** [xiao-zhu-foundations-ascii-machinery.md](xiao-zhu-foundations-ascii-machinery.md) · **Mechanisms:** [xiao-zhu-foundations-mechanisms.md](xiao-zhu-foundations-mechanisms.md)  
**Law:** Pass 4 SOURCE MACHINERY is a **Shadow order proposal**, not Core. Emission Φ still `[GAP]`. Tokenizer still `[GAP]`. Wave B **SKIP**.

### P5-X — Accuracy matrix (M-A* ↔ P-A* ↔ overview)

Scoring: Implements / Fence / Overview / Pin all Y → **PASS**. Every FIX would name an edit target. Prefer panel/overview/cross-walk fixes over rewriting M-A* bodies. P4-X 9/9 PASS is **baseline only** — this matrix re-walks (not rubber-stamp).

| node (overview) | P-A* | M-A* | stamp | Implements OK | Fence OK | Overview OK | Pin OK | PASS/FIX |
|---|---|---|---|---|---|---|---|---|
| [corpus D + self-sup task] | P-A1 | M-A1 | KEEP-read; FORBID-as-Core-write; FORBID corpus→DOCUMENT fuel | Y | Y | Y | Y | **PASS** |
| [tokenize → shared vocab V] | P-A2 | M-A2 | KEEP-read; **FORBID-as-Lace-identity**; tokenizer `[GAP]` | Y | Y | Y | Y | **PASS** |
| [e = x + e_pos (+ e_seg)] | P-A3 | M-A3 | KEEP-read; **FORBID-as-store** | Y | Y | Y | Y | **PASS** |
| [causal next-token] | P-A4 | M-A4 | KEEP-read; **FORBID next-token as Core continue**; SILENT-for-Lace-append | Y | Y | Y | Y | **PASS** |
| [BERT MASK 80/10/10] | P-A5 | M-A5 | KEEP-read; **FORBID-as-Core-write** (MASK≠Lace cut); SILENT; D7 | Y | Y | Y | Y | **PASS** |
| [soft / SFT / RLHF\|DPO] (soft) | P-A6 | M-A6 | KEEP-read steward; **FORBID as Core rows**; SILENT | Y | Y | Y | Y | **PASS** |
| [soft / SFT / RLHF\|DPO] (SFT) | P-A7 | M-A7 | KEEP-read steward; FORBID-as-Core-write; SILENT | Y | Y | Y | Y | **PASS** |
| [soft / SFT / RLHF\|DPO] (RLHF/DPO) | P-A8 | M-A8 | KEEP-read steward; **FORBID as Core write**; **FORBID-as-Lace-history** | Y | Y | Y | Y | **PASS** |
| [prefill → decode / KV] | P-A9 | M-A9 | KEEP-read; **FORBID Core continue / POINTER when**; FORBID-as-store (KV); SILENT; Φ `[GAP]` | Y | Y | Y | Y | **PASS** |
| [corpus D] (input spine) | — | — | observe shelf first; FORBID D as DOCUMENT | — | Y | Y | Y | **PASS** |
| Lace Core / Graphic D / emission / tokenizer OFF board | — | — | FORBIDDEN off this board; Φ=`[GAP]`; tokenizer=`[GAP]` | — | Y | Y | Y | **PASS** |

**Verdict:** **11 PASS · 0 FIX**. No P5-F edits required. Canonical overview already singular in ascii-machinery.md (P5-O confirm). Cross-walk stamps match mechanisms + P3-M teeth. All 10 diagram fences book-only (**no POINTER word** inside fences). PDF pins reused from Pass 1–4 (no re-sight needed). Morals from Pass 1–4 unchanged (no softening).

### Order proposal (Shadow) — SOURCE MACHINERY as shelf hygiene

**Stamps:** **KEEP-read** · **FORBID-as-Core-write** · **FORBID-as-Lace-identity** · **FORBID-as-store** · **FORBID next-token/decode as Core continue** · **FORBID MASK as Lace cut** · **FORBID-as-POINTER-when** · **FORBID corpus→DOCUMENT** · **FORBID as Core rows** · **FORBID-as-Lace-history** · **SILENT-for-Lace-append** · **PROPOSAL**

1. **This is a proposal, not Core.** It does not amend AGENTS.md, `systems-manifest-ascii.md`, Graphic D, reason-model-map, or law. Hands may refuse without breach of Core. It is Shadow / Layer III shelf hygiene only — not an AGENTS.md amendment. **NON-binding** on Core / `src/` / Φ.

2. **Stage → hygiene table** (Pass 4 SOURCE MACHINERY read as steward order):

| Pipeline stage (ASCII) | Proposal for shelf / steward order |
|---|---|
| corpus D + self-sup task | Observe what is actually on the shelf (files, receipts, claim) before rewriting; refuse corpus→DOCUMENT fuel |
| tokenize → shared vocab V | Name book primitives honestly; **FORBID** vocab id as Lace WORD/Star identity; tokenizer stays `[GAP]` |
| e = x + e_pos (+ e_seg) | Diagram-check constructions against cards; refuse embed tables as second store beside Graphic D |
| causal next-token / BERT MASK | Stamp-check training/corruption objectives — not Piece 2 continue / not Lace cut |
| soft / SFT / RLHF\|DPO | Steward adaptation only — **FORBID** as Core rows / Core write / Lace history |
| prefill → decode / KV | Projection / inference memory only — **FORBID** as Core continue / POINTER when; SILENT for Lace append |
| FORBIDDEN exit → Core / Φ / tokenizer | Decisive judgment = commit / release / defer / stop — **not** Φ fill / Lace tokenizer invent |

3. **Recommended reader file order** (proposal only):  
   `clipboard (admit) → mechanisms (algorithms) → ascii-machinery (diagrams) → pass plans (history)`

4. **Steward loop** when touching this shelf: observe → name → diagram-check → stamp-check → list OPENs → decide (commit / release / defer / stop).

5. **Explicit FORBID:** using this loop as a Φ scheduler; inventing a Lace tokenizer; vocab-as-identity; embed/KV-as-store; next-token/decode as Core continue; MASK as Lace cut; soft/SFT/RLHF as Core rows/write/history; Hands override; promoting this proposal into Core / AGENTS.md / systems-manifest-ascii / Graphic D. Proposal is **SILENT for Lace append** — not a Φ scheduler.

6. **Honesty link:** accuracy matrix **P5-X** above is how the proposal stays honest (every M-A* ↔ P-A* ↔ overview node checked).

Mirror (short): under SOURCE MACHINERY overview in [xiao-zhu-foundations-ascii-machinery.md](xiao-zhu-foundations-ascii-machinery.md).

### P5-R — Pass 5 receipt

| Field | Value |
|---|---|
| Status | EXECUTED |
| When | 2026-09-18 ~19:45 PT |
| Station | clipboards · agent `reference-Mapper` |
| Plan | [xiao-zhu-pass-5-plan.md](xiao-zhu-pass-5-plan.md) |
| Hands skim | shoe → graphics A–D → systems-manifest (+ ascii Core separate) → staking / law-why → reason-model-map §3 (X1–X7) → M-A1…A9 → P-A1…A9 + overview → Pass 1–4 receipts → five-stakes PAGE 3/5 (read-only) |
| PDF | **PRESENT** gitignored; SHA-256 `0f5d145d298a90bbe1648b365d97b8833e86be3c31bedd7db900a932ba50bc1a`; **277** pp.; never staged |
| P5-X | **11 PASS · 0 FIX** (9 Wave A pairs + corpus input spine + Core/Φ/tokenizer off-board) |
| P5-F | none (matrix all PASS) |
| P5-O | exactly one SOURCE MACHINERY overview fence in ascii-machinery.md; Core/Φ/tokenizer off-board |
| P5-P | Order Proposal full text **this section**; short mirror under ascii overview |
| Wave B | **SKIP** (default) — still deferred |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no invented Φ |
| Tokenizer | still `[GAP]` — PAGE F open; no Lace tokenizer invent |
| Amended | reason-model-map · law · graphics · five-stakes · src/ · systems-manifest · systems-manifest-ascii · PAGE morals · FM-X* · P3-M · M-A* bodies · Core ASCII | **No** |
| Touched | clipboard · ascii-machinery · pass-5-plan (EXECUTED) |

---

## Pass 6 — Rigorous ASCII systems-diagram accuracy

**Status:** EXECUTED · 2026-09-18 ~19:47 PT · station clipboards · `Xiao-Zhu Pass 6 execute`  
**Plan:** [xiao-zhu-pass-6-plan.md](xiao-zhu-pass-6-plan.md)  
**ASCII:** [xiao-zhu-foundations-ascii-machinery.md](xiao-zhu-foundations-ascii-machinery.md) · **Mechanisms:** [xiao-zhu-foundations-mechanisms.md](xiao-zhu-foundations-mechanisms.md)  
**Law:** ASCII board + Order Proposal remain **Shadow proposal** — not Core · not Φ · not Lace tokenizer. Wave B **SKIP**. Emission still `[GAP]`. Tokenizer still `[GAP]`.

### P6-A — Structural analysis (SOURCE MACHINERY as systems diagram)

Walked the singular overview fence in ascii-machinery.md (book constructive spine only). Scoring: every checklist row PASS or OPEN-with-cause.

| Item | Evidence | PASS/OPEN |
|---|---|---|
| Spine completeness (corpus→tokenize/V→embed→causal\|MASK→soft/SFT/RLHF→prefill/decode/KV→FORBIDDEN Core/Φ/tokenizer) | Overview fence: `[corpus D + self-sup]` → `[tokenize -> shared vocab V]` → `[e = x + e_pos (+ e_seg)]` → fork `[causal next-token]` / `[BERT MASK 80/10/10]` → `[soft / SFT / RLHF\|DPO]` → `[prefill -> decode / KV]` → `x --> Lace Core / Graphic D / emission / tokenizer` **FORBIDDEN** | **PASS** |
| No orphan nodes | Every box cites ≥1 M-A*/P-A* **or** is INPUT (corpus D spine) / FORBIDDEN exit (Core/Graphic D/emission/tokenizer). Soft/SFT/RLHF aggregate cites M-A6..8 / P-A6..8 | **PASS** |
| Wave A coverage (all M-A1…A9 on overview) | M-A1…A9 each appear; M-A6..8 / P-A6..8 share one aggregated soft/SFT/RLHF node (confirmed attach) | **PASS** |
| Off-board integrity | Lace Core / Graphic D / emission / tokenizer appear only as **FORBIDDEN exits** + off-board note; Φ=`[GAP]`; tokenizer=`[GAP]`; not on-board stores | **PASS** |
| Glyph discipline (no WORD/POINTER as book objects in fences) | **10** fences scanned: **0** contain the word `POINTER`. Overview fence: no `WORD`/`POINTER`; Graphic D named only as FORBIDDEN exit. P-A2 refusal comment “NOT Lace WORD” is refuse-label, not book object | **PASS** |
| Stamp under-fence placement | All 9 panels keep stamps on `stamp under fence:` lines **under** the fence (not smuggled as fence glyphs). Overview FORBID lines are labels beside nodes, not Lace objects. No POINTER invent inside fences | **PASS** |
| Singularity (one canonical overview) | Exactly one `SOURCE MACHINERY overview` fence (P5-O reconfirmed); other phrase hits are Status/pointers only | **PASS** |
| Panel coverage P-A1…P-A9 | Each panel present with Mechanism cite · Lace stamp · Implements · fence · under-fence stamp line | **PASS** |

**P6-A counts:** **8 PASS · 0 OPEN**.

Pointer: ascii file Status + overview P6 pointer + steward block link here.

### P6-P — Order Proposal rigor (clipboard P5-P + ascii short mirror)

| Check | Question / result | PASS/OPEN |
|---|---|---|
| Claim–diagram bind | Each stage→hygiene row maps to a real overview node / P-A* (corpus/P-A1; tokenize/P-A2; embed/P-A3; causal\|MASK/P-A4–5; soft/SFT/RLHF/P-A6–8; prefill/decode/P-A9; FORBIDDEN exit) | **PASS** |
| No Core/Φ/tokenizer overclaim | P5-P §1: proposal not Core / not AGENTS.md / not systems-manifest-ascii / not Graphic D / not reason-model-map / not law; NON-binding on Core/`src/`/Φ. Mirror: “not Core, not an AGENTS.md amendment, not a Φ scheduler…”; tokenizer `[GAP]` explicit | **PASS** |
| FORBID completeness | Explicit: FORBID-as-Core-write · FORBID-as-Lace-identity · FORBID-as-store · FORBID next-token/decode as Core continue · FORBID MASK as Lace cut · FORBID-as-POINTER-when · FORBID corpus→DOCUMENT · FORBID as Core rows · FORBID-as-Lace-history · SILENT-for-Lace-append · PROPOSAL · Hands-refusal. Panel stamps P-A2/P-A5/P-A8/P-A9 agree | **PASS** |
| Steward loop soundness | observe→name→diagram-check→stamp-check→OPEN list→decide (commit/release/defer/stop). Decide excludes POINTER-when / Φ fill / Lace tokenizer invent / Core install (FORBIDDEN exit row + §5 Explicit FORBID) | **PASS** |
| File-order proposal-only | clipboard → mechanisms → ascii → pass plans labeled “proposal only” / “Recommended reader order (proposal only)” | **PASS** |
| Mirror ≤ clipboard | Ascii short mirror restates stamps + hygiene loop + non-Core / non-Φ / non-history / non-store / tokenizer GAP; does **not** strengthen beyond clipboard P5-P; defers stage table to clipboard | **PASS** |
| FORBID-as-Core intact | Proposal does not install into systems-manifest-ascii / Graphic D / AGENTS.md; Hands may refuse; NON-binding explicit | **PASS** |

**P6-P result:** **7 PASS · 0 OPEN**. No overclaim found. **No wording fix** (FORBIDs already explicit and fence-faithful; softening forbidden and unnecessary). Still Shadow / non-binding.

### P6-X — Deep accuracy (re-walk; do not inherit P4-X/P5-X blindly)

Columns: Cite · Stamp · Implements reverse-walk · Fence fidelity · Overview attach · FM · Verdict. Special gates **P-A2 / P-A5 / P-A8 / P-A9** must PASS.

| P | M | Cite | Stamp | Implements | Fence | Overview | FM | Verdict |
|---|---|---|---|---|---|---|---|---|
| P-A1 | M-A1 | PASS — §1.1 / Eq (1.1) PDF pp.8–13 ≡ M-A1 (pin reuse; no doubt) | PASS — KEEP-read; FORBID-as-Core-write; FORBID corpus→DOCUMENT fuel ≡ card | PASS — 3.1–3.5: separate → self-sup → θ̂ → adapt → refuse D as DOCUMENT | PASS — D, g_theta, θ̂, fine-tune/prompt only; “NOT DOCUMENT append”; no POINTER | PASS — corpus node | FM-X9 present | **PASS** |
| P-A2 | M-A2 | PASS — shared vocab PDF **p.36** re-sighted (“every token is just an entry of the shared vocabulary”); §2.1 pp.44–45 ≡ M-A2 | PASS — **FORBID-as-Lace-identity** explicit; tokenizer `[GAP]` under fence ≡ card | PASS — 3.1–3.4: tokenize → intern V → sequence → refuse Lace identity | PASS — **special gate:** vocab intern only (text→units→x_i∈V); “NOT Lace WORD/Star”; tokenizer `[GAP]` off-fence comment; no Star glyphs | PASS — tokenize node + FORBID-as-Lace-identity | FM-X2/X8 present | **PASS** |
| P-A3 | M-A3 | PASS — §1.3.1.2 / §2.1.1 PDF pp.32–33, 45 ≡ M-A3 | PASS — KEEP-read; **FORBID-as-store** under fence ≡ card | PASS — 3.1–3.5: token→pos→seg→sum e→refuse Graphic D | PASS — x, e_pos, e_seg, e; no Graphic D rows; **FORBID-as-store** under fence | PASS — embed node | FM-X5 present | **PASS** |
| P-A4 | M-A4 | PASS — §1.2.1 (1.5)–(1.7) / §2.1 (2.3) PDF pp.14–15, 45 ≡ M-A4 | PASS — FORBID next-token as Core continue; SILENT ≡ card | PASS — 3.1–3.5: Pr→LogCE→argmax_θ→optional pick→refuse continue | PASS — Pr, Loss, θ̂, argmax over V; no continue glyph; no POINTER | PASS — causal-train branch | FM-X3 present | **PASS** |
| P-A5 | M-A5 | PASS — §1.3 BERT PDF **pp.30–31** re-sighted (15% · 80/10/10 · Loss_MLM (1.18)) ≡ M-A5 / D7 | PASS — **FORBID-as-Core-write (MASK ≠ Lace cut)**; SILENT; see D7 ≡ card | PASS — 3.1–3.6: 15%→80/10/10→Loss_MLM→NSP→D7→refuse Lace cut | PASS — **special gate:** 80/10/10 corruption visible; `[MASK]`/replace/leave; “≠ Lace cut”; see D7; not Piece 3 cut | PASS — MASK branch | FM-X4 present | **PASS** |
| P-A6 | M-A6 | PASS — §3.3.2 Soft Prompts PDF pp.149–155 ≡ M-A6 | PASS — FORBID as Core rows; SILENT ≡ card | PASS — 3.1–3.4: choose→prefix/prompt tune→optimize→refuse Core rows | PASS — soft_emb, prefixes, freeze LLM; no Core rows | PASS — soft/SFT/RLHF strip | FM-X6 present | **PASS** |
| P-A7 | M-A7 | PASS — §4.2.1 SFT PDF pp.164–170; (4.1)–(4.2) ≡ M-A7 | PASS — FORBID-as-Core-write; SILENT ≡ card | PASS — 3.1–3.4: (x,y)→log Pr(y\|x)→θ̃→refuse Core write | PASS — SFT pairs, Pr(y\|x), θ̃ only; no Core rows | PASS — soft/SFT/RLHF strip | FM-X6 present | **PASS** |
| P-A8 | M-A8 | PASS — §4.3 RLHF PDF **~179–182** re-sighted (prefs→reward→PPO); §4.4 DPO PDF **~200** re-sighted (Fig 4.10 / §4.4.2) ≡ M-A8 | PASS — **FORBID as Core write** + **FORBID-as-Lace-history** under fence ≡ card | PASS — RLHF 3.1–3.4 + DPO 4.1–4.2: prefs→r/PPO or DPO→refuse Core write / Lace history | PASS — **special gate:** prefs / r_φ / PPO / DPO only; “NOT Graphic D; NOT Lace occurrence history”; no history/append glyph | PASS — soft/SFT/RLHF strip + FORBID history | FM-X6 present | **PASS** |
| P-A9 | M-A9 | PASS — eq (5.1) PDF **p.210** + §5.1 PDF **pp.211–215** re-sighted (prefill/decode/Append KV (5.8)–(5.9)); §2.3.3 PDF **p.77** ≡ M-A9 | PASS — FORBID Core continue + **FORBID-as-POINTER-when** + **FORBID-as-store** (KV); SILENT; Φ `[GAP]` ≡ card | PASS — prefill 3.1–3.3 + decode 4.1–4.4: KV→Pr→select→Append→refuse continue / when-rule | PASS — **special gate:** prefill/decode/KV only; “KV = transient inference memory”; “NOT Piece 2 continue”; “emission stays [GAP]”; **no POINTER word** in fence | PASS — prefill/decode node | FM-X7 present | **PASS** |

**Special-gate notes**
- **P-A2:** FORBID-as-Lace-identity is stamp + under-fence + overview label; fence is vocab intern only; tokenizer stays `[GAP]` (off-fence). Fence-faithful.
- **P-A5:** MASK ≠ Lace cut is stamp + under-fence + overview label; 80/10/10 + D7 visible; not Piece 3 cut. Fence-faithful.
- **P-A8:** FORBID as Core write + FORBID-as-Lace-history are stamp + under-fence + overview aggregate; fence is preference/reward/policy only (not Lace append / history rewrite). Fence-faithful.
- **P-A9:** FORBID Core continue + FORBID-as-POINTER-when + FORBID-as-store (KV) are stamp + under-fence + overview; fence is prefill/decode/KV only; Φ stays `[GAP]`; **no POINTER word** inside fence. Fence-faithful.
- **P-A3 / P-A6:** FORBID-as-store / FORBID as Core rows still under fence (confirmed).

**False-friend fence scan:** no fence accidentally looks like Graphic D / 1D array / POINTER art (10/10 book-only).

**P6-X counts:** **9 PASS · 0 FIX**. Special gates P-A2 / P-A5 / P-A8 / P-A9 **PASS**.

### P6-F — Fixes

| # | Target | Cause | Edit |
|---|---|---|---|
| 1 | ascii steward test (embed line) | Analysis-cited moral misstatement: “Embed boxes are a second store” contradicted FORBID-as-store / P-A3 | Rewrote to “Embed boxes are book vectors — not a second store / Graphic D.” |

No Implements/stamp/pin/fence/proposal wording edits required beyond that. Mechanisms bodies untouched (law). FORBIDs not softened. Singular overview reconfirmed. No POINTER in any diagram fence.

### P6-R — Pass 6 receipt

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~19:47 PT |
| Station | clipboards · agent `Xiao-Zhu Pass 6 execute` |
| Plan | [xiao-zhu-pass-6-plan.md](xiao-zhu-pass-6-plan.md) → **EXECUTED** |
| Hands skim | shoe (staking) → graphics A–D → systems-manifest (+ ascii Core separate) → law-why → reason-model-map §3 X1–X7 → M-A1…A9 → ascii overview+P-A* → clipboard P5-P/P5-X → five-stakes PAGE 3/5 (read-only) |
| PDF | **PRESENT** gitignored `refs/local/xiao-zhu-foundations-llm.pdf` SHA `0f5d145d298a90bbe1648b365d97b8833e86be3c31bedd7db900a932ba50bc1a` · **277** pp.; re-sighted p.36 (shared V) · pp.30–31 (BERT 80/10/10) · ~179–182 (RLHF) · ~200 (DPO) · p.210/(5.1) · pp.211–215 (prefill/KV Append) · p.77 (KV cache); **never staged** |
| P6-A | **8 PASS · 0 OPEN** |
| P6-P | **7 PASS · 0 OPEN**; no overclaim; no wording fix; still Shadow / non-binding; FORBID-as-Core intact |
| P6-X | **9 PASS · 0 FIX**; special gates P-A2/P-A5/P-A8/P-A9 **PASS** |
| P6-F | **1** (steward embed moral typo) |
| Overall verdict | **DIAGRAM SOUND** |
| Wave B | **SKIP** (default) |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; **no invented Φ** |
| Tokenizer | still `[GAP]` — PAGE F open; no Lace tokenizer invent |
| Amended | reason-model-map · law · graphics · five-stakes · src/ · systems-manifest · systems-manifest-ascii · PAGE morals · FM-X* · P3-M · M-A* bodies · Core ASCII | **No** |
| Touched | clipboard · ascii-machinery (pointer/status + steward fix) · pass-6-plan (EXECUTED) |

**Steward test:** Shoe in hands — refuse “install this systems diagram as Graphic D / Core ASCII” using P6-A + P6-P alone. Refuse “intern vocab as Lace WORD” using P-A2 / P6-X. Refuse “MASK the strand” using P-A5 / P6-X. Refuse “decode as POINTER when” / “KV as second store” using P-A9 / P6-X. Refuse “RLHF as Lace history” using P-A8 / P6-X. Decisive judgment = release/stop — not Φ. Emission `[GAP]`. Tokenizer `[GAP]`.


```
┌──────────────────────────────────────────────────────────────────────────┐
│ CLIPBOARD                                                                │
│ laceArc ← Xiao & Zhu Foundations of LLMs                                 │
│ law: arrival order kin · intern/MASK/embed/next-token ≠ Core · [GAP]     │
├──────────────────────────────────────────────────────────────────────────┤
│ [clip]                                                                   │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE A — TOKEN SEQUENCE / ARRIVAL ORDER                        │     │
│   │ locus: §1.2.1 Decoder-only Pre-training  printed p.7 (PDF 14)  │     │
│   │ quote/eye:                                                     │     │
│   │   decoder-only “predicts the distribution of tokens at a       │     │
│   │    position given its preceding tokens.” Sequence              │     │
│   │    x0,...,xi. Encoder-only (§1.2.2 p.8) “reads a sequence      │     │
│   │    of tokens x = x0...xm.”                                     │     │
│   │                                                                │     │
│   │   ordered tokens ──looks like──► Piece 3 arrival               │     │
│   │   (indexed order survives shared vocabulary IDs)               │     │
│   │                                                                │     │
│   │ ON SHOE: Piece 3 Raw Input / Arrival Order                     │     │
│   │ KEEP: arrival order                                            │     │
│   │ FORBID: treat vocab atoms as Lace WORD identity                │     │
│   │ EMISSION? NO [GAP]                                             │     │
│   │ vs current X1: indexed order is weak kin; no Lace tokenizer.    │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE B — INTERNED VOCABULARY TOKEN                             │     │
│   │ locus: shared vocab printed p.29 (PDF 36);                     │     │
│   │        ch.2.1 printed p.37–38 (PDF 44–45)                      │     │
│   │ quote/eye:                                                     │     │
│   │   “every token is just an entry of the shared vocabulary.”     │     │
│   │   ch.2: “We will use terms word and token interchangeably.”    │     │
│   │   Generation: pick xi from V so Pr(xi | prefix) is max.        │     │
│   │                                                                │     │
│   │   one id "THE" @ many positions keeps indexed occurrences      │     │
│   │   (forbid replacing distinct Lace passes with one object)      │     │
│   │                                                                │     │
│   │ KEEP: (none as Core primitive)                                 │     │
│   │ FORBID: intern token as WORD / Star node                       │     │
│   │ ON SHOE: Piece 4 / Piece 7 · Graphic B                         │     │
│   │ EMISSION? NO [GAP]                                             │     │
│   │ vs current X2: identity sharing alone is not pass collapse.    │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE C — [MASK] / REPLACE / DELETE (BERT-style)                │     │
│   │ locus: §1.2.2.1 Masked LM printed p.9–10 (PDF 16–17);          │     │
│   │        BERT recipe printed p.23 (PDF 30)                       │     │
│   │ quote/eye:                                                     │     │
│   │   example: “It is raining” → “It is [MASK].”                   │     │
│   │   selected tokens: 80% → [MASK]; 10% random replace;           │     │
│   │    remainder left. Elsewhere: deletion removes tokens          │     │
│   │    from the sequence (printed ~p.19).                          │     │
│   │                                                                │     │
│   │   mask · random-replace · leave ──X──► Rule Zero / Piece 1     │     │
│   │   "It is raining" → "It is [MASK]" = cut-and-retie             │     │
│   │                                                                │     │
│   │ KEEP: (none — anti-model for tokenizer notes)                  │     │
│   │ FORBID: [MASK] / replace / delete as Lace write                │     │
│   │ ON SHOE: Piece 1 continuous strand · Piece 3 keep the pass     │     │
│   │ EMISSION? NO [GAP]                                             │     │
│   │ vs reason-model-map §3: CONFIRMS X4 CONFLICT.                  │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE D — EMBEDDING STORE                                       │     │
│   │ locus: BERT input printed ~p.23–26 (PDF 30–33);                │     │
│   │        decoder body printed p.38 (PDF 45)                      │     │
│   │ quote/eye:                                                     │     │
│   │   e = x + epos + eseg   (token + position + segment)           │     │
│   │   decoder: ei = token embedding of xi + positional             │     │
│   │    embedding of i. Then a stack of blocks.                     │     │
│   │                                                                │     │
│   │   token+pos+segment vectors ──X──► second store beside cord    │     │
│   │                                                                │     │
│   │ KEEP: (none as Core schema)                                    │     │
│   │ FORBID: embed store / rotary table as Lace authority           │     │
│   │ ON SHOE: Graphic D — no separate database                      │     │
│   │ EMISSION? NO [GAP]                                             │     │
│   │ vs reason-model-map §3: CONFIRMS X5 CONFLICT.                  │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE E — NEXT-TOKEN / CAUSAL LM AS CORE                        │     │
│   │ locus: §1.2.1 printed p.7–8 (PDF 14–15);                       │     │
│   │        ch.2 eq (2.3) printed p.38 (PDF 45)                     │     │
│   │ quote/eye:                                                     │     │
│   │   Loss over positions: L(pθ_{i+1}, p^gold_{i+1}).              │     │
│   │   ˆxi = arg max_{xi ∈ V} Pr(xi | x0,...,x_{i−1})               │     │
│   │                                                                │     │
│   │   Pr(next | prefix) ──X──► Piece 2 Continue (append section)   │     │
│   │   distribution is a projection that talks about a lace         │     │
│   │                                                                │     │
│   │ KEEP: (none as Core operator)                                  │     │
│   │ FORBID: next-token loss / decoder objective as Lace Core       │     │
│   │ ON SHOE: Piece 2 output = new section, not a distribution      │     │
│   │ EMISSION? NO [GAP]                                             │     │
│   │ vs reason-model-map §3: CONFIRMS X3 / X7 CONFLICT.             │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE F — ANYTHING THAT LOOKS LIKE “WHEN TO POINT”              │     │
│   │ locus: NONE FOUND as an emission rule                          │     │
│   │ false friends inspected (PDF pins):                            │     │
│   │   cache / memory §2.3.3 PDF 77     → holder machinery [H]      │     │
│   │   word/token usage PDF 44 does not establish pass collapse     │     │
│   │   arg max Pr eq (2.3)/(5.1) PDF 45/210 → projection, not append│     │
│   │   prompting Ch.3 / alignment Ch.4  → steward [H] (X6)          │     │
│   │   tokenization footnote PDF 9      → unstated in graphics      │     │
│   │                                                                │     │
│   │   looks like emission ──silenced──► [GAP]                      │     │
│   │   do not invent when / arity / adjacency                       │     │
│   │   (tokenization remains unstated in graphics)                  │     │
│   │                                                                │     │
│   │ DELTA: silent on when/arity/adjacency                          │     │
│   │         + conflict (intern / MASK / next-token)                │     │
│   │         + opens tokenizer [GAP] without closing Φ              │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE X — CROSS-CUT                                             │     │
│   │                                                                │     │
│   │  temptation              │ Hands deadbolt                      │     │
│   │  ───────────────────────┼──────────────────────────────────── │     │
│   │  ordered token list     │ Piece 3 arrival (raw, keep pass)     │     │
│   │  interned vocab id      │ two wraps ≠ one node named THE       │     │
│   │  [MASK] / replace       │ Rule Zero — no cut-and-retie         │     │
│   │  embedding side store   │ Graphic D one line                   │     │
│   │  next-token Core        │ Continue = append, not Pr(·)         │     │
│   │  emit POINTER from book │ [GAP] — book does not settle it      │     │
│   │                                                                │     │
│   │  STILL [GAP]: POINTER when / arity / adjacency                 │     │
│   │  STILL [GAP]: how spelling becomes WORD without intern/mask    │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│ [clip]                                                                   │
└──────────────────────────────────────────────────────────────────────────┘
```

---

## Steward notes

- This book is the anti-model of ingest. PAGE A is the only weak Hands kin, and it dies the moment the token is a vocab id.
- CC BY-NC stays out of Apache body text. These sheets cite; they do not paste chapters.
- PAGE F opens a tokenizer gap. Opening is not filling \(\Phi\).
- This file does not amend `docs/reason-model-map.md`.
- Pass 1 (PDF-sighted) verified loci on attachment `0f5d145d…ba50bc1a`; emission remains `[GAP]`.

---

## Pass 2 deltas

Pass 1 filled PAGE A–F, X against the PDF. These deltas are leftovers only. They do not invent emission. A–X morals are unchanged. X1 KEEP and X2/X4/X5/X3/X7 FORBID are not softened.

### D1 — What this clipboard is not

- Not Core / not a sixth graphic.
- Not `docs/pointer-emission.md` / not a Φ fill.
- Not a rewrite of `docs/reason-model-map.md` §3.
- Not a Lace tokenizer specification (PAGE F opens a gap; does not close it).
- Not permission to treat vocab ids as WORD identity.
- Not permission to treat next-token / MASK / embeds as Core ops.
- Not license to paste CC BY-NC body into Apache tree.
- Not a substitute for [clipboard-five-stakes.md](clipboard-five-stakes.md) PAGE 3/5 (admission boundary lives there too; D2 mirrors it).

### D2 — ON THE SHOE / KEEP / FORBID / MAP ARROWS

Mirrored from five-stakes PAGE 3/5 and Pass 1 morals. Book clipboard holds the page walk; this strip is the admission boundary in one place.

```
┌──────────────────────────────────────────────────────────────────────────┐
│ ON THE SHOE                                                              │
│   Order of holes is real. One wrap of “the” is not another wrap.         │
│   Predicting the next hole is not putting the cord through it.           │
│   Masking / deleting a wrap is cutting the lace.                         │
│                                                                          │
│ KEEP                           FORBID                                    │
│   arrival order (X1)           intern token as identity (X2)             │
│     indexed order is weak kin  [MASK] / replace / delete (X4)            │
│                                embed / position store (X5)               │
│                                next-token / causal LM as Core (X3, X7)   │
│                                                                          │
│ MAP ARROWS                                                               │
│   X1 indexed sequence ──weak kin──► Piece 3 order only                   │
│   X2 intern   ──[X]──►      Piece 4 / Piece 7                            │
│   X3/X7 Pr(.) ──[X]──►      Piece 2  (wrong output type)                 │
│   X4 [MASK]   ──[X]──►      Piece 3                                      │
│   emission    ──[GAP]─►     POINTER when / arity / adjacency unset       │
│                                                                          │
│ EMISSION settled? NO  [GAP]                                              │
│ vs map: anti-model of ingest · CC BY-NC out of Apache · tokenizer [GAP]  │
└──────────────────────────────────────────────────────────────────────────┘
```

### D3 — Failure modes (FM-X1…X9)

| ID | Misread | Hands deadbolt | PDF pin (Pass 1 reuse) |
|---|---|---|---|
| FM-X1 | token sequence order ⇒ a Lace arrival or identity specification | KEEP indexed order as **weak kin** of Piece 3 even with shared vocabulary IDs; that comparison supplies no Lace representation or tokenizer | §1.2.1 “preceding tokens” **PDF 14** / printed p.7; Eq (1.1) **PDF 9** / printed p.2 (cite A) |
| FM-X2 | shared vocab id ⇒ permission to collapse separate Lace occurrences | Distinct indexed occurrences can share token identity. FORBID replacing retained WORD passages with one vocabulary object, count or embedding store (Piece 4/7 · Graphic B) | Eq (1.1) **PDF 9** / printed p.2; token/position representations **PDF 45** / printed p.38; prior shared-vocabulary pin **PDF 36** (cite B) |
| FM-X3 | next-token / argmax ⇒ Core continue / ingest operator | Piece 2 output = new section, not a distribution; FORBID next-token as Core continue | §1.2.1 loss (1.5)–(1.7) **PDF 14–15**; eq (2.3) **PDF 45**; Ch.5 \(\hat y=\arg\max Pr(y\mid x)\) **PDF 210** (cite E) |
| FM-X4 | [MASK] / replace / delete ⇒ Lace cut or authorized rewrite | Rule Zero / Piece 1 continuous strand; FORBID MASK/replace/delete as Lace write | §1.2.2.1 Masked LM **PDF 16–17**; BERT 80/10/10 **PDF 30–31**; Token Deletion **PDF 26** (cite C) |
| FM-X5 | token+pos(+seg) embed table ⇒ Core store / second world | Graphic D — no separate database; FORBID embed/position store as Core | \(e=x+e_{pos}+e_{seg}\) **PDF 32–33**; decoder \(e_i\) **PDF 45** (cite D) |
| FM-X6 | soft prompt / RLHF / alignment ⇒ Core write | steward/adaptation only ([H]); **conflict** if stored as Core rows; not Graphic D | Ch.3 Prompting / soft prompts TOC printed ~96–152 (**PDF ~103–159**); Ch.4 Alignment / RLHF TOC printed ~155–172 (**PDF ~162–179**); Pass 1 PAGE F X6 steward pin (cite F/X) |
| FM-X7 | decoding / prefilling / KV-cache ⇒ POINTER when-rule or Φ fill | projection/generation ≠ append; FORBID as Core continue; does not emit POINTER; Φ stays `[GAP]` | Ch.5 Inference eq (5.1) **PDF 210**; §5.1 Prefilling and Decoding **PDF 211** / printed p.204; KV cache / memory §2.3.3 **PDF 77** / printed p.70 (cite E/F) |
| FM-X8 | “tokenizer” discussion ⇒ Lace tokenizer delivered (close the gap) | PAGE F opens tokenizer `[GAP]`; opening ≠ filling Φ; no Lace tokenizer invent | footnote on tokens/tokenization **PDF 9** (“tokens are basic units… separated through tokenization”); Pass 1 F **SILENT** on Φ (cite F) |
| FM-X9 | corpus / dataset ⇒ DOCUMENT append / punch-card Lace fuel | training set \(D\) mutates weights; not punch-card append to one lace; DOCUMENT type unset | §1.2.1 “collection of token sequences” / set \(D\) objective (1.6) **PDF 14–15**; TOC notation \(D\) = dataset (front matter); reason-model-map Piece 10 (cite E/X) |

No FM row left `[OPEN]`. Pins reused from Pass 1; `pdftotext` on PDF 9, 14–15, 30–31, 77, 210–211 only to confirm FM-X6–X9 / D7 eye-quotes. No invented Φ or Lace tokenizer.

### D4 — Interface coherence

X1 supports only a **weak comparison of indexed order** with Hands inputs; shared vocabulary IDs do not erase those positions. This comparison is not a Lace arrival or storage specification. X2–X5 and X3/X7 outputs do not match any Core write (intern ↛ WORD/Star; MASK ↛ Lace cut; embeds ↛ Graphic D store; next-token / \(\arg\max Pr\) ↛ Piece 2 continue). Soft prompts / alignment / RLHF (X6) stay steward-side if used at all. Nothing in the book supplies POINTER when / arity / adjacency or a Lace tokenizer — `[GAP]` remains. Prediction ↛ putting cord through a hole. This paragraph does not close Φ.

### D5 — Source gate (cite Pass 1)

PDF is **PRESENT** (do not narrate absent). Pass 1 receipt: `refs/local/xiao-zhu-foundations-llm.pdf` → attachment `0f5d145d298a90bbe1648b365d97b8833e86be3c31bedd7db900a932ba50bc1a.pdf`; **277** pages; text layer present (arXiv GenPDF / pikepdf); printed ≈ PDF − 7; SHA-256 `0f5d145d298a90bbe1648b365d97b8833e86be3c31bedd7db900a932ba50bc1a`; `git check-ignore` OK; **never `git add`**. Method this pass: reuse Pass 1 pins; light `pdftotext` on PDF 9 / 14–15 / 30–31 / 77 / 210–211 for FM-X6–X9 and optional D7 only. Five-stakes PAGE 3/5 left untouched (T5 skip). CC BY-NC body stays out of Apache Core.

### D6 — Sealed (still)

- Invent POINTER when / arity / adjacency (Φ stays `[GAP]`)
- Invent a Lace tokenizer to “close” PAGE F
- Soften X1 KEEP or X2/X4/X5/X3/X7 FORBID
- Amend reason-model-map, law, graphics, systems-manifest, or five-stakes from this clipboard
- Add `src/` or edit other reference shelves
- Git-add the PDF
- Paste CC BY-NC body into Apache Core
- Treat next-token / MASK / embeds as Lace Core
- Pretend OCR / claim PDF absent when the file is present

### D7 — Constructive miniature (Shadow only) — BERT MASK recipe

**Stamp:** FORBID-as-Core-write · **SILENT for Lace append** · not a Graphic D scheduler · not Φ · not a Lace tokenizer. Paper algorithm only (§1.3 Example: BERT **PDF 30–31** / printed p.23). Steps below are what the PDF states; no invented operators. Causal next-token train/sample (§1.2.1 / Ch.5) left as sibling anti-model, not a second miniature.

1. Given token sequence \(x\), select positions \(A(x)\) — standard BERT: **15%** of tokens in each sequence.
2. For each selected position, apply one of three corruptions:
   - **Token Masking (80%):** replace the token with the symbol `[MASK]` (e.g. “It is raining” → “It is [MASK].”).
   - **Random Replacement (10%):** change the token to a random vocabulary token.
   - **Unchanged (10%):** leave the selected token as-is.
3. Let \(\bar x\) be the modified sequence. Train with masked LM loss
   \(\mathrm{Loss}_{MLM} = -\sum_{i\in A(x)}\log Pr_i(x_i\mid\bar x)\) (eq.**1.18**).
4. (Sibling task in same section:) next-sentence / IsNext–NotNext classification on paired sequences — still a corruption/adaptation objective, not a Lace write.

**[OPEN] (book continues; not settled for Lace):** exact sampling of the 15% set; interaction with NSP label construction; BART Token Deletion (**PDF 26**) as a related corruption — out of scope here. Do **not** finish those from Lace. Do **not** invent a Lace tokenizer from this recipe.

**Lace refusal:** this damages a training sequence on paper. It does **not** authorize MASK/replace/delete as a Lace edit, does **not** append to Graphic D, does **not** treat vocab ids as WORD identity, and does **not** schedule POINTER emission. Opening the tokenizer gap is not filling Φ.


Shoe in hands, or no.
