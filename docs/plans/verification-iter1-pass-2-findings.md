# Verification iteration 1, pass 2 — findings

**Status:** `[PLAN]` record, append-only per sub-pass. **Station:** maps.
**Emission:** `[GAP]`. No `src/`. **Method:** [the pass 2 plan](verification-iter1-pass-2-plan.md).
**Sources are read-only.** Nothing here edits the documents it grades.

---

## 2a — Graphic D, `data-structure-1d-array.png`

**Coverage: 79 of 79 cite-bearing lines. Complete.** Read at `78bc651` against the PNG opened directly.

| Document | Lines | `MATCH` | `DERIVED` (stamped) | Findings |
|---|---|---|---|---|
| `systems-manifest.md` | 17 | 17 | — | 0 |
| `atomic-primitives-map.md` | 30 | 30 | — | 0 |
| `graphics-close-reading.md` | 32 | 27 | 2 | **3** |
| | **79** | **74** | **2** | **3** |

### The headline: both transcriptions of D1 are exact

Two documents transcribe panel D1's eleven rows independently — `graphics-close-reading.md:24` and `atomic-primitives-map.md:74`. **Both are byte-identical to the panel**, index, type, references and all: `0000 WORD PIE` through `0010 POINTER 0009 → 0002`. The manifest's separate reading of D6's chain (`systems-manifest.md:105`) is likewise verbatim: `WORD 0000 PIE → POINTER 0002 (0000→0001) → POINTER 0007 (0006→0004) → POINTER 0010 (0009→0002)`.

This matters more than any finding below. The eleven rows are the only numeric evidence in the project, everything downstream is read off them, and they are right in every copy.

Every derived count checks too, and they are not trivial reads:

| Claim | Where | Verified against the panel |
|---|---|---|
| Six pointers, arity 2 uniformly | close reading §1 | 0002, 0004, 0006, 0007, 0009, 0010 — six, each two-ref |
| Slot order is not chronological: two ascending, four descending | close reading §2 | A<B at 0002, 0006; A>B at 0004, 0007, 0009, 0010 |
| `ref_A` is the subject of the panel's own gloss, six of six | close reading §2 | Checked row by row against each Explanation cell |
| Four adjacent WORD pairs, two unlinked | close reading §3, manifest:485 | (0001,0003) and (0005,0008) carry no pointer |
| Pointers appended per arrival: 0, 1, 1, 2, 2 | close reading §3 | Counted between successive WORD rows |
| Every entry but the newest is referenced later | close reading §3, manifest:480 | Referenced set is exactly `0000`–`0009`; `0010` is unreferenced |
| Every POINTER operand is earlier than its own section | atomic map:200 | No exception in six pointers |

The `ref_A`-is-the-subject reading is the sharpest claim in the four documents, and it holds in all six rows.

### Finding 2a-1 — a truncated quotation, and the dropped words are the boundary

`graphics-close-reading.md:169` quotes D4 as:

> "the 3D view is generated from the 1D array and its references. Nothing in the 3D view is stored."

**D4 reads:** "Nothing in the 3D view is stored **in the main data structure**."

No ellipsis, closing period inside the quotation marks, so it reads as complete. The four dropped words are the no-second-store boundary itself: as quoted it forbids the view holding any state at all; as printed it forbids the view living in the array.

Not a matter of taste — `systems-manifest.md:143` quotes the same sentence **in full**, inside a properly stamped `[INFERENCE from D4: …]`. One document has it right and the other clipped it.

**Verdict: `MISQUOTE`.** The panel carries the claim, but not in the words quoted. Law station; a proposal, not a repair.

### Finding 2a-2 — the panel numbers *are* printed

`graphics-close-reading.md:364` warns that this repository can drift the way a cited card deck did:

> "Panel labels `D1`, `B8`, `C6` are assigned by the manifest and by these files. They are not printed in the graphics."

**The numbers are printed.** Every panel in Graphic D carries a numbered heading — "1. The 1D Lace (append-only array)", "2. What each entry looks like", … "6. Higher-dimensional participation". Graphic C is numbered the same way, 1 through 12. Only the **letter prefix** is assigned by the manifest.

So a relabelling could change `D` to something else but could not renumber the panels without contradicting the printed image. **The hazard is real but roughly half the size the sentence claims** — a finding in the document's favour, which is the kind an audit grading its own side would quietly skip.

**Verdict: `WRONG` as written.** The accurate sentence is that the *letter* is assigned and the *number* is printed.

### Finding 2a-3 — a derived clause inside a source cite

`graphics-close-reading.md:226`, in the list of things "already closed by the source":

> "Nothing is deleted or rewritten; indices are permanent (D1 footer)."

