# Xiao & Zhu — mechanism cards (constructive algorithms)

**Status:** Pass 3 EXECUTED (Wave A M-A1…M-A9; Waves B–D deferred one-line seeds). ASCII deferred to Pass 4. Emission `[GAP]`. Tokenizer `[GAP]`.  
**Source:** Tong Xiao & Jingbo Zhu, *Foundations of Large Language Models* · arXiv:2501.09223v2 [cs.CL] · 15/17 Jun 2025  
**License:** CC BY-NC 4.0 — cite; do not fold body into Apache Core  
**PDF:** `refs/local/xiao-zhu-foundations-llm.pdf` → attachment `0f5d145d298a90bbe1648b365d97b8833e86be3c31bedd7db900a932ba50bc1a` (**277** pp., text layer; **never git-add**)  
**SHA-256:** `0f5d145d298a90bbe1648b365d97b8833e86be3c31bedd7db900a932ba50bc1a`  
**Offset:** printed ≈ PDF − 7 at cited loci (Pass 1–2)  
**Sighting this pass:** `pdftotext -f N -l N -layout` on §1.1 / §1.2 / §1.3 / §2.1.1 / §2.3.3 / §3.3.2 / §4.2 / §4.3–4.4 / §5.1; Pass 1–2 pins reused where valid  
**Companion:** [`xiao-zhu-foundations-clipboard.md`](xiao-zhu-foundations-clipboard.md) · map [`reason-model-map.md`](../reason-model-map.md) §3 (X1–X7) · [`clipboard-five-stakes.md`](clipboard-five-stakes.md) PAGE 3/5 · plan [`xiao-zhu-pass-3-plan.md`](xiao-zhu-pass-3-plan.md)

Law: arrival order kin only · intern / MASK / embed / next-token ≠ Core · soft/RLHF steward-only · decode/KV ≠ POINTER · Hands win · Φ `[GAP]` sealed · no Lace tokenizer invent.  
This file is **Shadow / Layer III documentation of the book**, not Lace `src/`, not `systems-manifest-ascii.md`, not Φ. Do not invent POINTER when / arity / adjacency. This book remains the **anti-model of ingest**.

---

## Stamp legend

| Stamp | Meaning |
|---|---|
| **KEEP-read** | May sit beside Lace as a reading / pipeline image; does not write Core |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, or emission rule |
| **FORBID-as-Lace-identity** | Must not treat vocab id / shared token as Lace WORD / Star identity |
| **FORBID-as-store** | Must not treat embed / position / KV tables as a second store beside Graphic D |
| **FORBID-as-Lace-history** | Must not treat weight updates / preference training as Lace occurrence history |
| **FORBID-as-POINTER-when** | Must not use decode / prefilling / KV as POINTER when/arity/adjacency |
| **FORBID next-token/decode as Core continue** | Must not treat \(\arg\max Pr\) / causal LM as Piece 2 continue |
| **FORBID corpus→DOCUMENT fuel** | Must not treat dataset \(D\) as punch-card DOCUMENT append |
| **SILENT-for-Lace-append** | Book procedure is silent for Lace append; do not smuggle as scheduler |
| **FORBID as Core rows** | Soft prompts / SFT / RLHF adaptation params must not become Core row kinds |

---

## Wave A — book constructive spine (blocking)

### M-A1 — Self-supervised pre-training / foundation-model adaptation pipeline

