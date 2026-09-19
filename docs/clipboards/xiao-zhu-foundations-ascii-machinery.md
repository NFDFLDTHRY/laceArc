# Xiao & Zhu — ASCII source-machinery model (Shadow)

**Status:** Pass 4 EXECUTED (SOURCE MACHINERY overview + panels P-A1…P-A9; P4-X 9/9 PASS). Emission `[GAP]`. Tokenizer `[GAP]`.  
**Source:** Tong Xiao & Jingbo Zhu, *Foundations of Large Language Models* · arXiv:2501.09223v2 [cs.CL] · 15/17 Jun 2025  
**License:** CC BY-NC 4.0 — cite; do not fold body into Apache Core  
**PDF:** `refs/local/xiao-zhu-foundations-llm.pdf` → attachment `0f5d145d298a90bbe1648b365d97b8833e86be3c31bedd7db900a932ba50bc1a` (**277** pp., text layer; **never git-add**)  
**SHA-256:** `0f5d145d298a90bbe1648b365d97b8833e86be3c31bedd7db900a932ba50bc1a`  
**Algorithms:** [`xiao-zhu-foundations-mechanisms.md`](xiao-zhu-foundations-mechanisms.md) (M-A1…M-A9; algorithms unchanged this pass).  
**Admission:** [`xiao-zhu-foundations-clipboard.md`](xiao-zhu-foundations-clipboard.md).  
**Map / stakes:** [`reason-model-map.md`](../reason-model-map.md) §3 (X1–X7) · [`clipboard-five-stakes.md`](clipboard-five-stakes.md) PAGE 3/5.  
**Not this file:** Lace Core ASCII lives in [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) — **do not conflate**.

**Contract (read first)**

1. This models **Xiao–Zhu book procedures** (LLM pipeline), not Lace Core.  
2. Companion to mechanisms cards + book clipboard.  
3. Lace Core ASCII = `docs/systems-manifest-ascii.md` — **do not conflate**.  
4. Emission Φ = `[GAP]`. Tokenizer = `[GAP]`. No panel closes either.  
5. Stamps match Wave A cards (intern≠identity · MASK≠cut · embed≠store · next-token/decode≠Core continue · soft/SFT/RLHF≠Core rows · KV≠when-rule).  
6. **Book-side glyphs only inside fences**; never the word `POINTER` inside diagram fences.  
7. Shadow / Layer III only. Anti-model of ingest.  
8. Panels implement M-A* steps by citation; algorithm bodies live in mechanisms.md.

Law: arrival order kin only · intern / MASK / embed / next-token ≠ Core · soft/RLHF steward-only · decode/KV ≠ when-rule · Hands win · Φ `[GAP]` sealed · no Lace tokenizer invent.

---

## Stamp legend

| Stamp | Meaning |
|---|---|
| **KEEP-read** | May sit beside Lace as a reading / pipeline image; does not write Core |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, or emission rule |
| **FORBID-as-Lace-identity** | Must not treat vocab id / shared token as Lace WORD / Star identity |
| **FORBID-as-store** | Must not treat embed / position / KV tables as a second store beside Graphic D |
| **FORBID-as-Lace-history** | Must not treat weight updates / preference training as Lace occurrence history |
| **FORBID-as-POINTER-when** | Must not use decode / prefilling / KV as when/arity/adjacency (stamp under fence only) |
| **FORBID next-token/decode as Core continue** | Must not treat \(\arg\max Pr\) / causal LM as Piece 2 continue |
| **FORBID corpus→DOCUMENT fuel** | Must not treat dataset \(D\) as punch-card DOCUMENT append |
| **SILENT-for-Lace-append** | Book procedure is silent for Lace append; do not smuggle as scheduler |
| **FORBID as Core rows** | Soft prompts / SFT / RLHF adaptation params must not become Core row kinds |

(Reuse of Pass 3 legend from [`xiao-zhu-foundations-mechanisms.md`](xiao-zhu-foundations-mechanisms.md).)