D1's footer reads: "The array only grows. Nothing is deleted. Nothing is rewritten." The first clause is verbatim. **Index permanence is nowhere in the footer** — it follows from no-deletion-no-rewrite, but it is a step the panel does not take, sitting unstamped in a list whose heading promises source-closed items.

**Verdict: `DERIVED`, unstamped.** The smallest of the three and the easiest to fix: stamp it, or cite the manifest's `no index reuse` (K1) instead.

### Carried, not filed — the calibration question, answered

The plan held one sample back on purpose. `graphics-close-reading.md:154` cites `(D6, rows 0007/0009/0010)` for "a POINTER whose ref is a POINTER index". **D6 displays `0000` → `0002` → `0007` → `0010`; row `0009` is not on that panel**, and the manifest's own verbatim reading of D6 confirms that chain.

**Ruling, applied to all 79 lines: a panel cite sitting next to array row indices reads as "panel for the claim, rows as array addresses."** Row numbers are addresses in the one array, not a claim about panel contents. Under that rule the cite stands, and it sits inside a table the file stamps `[INFERENCE]` anyway.

Recorded rather than dismissed, because `atomic-primitives-map.md:93` is more careful with the same row: it says `0009` "involves a WORD and that earlier participation", where the close reading lumps it with the pure pointer-to-pointer rows. Both readings are defensible. **A law-station holder settles which; this pass does not.**

### Confirmed: the third owner of `D1`–`D4`

Plan §7 carried a suspicion. It is confirmed, and the document using it is **correct**.

`systems-manifest.md:219` and `:231` write "Presented as `D1, D2, D3, D4, …` stacked axes" and "Stacked translucent planes `D1`–`Dn`". Those are **Graphic C5's dimension planes**, which the panel labels `D1 D2 D3 D4 Dn` — and Piece 12's Source location line says `C5–C8; C header`, so the manifest is internally unambiguous.

A range check reading those tokens as Graphic D panels would call them cites and grade them wrong. **The document is right; the instrument would have been wrong** — the same shape as pass 1's `D7`, found from the opposite direction. 2b adds the register row.

### The vocabulary needed a fifth verdict

`MATCH` / `NEAR` / `WRONG` / `UNSUPPORTED` / `DERIVED` was built for the `B10`/`B11` class: the wrong panel named. **The first real defect found is a different shape** — the right panel, the right claim, and the words altered in transit. That is `MISQUOTE`, added here and carried into 2b–2d.

Pass 1's instrument needed extending on contact with the tree. So did this one. Worth expecting in 2b.

### What 2a did not find

**No `NEAR`. No `UNSUPPORTED`. No wrong-panel citation anywhere in 79 lines.** The error class this iteration was convened to hunt did not appear in Graphic D's cites. Three defects surfaced, all in one document, and all three are about how a true claim was worded rather than which panel was named.

That is a real result and it is one graphic, not four. 2b, 2c and 2d decide whether it generalises.

---

## 2b — Graphic C, `n-dimensional-relationships.png`

**Coverage: 58 of 58 cite-bearing lines. Complete.** Read at `af89f85` against the PNG opened directly.

| Document | Lines | `MATCH` | False positive | Findings |
|---|---|---|---|---|
| `systems-manifest.md` | 23 | 23 | — | 0 |
| `graphics-close-reading.md` | 14 | 14 | — | 0 |
| `atomic-primitives-map.md` | 21 | 20 | **1** | 0 |
| | **58** | **57** | **1** | **0** |

### No defects. Every genuine Graphic C citation matches its panel.

The quotations are the strong part. Three are verbatim or faithfully elided:

- `systems-manifest.md:159` — "In 1D you only see sequence; no crossings, no depth, no visible structure (C2)." **C2's bullets, word for word.**
- `systems-manifest.md:220` — "Four independent relational axes (same structure, no new meaning)" — **C6's own label, verbatim.**
- `systems-manifest.md:456` — C8's *Visible symptoms* list reproduced with **all six** items, including "naturally formed from repeated threading". Nothing dropped.
- `graphics-close-reading.md:151` — "crossings and adjacency … co-occur" — **an ellipsis used correctly**, spanning two of C3's bullets.

That last one matters against 2a: the same document that truncated D4 without an ellipsis uses one properly here. **The misquotation defect is not a habit of the file. It is specific to the passages 2a and 2c name.**

### The false positive, and it is my counter's, not the document's

`atomic-primitives-map.md:194` reads "standing orders; control **C01–C12**; task template". That is the **agent-control clause family**, zero-padded — the range `C01`–`C12` whose padding [the register](../namespace-register.md) says is the tell.

My cite regex matched the bare `C12` inside the padded range. **The document is correct and the instrument counted it wrong** — the third time this iteration, after pass 1's `D7` and 2a's `D1`–`D4`. Every one has been the counter's error, and every one was found by reading.

### C5's dimension planes, confirmed and registered