| Field | Content |
|---|---|
| Kind | pretrain-pipeline / foundation-adaptation |
| Book locus | §1 Pref. + **§1.1** Pre-training NLP Models · PDF **pp.8–13** (printed ~1–6); Eq **(1.1)** PDF **p.9** |
| Sighting method | `pdftotext -f 8 -l 13 -layout` (this pass); Pass 1 PAGE X / FM-X9 |
| Eye-quote | “we separate common components from many neural network-based systems, and then train them on huge amounts of unlabeled data using self-supervision. These pre-trained models serve as foundation models that can be easily adapted to different tasks via fine-tuning or prompting.” / “A third approach to pre-training is self-supervised learning… constructing its own training tasks directly from unlabeled data” |
| Inputs | Unlabeled (or lightly labeled) corpora; architecture \(g_\theta\); choice of unsupervised / supervised / self-supervised pre-train recipe |
| Outputs | Pre-trained parameters \(\hat\theta\); foundation model \(g_{\hat\theta}\) adaptable by fine-tuning or prompting |
| Invariants | Pre-training optimizes \(\theta\) without assuming one downstream task; adaptation (fine-tune / prompt) is a later stage; corpus \(D\) fuels weight updates, not Lace DOCUMENT append |
| Algorithm | See below |
| Complexity / termination | Scale with corpus size and model size; halt when pre-train objective on \(D\) is optimized (or schedule ends) and adaptation path chosen |
| Worked miniature | Eq (1.1) \(o = g_\theta(x_0,\ldots,x_m)\); Ch.1 pipeline into BERT (§1.3) / decoder LM (§1.2.1) |
| Lace stamp | **KEEP-read** as holder pipeline narrative; **FORBID-as-Core-write** / **FORBID corpus→DOCUMENT fuel** (FM-X9) |
| Hands cite | Graphic D1 (one strand); Piece 10 DOCUMENT unset; PAGE X |
| Map cite | **X** (cross) / FM-X9 |
| False friend | FM-X9 — corpus / dataset \(D\) ⇒ DOCUMENT append / punch-card Lace fuel |
| Open gaps | Exact multi-stage schedules beyond book narrative — book continues; Lace Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** Choose architecture \(g_\theta\) (encoder / decoder / encoder-decoder family as in Ch.1).  
2. **State.** Uninitialized or partially initialized \(\theta\); unlabeled data available.  
3. **Steps.**  
   1. Separate shared sequence-model components intended as a foundation.  
   2. Construct a self-supervised (or unsupervised / supervised) pre-training task from data (e.g. predict masked / next tokens).  
   3. Optimize \(\theta\) on that task → \(\hat\theta\) (foundation model).  
   4. Adapt via fine-tuning on labeled data **or** prompting / instruction / alignment (later chapters) — still holder adaptation.  
   5. Do **not** treat corpus rows as DOCUMENT appends to Graphic D.  
4. **Choice points.** Unsupervised vs supervised vs self-supervised pre-train (§1.1.1); fine-tune vs prompt for downstream.  
5. **Halt.** Foundation \(\hat\theta\) ready for adaptation path.  
6. **Output certificate.** Pre-train → adapt pipeline (Shadow reading only).

```text
corpus D + self-sup task → optimize θ → foundation g_θ̂
                          → fine-tune / prompt adapt
# KEEP-read pipeline; FORBID D as DOCUMENT fuel
```

---

### M-A2 — Tokenization → shared-vocabulary intern

| Field | Content |
|---|---|
| Kind | tokenization / vocabulary-intern |
| Book locus | §1 / §1.3 multi-lingual note · “shared vocabulary” · PDF **p.36** (printed ~29); §2.1 word↔token · PDF **pp.44–45** (printed ~37–38); footnote on tokenization PDF **p.9** |
| Sighting method | `pdftotext -f 36 -l 36` and `-f 44 -l 45` (this pass); Pass 1 PAGE B / FM-X2 / FM-X8 |
| Eye-quote | “every token is just an entry of the shared vocabulary” / “we will use terms word and token interchangeably… basic units used in language modeling” / footnote: “tokens are basic units of text that are separated through tokenization” |
| Inputs | Raw text string; tokenizer procedure (book assumes units already obtained); vocabulary \(V\) |
| Outputs | Sequence of vocab entries \(x_i \in V\); shared multi-lingual ids when applicable |
| Invariants | Token = vocabulary entry / id; shared \(V\) collapses surface forms across languages into table rows; book does **not** deliver a Lace tokenizer |
| Algorithm | See below |
| Complexity / termination | Linear in text length once tokenizer fixed; halt when each unit is an entry of \(V\) |
| Worked miniature | Multi-lingual packing: Chinese+English tokens as entries of one shared \(V\) (PDF 36) |
| Lace stamp | **KEEP-read** as book primitive; **FORBID-as-Lace-identity** (X2); no Lace tokenizer invent (FM-X8) |
| Hands cite | Piece 4 / Piece 7 / Graphic B (two wraps ≠ one node); PAGE B / F |
| Map cite | **X2** |
| False friend | FM-X2 — shared vocab id ⇒ same Lace occurrence / star; FM-X8 — tokenizer discussion ⇒ Lace tokenizer delivered |
| Open gaps | Lace tokenizer remains `[GAP]` (PAGE F opens; opening ≠ filling Φ); exact BPE/WordPiece recipe details beyond book — not filled here |

**Algorithm**

