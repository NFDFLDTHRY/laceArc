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