---

## SOURCE MACHINERY overview (book side only)

Singular canonical overview for this pass. Book constructive spine only. Lace Core, emission, and Lace tokenizer are **FORBIDDEN exits** off this board — they are not nodes of the book machinery.

```
  [corpus D + self-sup task] ----- M-A1 / P-A1
           |                       FORBID D as DOCUMENT
           v
  [tokenize -> shared vocab V] --- M-A2 / P-A2
           |                       FORBID-as-Lace-identity
           |                       tokenizer [GAP]
           v
  [e = x + e_pos (+ e_seg)] ------ M-A3 / P-A3
           |                       FORBID-as-store
           |
           +--> [causal next-token] -- M-A4 / P-A4
           |     FORBID as Core continue
           |
           +--> [BERT MASK 80/10/10] -- M-A5 / P-A5
           |     FORBID MASK as Lace cut
           v
  [soft / SFT / RLHF|DPO] -------- M-A6..8 / P-A6..8
           |                       FORBID Core rows/write/history
           v
  [prefill -> decode / KV] ------- M-A9 / P-A9
           |                       FORBID Core continue / when-rule
           |
           x --> Lace Core / Graphic D / emission / tokenizer
                 FORBIDDEN off this board

  Lace Core OFF this board --> docs/systems-manifest-ascii.md
  emission = [GAP] · tokenizer = [GAP]
```

**P4-X:** Rigor matrix (all PASS) lives below in this file. This file holds **exactly one** canonical SOURCE MACHINERY overview (above).

---

## Wave A panels

### P-A1 — Self-supervised pre-training / foundation-model adaptation pipeline

| Field | Content |
|---|---|
| Mechanism cite | M-A1 · §1 Pref. + **§1.1** · PDF **pp.8–13** (printed ~1–6); Eq **(1.1)** PDF **p.9** |
| Sighting | Pass 3 M-A1 pin reuse; Pass 1 PAGE X / FM-X9 |
| Lace stamp | **KEEP-read** pipeline; **FORBID-as-Core-write**; **FORBID corpus→DOCUMENT fuel** (FM-X9) |
| Map cite | **X** / FM-X9 |
| False friend | FM-X9 — corpus / dataset \(D\) ⇒ DOCUMENT append / punch-card Lace fuel |
| Implements | M-A1 steps 3.1–3.5: separate components → self-sup task → optimize θ → adapt → refuse D as DOCUMENT |

```
  unlabeled corpus D
        |
        |  separate shared sequence-model components
        v
  architecture g_theta
        |
        |  construct self-sup (or unsup / supervised) task
        |  e.g. predict masked / next tokens
        v
  optimize theta on D  ----->  theta_hat  (foundation)
        |
        +--> fine-tune on labeled data
        |
        +--> prompt / instruction / alignment
               (later chapters; still holder adapt)

  o = g_theta(x_0, ..., x_m)     # eq (1.1)
  # D fuels weight updates — NOT DOCUMENT append
```
stamp under fence: KEEP-read pipeline | **FORBID-as-Core-write** | **FORBID corpus→DOCUMENT fuel**

---

### P-A2 — Tokenization → shared-vocabulary intern

| Field | Content |
|---|---|
| Mechanism cite | M-A2 · shared vocabulary PDF **p.36**; §2.1 word↔token PDF **pp.44–45**; footnote PDF **p.9** |
| Sighting | Pass 3 M-A2 pin reuse; Pass 1 PAGE B / FM-X2 / FM-X8 |
| Lace stamp | **KEEP-read** book primitive; **FORBID-as-Lace-identity** (X2); no Lace tokenizer invent (FM-X8) |
| Map cite | **X2** |
| False friend | FM-X2 — shared vocab id ⇒ same Lace occurrence / star; FM-X8 — tokenizer discussion ⇒ Lace tokenizer delivered |
| Implements | M-A2 steps 3.1–3.4: tokenize → map to V → form sequence → refuse Lace identity |