1. **Preconditions.** Text to be modeled; a vocabulary \(V\) (possibly multi-lingual / shared).  
2. **State.** Raw character/byte string.  
3. **Steps.**  
   1. Separate text into tokens via tokenization (book assumes this step; does not specify a Lace algorithm).  
   2. Map each token to an entry / id in shared vocabulary \(V\).  
   3. Form ordered sequence \(\{x_0,\ldots,x_m\}\) with \(x_i \in V\) (often with start symbol).  
   4. Refuse identifying vocab id with Lace WORD / Star / occurrence identity.  
4. **Choice points.** Vocabulary size / sharing across languages — book hyperparameters; not Lace identity.  
5. **Halt.** Interned token sequence ready for embedding / LM.  
6. **Output certificate.** Vocab-interned sequence (Shadow); **not** Lace identity.

```text
text --tokenize--> units --intern--> x_i ∈ V
# KEEP-read book primitive; FORBID-as-Lace-identity; tokenizer [GAP]
```

**Steward refusal:** shoe in hands — refuse “intern vocab id as Lace WORD” using this card + P3-M (X2 tooth).

---

### M-A3 — Token + position (+ segment) embedding construction

| Field | Content |
|---|---|
| Kind | embedding / input-representation |
| Book locus | §1.3.1.2 Model Setup · \(e = x + e_{pos} + e_{seg}\) · PDF **pp.32–33** (printed ~25–26); §2.1.1 decoder \(e_i\) · PDF **p.45** (printed ~38) |
| Sighting method | `pdftotext -f 32 -l 33` and `-f 44 -l 46` (this pass); Pass 1 PAGE D / FM-X5 |
| Eye-quote | “The input is a sequence of embeddings, each being the sum of the token embedding, the positional embedding, and the segment embedding.” / \(e = x + e_{pos} + e_{seg}\) (1.20) / “\(e_i\) is the sum of the token embedding of \(x_i\) and the positional embedding of \(i\)” |
| Inputs | Token ids \(x_i \in V\); position index \(i\); optional segment id (SentA / SentB) |
| Outputs | Real vectors \(e_i \in \mathbb{R}^{d_e}\) (token + pos [+ seg] sum); sequence \(\{e_0,\ldots,e_{m}\}\) fed to Transformer |
| Invariants | Embedding tables are learned parameters — a second numeric store beside the strand; segment emb marks sentence membership in BERT packing |
| Algorithm | See below |
| Complexity / termination | \(O(m \cdot d_e)\) lookups/adds; halt when each position has \(e_i\) |
| Worked miniature | BERT table under eq (1.20): Token / \(e_{pos}\) PE(\(i\)) / \(e_{seg}\) \(e_A\)/\(e_B\) rows (PDF 32–33) |
| Lace stamp | **KEEP-read** as book vectors; **FORBID-as-store** / second world (X5 · FM-X5) |
| Hands cite | Graphic D (one store; no separate database); Piece 14; PAGE D |
| Map cite | **X5** |
| False friend | FM-X5 — token+pos(+seg) embed table ⇒ Core store / second world |
| Open gaps | Rotary / relative position variants named elsewhere in book — still FORBID-as-store; Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** Interned tokens \(x_i\) (M-A2); embedding dimension \(d_e\).  
2. **State.** Embedding tables for token / position / (optional) segment.  
3. **Steps.**  
   1. Look up token embedding \(x\) (vector for \(x_i\)).  
   2. Look up positional embedding \(e_{pos}\) for index \(i\).  
   3. If encoder packing uses segments: look up \(e_{seg}\) (SentA/SentB).  
   4. Form \(e = x + e_{pos} + e_{seg}\) (BERT) or \(e_i =\) token emb + positional emb (decoder §2.1.1).  
   5. Refuse installing these tables as Graphic D / Core store.  
4. **Choice points.** Whether segment embeddings are used (BERT yes; many decoder-only LMs no).  
5. **Halt.** Embedding sequence ready for Transformer stack.  
6. **Output certificate.** Input embedding sequence (Shadow vectors only).

```text
e := x + e_pos [+ e_seg]     # eq (1.20) / §2.1.1
# KEEP-read; FORBID-as-store (X5)
```

---

### M-A4 — Decoder-only causal next-token training (prefix LM loss)