Plan §7 carried this from 2a. Confirmed against the panel: **C5 labels its stacked planes `D1` `D2` `D3` `D4` `Dn`.** A third owner for those tokens, beside Graphic D's panels and the Rowlands clipboard sections. The register row is added in this sub-pass.

### 2a-2 re-confirmed on a second graphic

2a found "panel labels … are not printed in the graphics" to be wrong for Graphic D. **Graphic C prints its numbering too** — "1. Rule zero" through "12. Governing rule". The finding now rests on two graphics rather than one.

---

## 2c — Graphic A, `from-words-to-worlds.png`

**Coverage: 57 of 57 cite-bearing lines. Complete.** Read at `af89f85` against the PNG opened directly. **The resync's Hands re-read for Graphic A is discharged here.**

| Document | Lines | `MATCH` | False positive | Findings |
|---|---|---|---|---|
| `systems-manifest.md` | 21 | 21 | — | 0 |
| `graphics-close-reading.md` | 3 | 3 | — | 0 |
| `atomic-primitives-map.md` | 14 | 14 | — | 0 |
| `reason-model-map.md` | 19 | 1 | **18** | 0 |
| | **57** | **39** | **18** | **1** (below, outside the line count) |

### Eighteen of nineteen "A-cites" in the reason model are a different paper

`reason-model-map.md` uses `A1`–`A5` for the **AgentScope paper's own sections**: `A1` Trajectory of an LLM agent, `A2` ReAG, `A3` Neural invariants, `A4` Failure taxonomy, `A5` Remainder of the 22-page paper. Only line 241 — "R1 output (empty totality) matches A1" — cites Graphic A's panel, and it matches: A1 is "Start — An empty Lace."

**A fourth identifier family, undocumented, accounting for a third of this sub-pass's line count.** Registered in this sub-pass.

This is the largest instrument error the iteration has found, and it inflated pass 1's board: "97 documents citing a graphic panel" counted this file on the strength of eighteen citations to a paper.

### The genuine citations are exact, and several are sharp

- `systems-manifest.md:90` — "'PIE' vs 'pie' appear in A6–A7". **A6 prints `PIE`, A7 prints `pie`.** A case-sensitivity gap found by looking at two panels.
- `systems-manifest.md:190` — the responsibility chain "Courier / Restaurant / Customer / Support". **All four labels exact**, and A9's own line is "Each word's star connects through the actual sequence of the text."
- `systems-manifest.md:274` — "A12 Zoom in: The PIE star" — **the panel heading verbatim.**
- `systems-manifest.md:65` — "punch-card style" — **A13's bullet verbatim**: "Input is treated exactly as it arrives (punch-card style)."
- `systems-manifest.md:137` — "First occurrence creates the beginning of a star (A2)" against A2's "The first occurrec[o]s of a word creates the beginning of a star."

### Finding 2c-1 — the second `MISQUOTE`, in the same document as the first

`graphics-close-reading.md:187` block-quotes Graphic A's header:

> "One continuous strand. **Every word a centimetre of wire.** …"

**The panel prints `centimeter`.** The file then builds its conversion table on that clause at line 197 and indexes it at line 384. Tree-wide: `centimetre` 3, `centimeter` 0 — **every instance in the repository is the altered spelling.**

Together with 2a-1's truncated D4 quotation, that is two verbatim-presented quotations altered in transit, both in `graphics-close-reading.md`. 2b showed the same file using an ellipsis correctly on C3, so **this is not carelessness across the file; it is two specific passages.**

**Verdict: `MISQUOTE`.** Law station; a proposal, not a repair.

### The transcription ruling §1.2 asked for

**Reproduce the source's spelling and its errors; mark an error where it would confuse, never silently correct it.**

Graphic A prints three typographical errors — `occurrecos` (A2), `3D obiect` (A11), `Continure.` (A13). The last is **confirmed a typo by Graphic C**, whose C12 prints the same governing sentence ending `Continue.`

Under this ruling `centimetre` is a defect whichever way it arose, and a document wanting to flag the source's US spelling adds a note rather than changing the word. **No document in the tree currently transcribes A's prose at length, so the ruling costs nothing today** — it is placed so that the first one to try has an answer.

### A limit in the 240-line metric, stated

The denominator counts lines carrying a **numbered panel token**. Citations that name a graphic region instead — `A header`, `D footer`, `D Key properties`, `C header` — are outside it. Eleven such references exist; most share a line with a numbered cite and are covered anyway, but roughly four are not. **2c-1 is one of them**: the misquoted header sits on line 187, which carries no panel number and was never in the 57.

**So the finding of this sub-pass was found outside its own coverage metric.** Recorded plainly, because a coverage fraction that cannot see its own best finding is worth knowing about before iteration 2 reuses it.

---