```
  raw text string
        |
        |  tokenization (book assumes units; no Lace algo)
        v
  surface units
        |
        |  intern: map each unit to entry / id in V
        v
  x_0, x_1, ..., x_m    with  x_i in V
        |
        |  optional: shared multi-lingual V
        v
  ordered vocab-interned sequence
  (ready for embedding / LM)

  # every token = entry of shared vocabulary V
  # NOT Lace WORD / Star / occurrence identity
  # Lace tokenizer remains [GAP]  (off-fence)
```
stamp under fence: KEEP-read book primitive | **FORBID-as-Lace-identity** | tokenizer `[GAP]`

---

### P-A3 — Token + position (+ segment) embedding construction

| Field | Content |
|---|---|
| Mechanism cite | M-A3 · §1.3.1.2 \(e = x + e_{pos} + e_{seg}\) PDF **pp.32–33**; §2.1.1 \(e_i\) PDF **p.45** |
| Sighting | Pass 3 M-A3 pin reuse; Pass 1 PAGE D / FM-X5 |
| Lace stamp | **KEEP-read** book vectors; **FORBID-as-store** (X5 · FM-X5) |
| Map cite | **X5** |
| False friend | FM-X5 — token+pos(+seg) embed table ⇒ Core store / second world |
| Implements | M-A3 steps 3.1–3.5: token emb → pos emb → optional seg → sum e → refuse as Graphic D |

```
  x_i in V   (from P-A2)
        |
        +--> look up token emb     x
        |
        +--> look up pos emb       e_pos(i)
        |
        +--> (BERT) look up seg    e_seg (SentA/SentB)
        |
        v
  e = x + e_pos [+ e_seg]     # eq (1.20)
  e_i = token_emb(x_i) + pos_emb(i)   # decoder §2.1.1

  sequence {e_0, ..., e_m} --> Transformer stack

  # learned tables = numeric params beside the strand
  # NOT Graphic D rows / Core store
```
stamp under fence: KEEP-read book vectors | **FORBID-as-store**

---

### P-A4 — Decoder-only causal next-token training (prefix LM loss)

| Field | Content |
|---|---|
| Mechanism cite | M-A4 · §1.2.1 loss **(1.5)–(1.7)** PDF **pp.14–15**; §2.1 eq **(2.3)** PDF **p.45** |
| Sighting | Pass 3 M-A4 pin reuse; Pass 1 PAGE E / FM-X3 |
| Lace stamp | **KEEP-read** objective; **FORBID next-token as Core continue** (X3 · FM-X3); **SILENT-for-Lace-append** |
| Map cite | **X3** |
| False friend | FM-X3 — next-token / argmax ⇒ Core continue / ingest operator |
| Implements | M-A4 steps 3.1–3.5: form Pr → LogCE → maximize Σ log Pr → optional argmax → refuse Core continue |

```
  decoder-only Transformer; sequences in D
        |
        |  at each position i:
        |    Pr_theta(. | x_0..x_i)
        v
  Loss_theta(x) = sum_i LogCE(p_{i+1}, onehot(x_{i+1}))
        |
        |  minimize over D  <=>  maximize
        v
  theta_hat = argmax_theta
              sum_{x in D} sum_i log Pr_theta(x_{i+1} | x_<=i)
                                                    # (1.6)-(1.7)

  optional apply-time pick:
    xhat_i = argmax_{x_i in V} Pr(x_i | prefix)     # (2.3)

  # output type = distribution / vocab pick
  # NOT Lace section / Piece 2 continue
```
stamp under fence: KEEP-read objective | **FORBID next-token as Core continue** | SILENT-for-Lace-append

---

### P-A5 — Masked LM / BERT 80/10/10 corruption recipe