| Field | Content |
|---|---|
| Kind | objective / causal-LM-training |
| Book locus | §1.2.1 Decoder-only Pre-training · loss **(1.5)–(1.7)** · PDF **pp.14–15** (printed ~7–8); §2.1 eq **(2.3)** · PDF **p.45** (printed ~38) |
| Sighting method | `pdftotext -f 14 -l 15` and `-f 44 -l 46` (this pass); Pass 1 PAGE E / FM-X3 |
| Eye-quote | “Such a model predicts the distribution of tokens at a position given its preceding tokens” / \(\hat\theta = \arg\max_\theta \sum_{x\in D}\sum_i \log Pr_\theta(x_{i+1}\mid x_0,\ldots,x_i)\) (1.7) / \(\hat x_i = \arg\max_{x_i\in V} Pr(x_i\mid x_0,\ldots,x_{i-1})\) (2.3) |
| Inputs | Token sequences in dataset \(D\); decoder \(\mathrm{Decoder}_\theta\); prefix \(\{x_0,\ldots,x_i\}\) |
| Outputs | Optimized \(\hat\theta\); next-token distributions \(Pr_\theta(\cdot\mid\mathrm{prefix})\); optional greedy \(\hat x_i\) |
| Invariants | Loss sums log-cross-entropy over positions; equivalent to MLE of left-to-right factorization; output type is a distribution / vocab pick — **not** a Lace section |
| Algorithm | See below |
| Complexity / termination | Per-sequence \(O(m)\) position losses × forward/backward; halt when objective on \(D\) minimized (or schedule ends) |
| Worked miniature | Table 2.1 left-to-right generation of \(b\,c\,d\) given prefix \(\langle s\rangle\,a\) (PDF 45) |
| Lace stamp | **KEEP-read** as training objective; **FORBID next-token as Core continue** (X3 · FM-X3); **SILENT-for-Lace-append** |
| Hands cite | Piece 2 (continue ≠ \(\arg\max Pr\)); Graphic B12; PAGE E / A |
| Map cite | **X3** |
| False friend | FM-X3 — next-token / argmax ⇒ Core continue / ingest operator |
| Open gaps | Sampling / temperature schedules at train time — book inference Ch.5; Lace Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** Decoder-only Transformer; tokenized sequences in \(D\).  
2. **State.** Parameters \(\theta\); current prefix.  
3. **Steps.**  
   1. At each position \(i\), form \(Pr_\theta(\cdot\mid x_0,\ldots,x_i)\) from the decoder.  
   2. Compare to gold one-hot of \(x_{i+1}\) via log-cross-entropy; sum over \(i=0\ldots m-1\) → \(\mathrm{Loss}_\theta(x)\) (1.5).  
   3. Minimize \(\sum_{x\in D}\mathrm{Loss}_\theta(x)\) equivalently maximize \(\sum\log Pr_\theta(x_{i+1}\mid\mathrm{prefix})\) (1.6)–(1.7).  
   4. Optional apply-time pick: \(\hat x_i = \arg\max_{x_i\in V} Pr(x_i\mid\mathrm{prefix})\) (2.3) — still not Core continue.  
   5. Do **not** treat next-token as Lace append / Piece 2.  
4. **Choice points.** Teacher-forcing vs free-run at train — book uses gold prefixes for loss.  
5. **Halt.** \(\hat\theta\) obtained (or early stop).  
6. **Output certificate.** Causal LM parameters / distributions (Shadow).

```text
Loss = Σ_i LogCE(pθ_{i+1}, onehot(x_{i+1}))
θ̂ = argmax_θ Σ_{x∈D} Σ_i log Pr_θ(x_{i+1}|x_≤i)
# KEEP-read; FORBID next-token as Core continue; SILENT for Lace append
```

---

### M-A5 — Masked LM / BERT 80/10/10 corruption recipe