## 2d — Graphic B, `mechanisms-in-3d.png`

**Coverage: 46 of 46 cite-bearing lines. Complete.** Read at `72fa281` against the PNG opened directly. **The resync's Hands re-read for Graphic B is discharged here — the last one outstanding.**

| Document | Lines | `MATCH` | Findings |
|---|---|---|---|
| `systems-manifest.md` | 20 | 20 | 0 |
| `graphics-close-reading.md` | 5 | 5 | 0 |
| `atomic-primitives-map.md` | 21 | 21 | 0 |
| | **46** | **46** | **0** |

### No defects, no false positives. The cleanest sub-pass of the four.

Graphic B carries twelve panels, matching the declared `B1`–`B12`. Several citations are the panel's own words:

- `systems-manifest.md:145` — "A star has internal traffic (B9): incoming passes from many contexts" against **B9's label, "Incoming passes (from many contexts)"**
- `systems-manifest.md:65` — "punch-card input" — **B6's bullet verbatim**
- `systems-manifest.md:205` — "not merely attach to the outside (B7)" against **B7's "A new occurrence doesn't just attach to the outside"**
- `systems-manifest.md:274` — "B9 Star inside star traffic" — **the heading verbatim**
- `systems-manifest.md:268` — "Anti-model panels (B10)" — B10 is exactly four crossed-out anti-models

### One observation, not a defect: the strongest sentence in the graphics is uncited

**B12's eighth bullet reads "No collapse, no second store, no separate mechanisms."**

That is the repository's central prohibition, printed in the source of record in those words. `atomic-primitives-map.md:32` grounds K4 — *Keep one authoritative structure* — on `B10` and `D header and key properties`, which do support it. **But the sentence that says it outright is on B12, and no document cites B12 for it.**

Not a finding; every cite that exists is correct. Recorded because a law this repository repeats constantly has a verbatim source that nothing points at.

### 2a-2 now rests on three graphics

B prints "1. Continuous wire" through "12. Governing rule". **Every graphic read in this pass prints its panel numbers.** The close reading's "they are not printed in the graphics" is wrong for D, C and B alike — only the letter prefix is assigned.

### A fourth source typo

B10's green panel reads **"Itt is a continuously growing 3D structure."**

With Graphic A's three, that is four typographical errors across the two prose-heavy graphics. D's table and C's bullets carry none. **The transcription ruling from 2c stands and now has more to bite on** — reproduce, mark where confusing, never silently correct.

B12 and C12 both print the governing sentence ending **`Continue.`**, against A13's `Continure.` — two graphics against one, which is what made A13's a typo rather than a variant.

---

## 2c-1 revised — the unit is a category question, not a spelling one

**Raised by the human, checked here, and it supersedes the framing above.**

2c-1 reported that the close reading quotes Graphic A's header as "every word a **centimetre** of wire" where the panel prints **`centimeter`**. That still holds and a verbatim quote must match its source. **It is the smaller half.**

**The larger half: a length unit is the wrong kind of unit for a 1D array.**

The Lace is an append-only array addressed by index. Graphic D's only numeric evidence is eleven rows, `0000`–`0010`. The correspondent of "how much lace" is **how many indices**, not how many centimetres.

### And the conversion table makes a silent claim about emission

`graphics-close-reading.md` builds this on the clause:

| Text | Lace |
|---|---|
| a 12-word sentence | 12 cm |
| a 1,000-word document | 10 m |

**Measured against D1: five WORD entries occupy eleven indices.** The other six are POINTERs.

So twelve words are **not** twelve units of lace. They are twelve WORD entries **plus however many POINTERs get emitted** — and how many that is, is [`pointer-emission.md`](../pointer-emission.md), the project's one `[GAP]`.

**The table's 1:1 conversion quietly asserts that pointers cost no lace.** D1 refutes that in its own eleven rows, where pointers outnumber words six to five.

### Which is why the withdrawal was right, and now has a reason

Commit `3c73190`, on [the recovered branch](verification-iter3-pass-4-findings.md), withdrew this arithmetic as *"reasoning, not a unit."* **That judgment was correct and this record supplies the model's own reason for it:** any words-to-length conversion is a claim about emission, and emission is not settled.

### What this leaves for law

Both wordings are confusing because both are a length:

- **Hands keeps the clause as Hands.** A physical cord has a length you can hold, and the header is a Hands statement. `centimeter` is what the panel prints.
- **Shadow's correspondent is the index**, and it does not convert. One WORD arrival advances the index by one; what else advances it is `[GAP]`.
- **Nothing should carry a table between them** until emission is accepted.

**Verdict: `MISQUOTE` stands, and a second finding is added — `UNSUPPORTED`.** The conversion is not in the source; it is a reading that requires the gap to be closed. Law station; still a proposal, still not a repair.