| Field | Content |
|---|---|
| Mechanism cite | M-A5 · §1.3 BERT PDF **pp.30–31**; eq **(1.18)**; Pass 2 **D7** |
| Sighting | Pass 3 M-A5 + Pass 2 D7 pin reuse; Pass 1 PAGE C / FM-X4 |
| Lace stamp | **KEEP-read** paper corruption; **FORBID-as-Core-write** (MASK ≠ Lace cut) (X4 · FM-X4); **SILENT-for-Lace-append** |
| Map cite | **X4** |
| False friend | FM-X4 — [MASK] / replace / delete ⇒ Lace cut or authorized rewrite |
| Implements | M-A5 steps 3.1–3.6: select 15% → corrupt 80/10/10 → Loss_MLM → optional NSP → link D7 → refuse Lace cut |

```
  clean token sequence x
        |
        |  select A(x) = 15% of positions
        v
  for each i in A(x):
      80% -> replace with [MASK]
      10% -> random vocab token
      10% -> leave unchanged
        |
        v
  corrupted sequence x_bar
        |
        v
  Loss_MLM = -sum_{i in A(x)} log Pr_i(x_i | x_bar)   # (1.18)

  optional sibling: NSP IsNext / NotNext on packed pairs

  # paper training recipe that damages the sequence
  # MASK / replace / leave  ≠  Lace cut
  # cross-link Pass 2 D7 (do not rewrite D7)
```
stamp under fence: KEEP-read paper corruption | **FORBID-as-Core-write** (MASK ≠ Lace cut) | SILENT | see D7

---

### P-A6 — Soft-prompt / prompt-tuning adaptation

| Field | Content |
|---|---|
| Mechanism cite | M-A6 · **§3.3.2** Soft Prompts PDF **pp.149–155** |
| Sighting | Pass 3 M-A6 pin reuse; Pass 1 PAGE F / FM-X6 |
| Lace stamp | **KEEP-read** steward; **FORBID as Core rows** (X6 · FM-X6); **SILENT-for-Lace-append** |
| Map cite | **X6** |
| False friend | FM-X6 — soft prompt / RLHF / alignment ⇒ Core write |
| Implements | M-A6 steps 3.1–3.4: choose form → prefix FT or prompt tuning → optimize soft params → refuse Core rows |

```
  pre-trained LLM (base weights typically frozen)
        |
        +--> (a) hard-prompt hidden states as soft view
        |
        +--> (b) learnable soft embeddings / prefixes
              |
              +-- prefix fine-tuning:
              |     trainable prefix at each Transformer layer
              |     train prefixes only  [Li & Liang]
              |
              +-- prompt tuning:
                    soft-prompt emb at embedding layer only
                    condition e_0..e_m  [Lester et al.]
        |
        v
  optimize soft params on task data

  # continuous adaptation vectors — steward PEFT
  # NOT Graphic D / Core rows
```
stamp under fence: KEEP-read steward | **FORBID as Core rows** | SILENT-for-Lace-append

---

### P-A7 — Instruction fine-tuning (SFT)

| Field | Content |
|---|---|
| Mechanism cite | M-A7 · **§4.2.1** Supervised Fine-tuning PDF **pp.164–170**; eqs **(4.1)–(4.2)** |
| Sighting | Pass 3 M-A7 pin reuse; Pass 1 PAGE F / X6 |
| Lace stamp | **KEEP-read** steward; **FORBID-as-Core-write**; **SILENT-for-Lace-append** (X6) |
| Map cite | **X6** |
| False friend | FM-X6 — alignment ⇒ Core write; also FM-X3 if SFT confused with Core continue |
| Implements | M-A7 steps 3.1–3.4: form (x,y) → maximize log Pr(y\|x) → optimize from θ̂ → refuse Core write |