| Field | Content |
|---|---|
| Kind | corruption / masked-LM-objective |
| Book locus | §1.2.2.1 / **§1.3** Example: BERT · PDF **pp.16–17**, **30–31** (printed ~9–10, ~23–24); eq **(1.18)**; Pass 2 **D7** |
| Sighting method | `pdftotext -f 30 -l 31 -layout` (this pass); Pass 2 D7 pin reuse |
| Eye-quote | “15% of the tokens in each sequence are selected. Then the sequence is modified in three ways” / “80% … [MASK] … 10% … random token … 10% … unchanged” / \(\mathrm{Loss}_{MLM}=-\sum_{i\in A(x)}\log Pr_i(x_i\mid\bar x)\) (1.18) |
| Inputs | Clean token sequence \(x\); selection rate (standard 15%); vocabulary for random replace |
| Outputs | Corrupted sequence \(\bar x\); selected set \(A(x)\); MLM loss; (sibling) NSP IsNext/NotNext labels |
| Invariants | Corruption is a **paper training recipe** that damages the sequence; MASK/replace/leave ≠ Lace cut; SILENT for Lace append |
| Algorithm | See below (matches Pass 2 D7; do not rewrite D7) |
| Complexity / termination | Linear in sequence length; halt when \(\mathrm{Loss}_{MLM}\) (and optional NSP) computed for the batch |
| Worked miniature | Pass 2 **D7** + Fig 1.5 running example (PDF 30–31): “It is raining” → “It is [MASK]” |
| Lace stamp | **KEEP-read** as paper corruption; **FORBID-as-Core-write** / Lace cut (X4 · FM-X4); **SILENT-for-Lace-append** |
| Hands cite | Rule Zero / Piece 1 continuous strand; Piece 3; PAGE C |
| Map cite | **X4** |
| False friend | FM-X4 — [MASK] / replace / delete ⇒ Lace cut or authorized rewrite |
| Open gaps | Exact 15% sampler; NSP construction details; BART Token Deletion (PDF 26) — book `[OPEN]` for Lace; do not invent Lace tokenizer |

**Algorithm**

1. **Preconditions.** Token sequence \(x\) (M-A2); BERT-style encoder setup.  
2. **State.** Clean \(x\); empty \(A(x)\).  
3. **Steps.**  
   1. Select positions \(A(x)\) — standard BERT: **15%** of tokens.  
   2. For each \(i\in A(x)\), apply one corruption: **80%** replace with `[MASK]`; **10%** random vocab token; **10%** leave unchanged.  
   3. Let \(\bar x\) be the modified sequence.  
   4. Train with \(\mathrm{Loss}_{MLM}=-\sum_{i\in A(x)}\log Pr_i(x_i\mid\bar x)\) (1.18).  
   5. Optional sibling: NSP IsNext/NotNext on packed pairs — still not a Lace write.  
   6. Cross-link Pass 2 **D7** (same recipe); do **not** rewrite D7.  
4. **Choice points.** Selection rate / corruption mix — book’s BERT defaults cited; other recipes exist.  
5. **Halt.** MLM (and optional NSP) loss ready for parameter update.  
6. **Output certificate.** Corrupted training example + loss (Shadow only).

```text
A(x) ← sample 15%;  corrupt 80/10/10 → x̄
Loss_MLM = -Σ_{i∈A(x)} log Pr_i(x_i|x̄)
# KEEP-read; FORBID-as-Core-write (MASK ≠ Lace cut); see D7
```

**Steward refusal:** shoe in hands — refuse “MASK the strand” using this card + D7 + P3-M (X4 tooth).

---

### M-A6 — Soft-prompt / prompt-tuning adaptation

| Field | Content |
|---|---|
| Kind | adaptation / parameter-efficient-prompting |
| Book locus | **§3.3.2** Soft Prompts · PDF **pp.149–155** (printed ~142–148); prompt tuning / prefix fine-tuning §3.3.2.2 |
| Sighting method | `pdftotext -f 149 -l 155 -layout` (this pass); Pass 1 PAGE F / FM-X6 |
| Eye-quote | “soft prompts as implicit, adaptable prompting patterns embedded within LLMs” / “They are instead simply hidden states in LLMs and can be learned as standard parameters” / “prompt tuning… modifies only the embedding layer… soft prompt embeddings” |
| Inputs | Frozen (or mostly frozen) LLM; task data; hard prompt optional; trainable soft vectors / prefixes |
| Outputs | Learned soft-prompt embeddings or per-layer prefixes; adapted behavior without (full) weight rewrite of Core rows |
| Invariants | Soft prompts are steward adaptation parameters — continuous vectors, not natural-language Core rows; PEFT updates a small parameter subset |
| Algorithm | See below |
| Complexity / termination | Train only soft params (≪ full fine-tune); halt when task objective on soft params converges |
| Worked miniature | Fig 3.3 hard instruction → intermediate \(h_1\ldots h_5\) as soft-prompt view; Lester-style prompt tuning at embedding layer (PDF ~154–155) |
| Lace stamp | **KEEP-read** steward adaptation; **FORBID as Core rows** (X6 · FM-X6); **SILENT-for-Lace-append** |
| Hands cite | Steward [H]; Graphic D (no soft-prompt Core rows); PAGE F |
| Map cite | **X6** |
| False friend | FM-X6 — soft prompt / RLHF / alignment ⇒ Core write |
| Open gaps | Full PEFT zoo (LoRA etc.) beyond soft/prefix — book continues; not Core |