```
  theta <- theta_hat   (pre-trained)
  SFT set S = {(x, y)}   x = instruction + user input
                         y = y_1 ... y_n  gold response
        |
        |  maximize log Pr_theta(y | x)
        |    = sum_i log Pr_theta(y_i | x, y_<i)     # (4.2)
        v
  tilde_theta = argmax sum_{(x,y) in S} log Pr(y | x)  # (4.1)

  # conditional generator — steward adaptation
  # NOT Core / Graphic D rows; SILENT for Lace append
```
stamp under fence: KEEP-read steward | **FORBID-as-Core-write** | SILENT-for-Lace-append

---

### P-A8 — RLHF / human-preference alignment (reward + policy / DPO family)

| Field | Content |
|---|---|
| Mechanism cite | M-A8 · **§4.3** RLHF PDF **~179–192**; **§4.4** / DPO PDF **~200** |
| Sighting | Pass 3 M-A8 pin reuse; Pass 1 PAGE F / FM-X6 |
| Lace stamp | **KEEP-read** steward; **FORBID as Core write** (X6 · FM-X6); **FORBID-as-Lace-history**; not Graphic D |
| Map cite | **X6** |
| False friend | FM-X6 — soft prompt / RLHF / alignment ⇒ Core write |
| Implements | M-A8 RLHF 3.1–3.4 + DPO 4.1–4.2: prefs → reward/PPO or DPO → refuse Core write / Lace history |

```
  instruction-capable policy (often post-SFT)
        |
        |  sample output pairs; collect prefs
        |  D_r = {(x, y_a, y_b)}
        v
      +------------------+     +------------------+
      | RLHF path        |     | DPO family       |
      | prefs -> r_phi   |     | skip explicit r  |
      | (Bradley-Terry)  |     | optimize policy  |
      | -> PPO(policy,   |     | directly on prefs|
      |    value | r_phi,|     | (offline)        |
      |    ref + KL)     |     |                  |
      +------------------+     +------------------+
                \                   /
                 v                 v
              aligned policy Pr_theta

  # preference feedback updates steward weights
  # NOT Graphic D; NOT Lace occurrence history
```
stamp under fence: KEEP-read steward | **FORBID as Core write** | **FORBID-as-Lace-history** | not Graphic D

---

### P-A9 — Prefilling / decoding / KV-cache inference (two-phase + argmax Pr)

| Field | Content |
|---|---|
| Mechanism cite | M-A9 · Ch.5 eq **(5.1)** PDF **p.210**; **§5.1** PDF **pp.211–215**; **§2.3.3** KV PDF **p.77** |
| Sighting | Pass 3 M-A9 pin reuse; Pass 1 PAGE E/F / FM-X7 |
| Lace stamp | **KEEP-read** projection; **FORBID as Core continue / POINTER when** (X7 · FM-X7); **FORBID-as-store** for KV; **SILENT-for-Lace-append**; Φ `[GAP]` |
| Map cite | **X7** |
| False friend | FM-X7 — decoding / prefilling / KV-cache ⇒ when-rule or Φ fill |
| Implements | M-A9 prefill 3.1–3.3 + decode 4.1–4.4: fill KV → Pr → select → Append → refuse Core continue / when-rule |

```
  trained LLM; input x = x_0 ... x_m
        |
        |  PREFILLING
        |    for each pos of x: embed + Transformer layers
        |    at each layer: form (k,v); Append into KV cache
        |    (no output tokens yet, unless scoring Pr(x))
        v
  KV cache (K, V) filled for x
        |
        |  DECODING  (step i = 1, 2, ...)
        |    Pr(y_i | x, y_<i)  attending query to (K,V)
        |    select next token (greedy argmax / beam / sample)
        |    Append new (k,v) for chosen token
        |    repeat until EOS / length / search done
        v
  yhat = argmax_y Pr(y | x)     # (5.1) via two-phase

  # KV = transient inference memory
  # argmax Pr = book projection — NOT Piece 2 continue
  # does NOT fill emission; emission stays [GAP]
```
stamp under fence: KEEP-read projection | **FORBID as Core continue** | **FORBID-as-POINTER-when** | **FORBID-as-store** (KV) | SILENT | Φ `[GAP]`