**Algorithm**

1. **Preconditions.** Pre-trained LLM; task with supervision or distillation signal.  
2. **State.** Frozen base weights (typical); uninitialized soft vectors.  
3. **Steps.**  
   1. Choose form: (a) interpret hard-prompt hidden states as soft prompts, or (b) introduce learnable soft embeddings / prefixes.  
   2. **Prefix fine-tuning:** append trainable prefix vectors at each Transformer layer; train only prefixes [Li & Liang].  
   3. **Prompt tuning:** insert trainable soft-prompt embeddings at the embedding layer only [Lester et al.]; condition \(e_0\ldots e_m\).  
   4. Optimize soft params on task data; keep refusal: these are not Graphic D / Core rows.  
4. **Choice points.** Prefix-per-layer vs embedding-only prompt tuning; soft+hard combinations.  
5. **Halt.** Soft prompts trained for the task.  
6. **Output certificate.** Soft-prompt parameters (steward adaptation only).

```text
freeze LLM; train soft_emb / prefixes on task
# KEEP-read steward; FORBID as Core rows (X6)
```

---

### M-A7 — Instruction fine-tuning (SFT)

| Field | Content |
|---|---|
| Kind | adaptation / supervised-instruction-tuning |
| Book locus | **§4.2** Instruction Alignment · **§4.2.1** Supervised Fine-tuning · PDF **pp.164–170** (printed ~157–163); eqs **(4.1)–(4.2)** |
| Sighting method | `pdftotext -f 164 -l 170 -layout` (this pass); Pass 1 PAGE F / X6 |
| Eye-quote | “The goal of instruction alignment (or instruction fine-tuning) is to tune the LLM to accurately respond to user instructions” / “maximize the probability of generating the rest of the sequence given its prefix” / \(\tilde\theta=\arg\max \sum_{(x,y)\in D}\log Pr(y\mid x)\) (4.1) |
| Inputs | SFT dataset \(S\) of (instruction+user input \(x\), gold output \(y\)); pre-trained \(\hat\theta\) |
| Outputs | Fine-tuned parameters \(\tilde\theta\); instruction-following conditional generator \(Pr_{\tilde\theta}(y\mid x)\) |
| Invariants | Objective is **conditional** on prefix \(x\) (not full unconditional LM on \(xy\) alone as the goal); starts from pre-trained weights; steward adaptation |
| Algorithm | See below |
| Complexity / termination | Same order as causal LM fine-tune on \(|S|\); halt when SFT objective minimized |
| Worked miniature | Table of SFT pairs: summarize / extract figures / spam classify / tech support (PDF 164–165) |
| Lace stamp | **KEEP-read** steward adaptation; **FORBID-as-Core-write** / **SILENT-for-Lace-append** (X6) |
| Hands cite | Steward [H]; Piece 2 wrong output type if imported; PAGE F |
| Map cite | **X6** |
| False friend | FM-X6 — alignment ⇒ Core write; also FM-X3 if SFT confused with Core continue |
| Open gaps | Instruction-data generation pipelines (§4.2 continues) — steward-side; Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** Pre-trained LLM \(\hat\theta\); annotated instruction–response pairs.  
2. **State.** \(\theta\) initialized from \(\hat\theta\).  
3. **Steps.**  
   1. Form input \(x =\) instruction + user input; gold response \(y=y_1\ldots y_n\).  
   2. Maximize \(\log Pr_\theta(y\mid x)=\sum_{i=1}^n\log Pr_\theta(y_i\mid x,y_{<i})\) (4.2).  
   3. Optimize \(\tilde\theta=\arg\max\sum_{(x,y)}\log Pr(y\mid x)\) starting from pre-trained params (4.1).  
   4. Refuse writing SFT pairs or \(\tilde\theta\) updates as Core / Graphic D rows.  
4. **Choice points.** Multi-task mixture in \(S\); how much of \(\theta\) is unfrozen — book’s full SFT vs PEFT (M-A6).  
5. **Halt.** Instruction-following \(\tilde\theta\).  
6. **Output certificate.** SFT-adapted LLM (Shadow steward).