---

## Cross-walk (P-A* ↔ M-A* ↔ stamp ↔ Map X# ↔ PAGE ↔ FM-X*)

| Panel | Mechanism | Stamp | Map | PAGE | FM |
|---|---|---|---|---|---|
| P-A1 | M-A1 Pre-train / foundation adapt | KEEP-read; FORBID-as-Core-write; FORBID corpus→DOCUMENT | X / FM-X9 | X | FM-X9 |
| P-A2 | M-A2 Tokenize → shared-vocab intern | KEEP-read; **FORBID-as-Lace-identity**; tokenizer `[GAP]` | X2 | B | FM-X2 / FM-X8 |
| P-A3 | M-A3 Token+pos(+seg) embed | KEEP-read; **FORBID-as-store** | X5 | D | FM-X5 |
| P-A4 | M-A4 Causal next-token train | KEEP-read; **FORBID next-token as Core continue**; SILENT | X3 | E / A | FM-X3 |
| P-A5 | M-A5 BERT MASK 80/10/10 | KEEP-read; **FORBID-as-Core-write** (MASK≠cut); SILENT; D7 | X4 | C / D7 | FM-X4 |
| P-A6 | M-A6 Soft-prompt / prompt-tuning | KEEP-read steward; **FORBID as Core rows**; SILENT | X6 | F | FM-X6 |
| P-A7 | M-A7 Instruction fine-tuning (SFT) | KEEP-read steward; FORBID-as-Core-write; SILENT | X6 | F | FM-X6 |
| P-A8 | M-A8 RLHF / preference / DPO | KEEP-read steward; **FORBID as Core write**; FORBID-as-Lace-history | X6 | F | FM-X6 |
| P-A9 | M-A9 Prefill / decode / KV | KEEP-read; **FORBID Core continue / POINTER when**; FORBID-as-store (KV); Φ `[GAP]` | X7 | E / F | FM-X7 |

---

## P4-X — Rigor matrix

Re-walked this pass (not inherited blindly from Pass 3). Columns: stamp match · Implements reverse-walk · Fence book-only (**no POINTER word**) · False-friend fence · Overview attach. Any FIX resolved here; none found.