```text
θ ← θ̂;  maximize Σ log Pr_θ(y_i | x, y_<i) over SFT pairs
# KEEP-read steward; FORBID-as-Core-write; SILENT for Lace append
```

---

### M-A8 — RLHF / human-preference alignment (reward + policy / DPO family)

| Field | Content |
|---|---|
| Kind | alignment / preference-optimization |
| Book locus | **§4.3** Human Preference Alignment: RLHF · PDF **~179–192** (printed ~172–185); **§4.4** / **DPO** · TOC printed ~193 · PDF **~200** |
| Sighting method | `pdftotext -f 179 -l 200 -layout` (this pass); Pass 1 PAGE F / FM-X6 |
| Eye-quote | “LLMs can learn from comparisons of model outputs using reward models” / Fig 4.6 SFT vs RLHF / Fig 4.9 reward model (Bradley–Terry) then PPO policy+value / “direct preference optimization (DPO), which simplifies the training framework by eliminating the need to explicitly [train a separate reward model]” |
| Inputs | Preference triples \((x,y_a,y_b)\); SFT/reference policy; (RLHF) reward model class; (DPO) preference pairs directly |
| Outputs | Reward model \(r_\phi\) (RLHF path); aligned policy \(Pr_\theta\); optional value \(V_\omega\); or DPO-optimized policy without separate \(r_\phi\) |
| Invariants | Preference alignment updates steward policy weights — not Graphic D; reward is feedback on outputs, not Lace history; DPO is same family (preference → policy) with collapsed reward stage |
| Algorithm | See below |
| Complexity / termination | Iterative: collect prefs → fit reward (RLHF) → PPO updates; or single-stage DPO on prefs; halt when alignment objective / KL-regularized policy converges |
| Worked miniature | Fig 4.9 RLHF loop; Fig 4.10 PPO vs DPO comparison (PDF ~200) |
| Lace stamp | **KEEP-read** steward alignment; **FORBID as Core write** (X6 · FM-X6); **FORBID-as-Lace-history**; not Graphic D |
| Hands cite | Steward [H]; Graphic D1; PAGE F / X |
| Map cite | **X6** |
| False friend | FM-X6 — soft prompt / RLHF / alignment ⇒ Core write |
| Open gaps | Full PPO hyperparameter / reward-shaping detail — book continues; not Lace emission |

**Algorithm**

1. **Preconditions.** Instruction-capable policy (often post-SFT); human (or proxy) preference judgments.  
2. **State.** Policy \(\theta\); optional reward \(\phi\); optional value \(\omega\); reference policy \(\theta_{\mathrm{old}}\).  
3. **Steps (RLHF path).**  
   1. Sample pairs of outputs for prompts; collect human preference data \(D_r=\{(x,y_a,y_b)\}\).  
   2. Train reward model \(r_\phi\) (e.g. Bradley–Terry pairwise ranking loss).  
   3. Treat generation as RL: state \((x,y_{<t})\), action \(y_t\), reward from \(r_\phi\) (often sparse at EOS).  
   4. Update policy with PPO-style clipped objective + KL penalty vs reference; update value by MSE to return.  
4. **Steps (DPO family).**  
   1. Skip explicit reward/value loop.  
   2. Optimize policy directly on preference pairs (DPO loss) — offline preference alignment.  
5. Refuse importing reward/policy updates as Core writes or Lace history.  
6. **Halt.** Aligned policy parameters.  
7. **Output certificate.** Preference-aligned LLM (Shadow steward only).

```text
prefs → (RLHF) r_φ → PPO(policy, value | r_φ, ref)
prefs → (DPO)  optimize policy directly on preferences
# KEEP-read steward; FORBID as Core write (X6)
```

---

### M-A9 — Prefilling / decoding / KV-cache inference (two-phase + \(\arg\max Pr\))