| P | M | Stamp match | Implements reverse-walk | Fence book-only (no POINTER word) | False-friend fence | Overview attach | Verdict |
|---|---|---|---|---|---|---|---|
| P-A1 | M-A1 | PASS (KEEP-read; FORBID-as-Core-write; FORBID D→DOCUMENT) | PASS (3.1–3.5: separate → task → θ̂ → adapt → refuse D) | PASS (D, g_θ, θ̂, fine-tune/prompt only) | PASS (no DOCUMENT append glyph) | PASS (corpus node) | **PASS** |
| P-A2 | M-A2 | PASS (KEEP-read; FORBID-as-Lace-identity; tokenizer `[GAP]`) | PASS (3.1–3.4: tokenize → intern V → sequence → refuse identity) | PASS (text, units, V, x_i; no WORD/Star glyphs) | PASS (not Lace identity; tokenizer off-fence `[GAP]`) | PASS (tokenize node) | **PASS** |
| P-A3 | M-A3 | PASS (KEEP-read; FORBID-as-store) | PASS (3.1–3.5: token→pos→seg→sum e→refuse store) | PASS (x, e_pos, e_seg, e; no Graphic D rows) | PASS (embed tables ≠ Core store) | PASS (embed node) | **PASS** |
| P-A4 | M-A4 | PASS (KEEP-read; FORBID next-token as Core continue; SILENT) | PASS (3.1–3.5: Pr→LogCE→argmax_θ→optional pick→refuse) | PASS (Pr, Loss, θ̂, argmax over V; no continue glyph) | PASS (not Piece 2 continue) | PASS (causal-train branch) | **PASS** |
| P-A5 | M-A5 | PASS (KEEP-read; FORBID-as-Core-write MASK≠cut; SILENT; D7) | PASS (3.1–3.6: 15%→80/10/10→Loss_MLM→NSP→D7→refuse) | PASS ([MASK], replace, leave, Loss_MLM; no cut glyph) | PASS (corruption ≠ Lace cut) | PASS (MASK branch) | **PASS** |
| P-A6 | M-A6 | PASS (KEEP-read; FORBID as Core rows; SILENT) | PASS (3.1–3.4: choose→prefix/prompt tune→optimize→refuse) | PASS (soft_emb, prefixes, freeze LLM; no Core rows) | PASS (not Core write) | PASS (soft/SFT/RLHF strip) | **PASS** |
| P-A7 | M-A7 | PASS (KEEP-read; FORBID-as-Core-write; SILENT) | PASS (3.1–3.4: (x,y)→log Pr(y\|x)→θ̃→refuse) | PASS (SFT pairs, Pr(y\|x), θ̃ only) | PASS (not Core write / continue) | PASS (soft/SFT/RLHF strip) | **PASS** |
| P-A8 | M-A8 | PASS (KEEP-read; FORBID as Core write; FORBID-as-Lace-history) | PASS (RLHF 3.1–3.4 + DPO 4.1–4.2: prefs→r/PPO or DPO→refuse) | PASS (prefs, r_φ, PPO, DPO; no history/append glyph) | PASS (not Core write / Lace history) | PASS (soft/SFT/RLHF strip) | **PASS** |
| P-A9 | M-A9 | PASS (KEEP-read; FORBID Core continue / POINTER when; FORBID-as-store KV; Φ `[GAP]`) | PASS (prefill 3.1–3.3 + decode 4.1–4.4: KV→Pr→select→Append→refuse) | PASS (prefill, KV, Pr, argmax, Append; **no POINTER word**) | PASS (not continue / when-rule; KV≠store; emission `[GAP]`) | PASS (prefill/decode node) | **PASS** |

**P4-X verdict:** **9/9 PASS · FIX 0**.

Hard fence checks (acceptance):
- **P-A2:** no Lace WORD/Star identity glyphs; FORBID-as-Lace-identity under fence; tokenizer `[GAP]` off-fence.
- **P-A3:** embed tables are book vectors — not Graphic D; FORBID-as-store under fence.
- **P-A4 / P-A9:** \(\arg\max Pr\) is book projection — not Piece 2 continue; **no POINTER word inside any fence**.
- **P-A5:** MASK/replace/leave are corruption — not Lace cut; FORBID-as-Core-write under fence.
- **P-A9:** prefilling / KV / decode are inference memory — when-rule refused under fence (stamp), not invented inside fence; Φ `[GAP]`.

---

## Waves B–D — deferred (one-line seeds only)

| Wave | Seed | Status |
|---|---|---|
| **B** | Distributed training / scaling laws (§2.2); long-sequence architectures beyond KV (§2.3) | Deferred — no full panels |
| **C** | CoT / RAG / tool-use prompting (§3.2); inference-time scaling (§5.3) | Deferred — no full panels |
| **D** | Automatic preference-data generation (§4.x continuations) | Deferred — no full panels |

Pass 4 success = overview + P-A1…P-A9 + cross-walk + P4-X + clipboard receipt. Algorithms in mechanisms file unchanged.

---

## Steward test

Shoe in hands, or no.  
These diagrams are photographs of **book LLM machinery**, not Lace machinery.  
Pre-training boxes mutate weights — not DOCUMENT append.  
Vocab-intern boxes are not Lace WORD identity.  
Embed boxes are a second store — not Graphic D.  
Next-token and MASK boxes are training/corruption — not continue / cut.  
Soft / SFT / RLHF boxes are steward adaptation — not Core rows.  
Prefilling / decode / KV boxes project language — they do not emit when-rules.  
Opening a tokenizer gap is not filling Φ.  
Φ stays `[GAP]`. Tokenizer stays `[GAP]`.