| Field | Content |
|---|---|
| Kind | inference / prefilling-decoding / KV-cache |
| Book locus | **Ch.5** Inference · eq **(5.1)** PDF **p.210** (printed ~203); **§5.1** Prefilling and Decoding · PDF **pp.211–215** (printed ~204–208); **§2.3.3** Cache and Memory · PDF **p.77** (printed ~70) |
| Sighting method | `pdftotext -f 210 -l 215` and `-f 75 -l 78` (this pass); Pass 1 PAGE E/F / FM-X7 |
| Eye-quote | \(\hat y=\arg\max_y Pr(y\mid x)\) (5.1) / “Prefilling. The prefilling phase computes the KV cache for the input sequence \(x\)” / “KV cache where the representations (i.e., keys and values) of all previously-generated [tokens are stored]” / Append updates (5.8)–(5.9) |
| Inputs | Prompt/input sequence \(x\); trained LLM; decoding policy (greedy / beam / sample) |
| Outputs | Output sequence \(\hat y\); evolving KV cache \((K,V)\); tokenwise \(Pr(y_i\mid x,y_{<i})\) |
| Invariants | Two phases: prefilling (fill cache on \(x\)) then decoding (extend \(y\)); KV is inference memory — **not** POINTER when-rule; \(\arg\max Pr\) projection ≠ Core continue; SILENT for Lace append; Φ stays `[GAP]` |
| Algorithm | See below |
| Complexity / termination | Prefill \(O(|x|)\) cache fill; decode \(O(|y|)\) steps with growing cache; halt at EOS / length limit / search complete |
| Worked miniature | §5.1.2 two-phase framework; Fig 5.2 KV append at position \(i'\) |
| Lace stamp | **KEEP-read** as projection/generation; **FORBID as Core continue / POINTER when** (X7 · FM-X7); **FORBID-as-store** for KV as second world; **SILENT-for-Lace-append**; Φ stays `[GAP]` |
| Hands cite | Piece 2 / Piece 13 / Graphic D4 (projection ≠ store); PAGE E / F |
| Map cite | **X7** |
| False friend | FM-X7 — decoding / prefilling / KV-cache ⇒ POINTER when-rule or Φ fill |
| Open gaps | Beam/sample variants, inference-time scaling (§5.3) — deferred Wave B seed; Lace tokenizer / Φ still `[GAP]` |

**Algorithm**

1. **Preconditions.** Trained decoder-only (or compatible) LLM; input \(x=x_0\ldots x_m\).  
2. **State.** Empty or reset KV cache \((K,V)\).  
3. **Steps — Prefilling.**  
   1. For each position of \(x\), embed and run Transformer layers.  
   2. At each layer, form \((k,v)\) and **Append** into KV cache (5.8)–(5.9).  
   3. Do not emit output tokens yet (unless scoring \(Pr(x)\)).  
4. **Steps — Decoding.**  
   1. At step \(i\), compute \(Pr(y_i\mid x,y_{<i})\) attending query to cached \((K,V)\).  
   2. Select next token (greedy \(\arg\max\), beam, or sample — book’s search menu).  
   3. Append new \((k,v)\) for the chosen token; repeat until halt.  
   4. Global form: seek \(\hat y=\arg\max_y Pr(y\mid x)\) (5.1) — computationally via the two-phase process.  
5. Refuse treating decode/KV as Core continue or POINTER when/arity/adjacency.  
6. **Halt.** Completed \(\hat y\) (or search hypothesis set).  
7. **Output certificate.** Generated string + transient KV (Shadow projection only).

```text
prefill(x) → KV cache
decode: y_i ~/argmax Pr(·|x,y_<i); Append(K,V)
ŷ = argmax_y Pr(y|x)     # KEEP-read; FORBID Core continue / POINTER when
```

---

## Waves B–D (deferred — one-line seeds only)

| Wave | Seed (not blocking) |
|---|---|
| B | Distributed training / scaling laws (§2.2) |
| B | Long-sequence architectures beyond KV (§2.3) |
| C | CoT / RAG / tool-use prompting (§3.2) |
| C | Inference-time scaling (§5.3) |
| D | Automatic preference-data generation (§4.x continuations) |

Pass 3 success = Wave A cards complete + P3-M mesh + receipt. ASCII deferred to Pass 4.

---

## Steward test

Shoe in hands, or no.  
These mechanisms are the book’s LLM pipeline — Shadow reading.  
Pre-training and corpora mutate weights — not DOCUMENT append.  
A shared vocab id is not two wraps of the same word.  
Embeds are a second store — not Graphic D.  
Next-token and MASK are training/corruption — not putting cord through a hole or cutting the lace.  
Soft prompts / SFT / RLHF are steward adaptation — not Core rows.  
Prefilling, decoding, and KV-cache project language — they do not emit POINTER.  
Opening a tokenizer gap is not filling Φ.  
Φ stays `[GAP]`.
