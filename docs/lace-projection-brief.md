# Lace Projection Brief — Graphic D as a Layer III view

**Audience:** Any agent building or reviewing the Lace visualizer.
**Status:** `[PROPOSAL]`. Plan only. No pixels until the human accepts the fence in §2.
**Subject:** Graphic D's array, projected. **Not** the Shadow clock — that is a different artifact at a different altitude.

You are not implementing Core. You are building a **read-only projection** of a
dataset the source already published.

---

## 1. What sanctions this

Not a stretch of the law. The source ships this view itself.

- **Graphic D4** — *"The same data in 3D (visualization). This is a projection, not storage."* The picture exists in the source; this is a live version of it.
- **Manifest, Layer III** — *"Projection / Visualization … Piece 13, plus 3D pictures of Pieces 7, 12, 15. Low state coupling if read-only."*
- **Graphic C11 / B11** — *"A 2D view is only a shadow of the full structure."* The ladder between views is itself a source panel.

The single condition the manifest attaches:

> **"The moment it supports edit, it is an illegal fork."**

---

## 2. The fence — decide this before any pixels

**The view is driven by panel D1's eleven rows, as given data. There is no emitter.**

```
        PERMITTED                          FORBIDDEN
        ---------                          ---------
   replay the eleven rows            type text -> rows appear
   hand-authored rows the            a generator that decides
     human accepts                     when a POINTER is written
   show what the rows close          fill a [GAP] to make a demo work
```

The moment a visitor can enter a sentence and watch POINTER entries appear, the
project has invented pointer-emission inside a toy. That is `[X]` audit 5, it
arrives dressed as a feature request, and it would be the most persuasive wrong
artifact this repo has produced.

**A projection may show what is on the line. It may not decide what goes on it.**

The eleven rows are already transcribed and mechanically re-verified in
[`docs/graphics-close-reading.md`](graphics-close-reading.md). That transcription
is the data contract; nothing is retyped from the image again.

---

## 3. Mechanism → view map

Every row cites the panel it comes from. Nothing here needs a gap.

| Mechanism | What the view shows | Source |
|---|---|---|
| One append-only line | Entries in index order; index is permanent; only the tail grows | D1 footer; Pieces 1, 6 |
| WORD entry | `index / type / value` — the value **is** the word; no id, no count | D2 |
| POINTER entry | `index / type / ref_A / ref_B`; both refs strictly earlier | D2; verified 6 of 6 |
| Star | Accumulated passes through one value — **not** a node, **not** a table | D5, A5, B3, Piece 7 |
| Pointer-to-pointer | Chains where a ref is itself a POINTER | D6; rows 0007, 0009, 0010 |
| **Mixed target kind** | Row 0009 names a WORD *and* a POINTER in one entry | close-reading §1 |
| Sequence as route | The line read in arrival order is a physical path | B5, A4 |
| **Projection ladder** | One dataset, three views: 1D line, 2D shadow, 3D threading | C2, C3, C4, C11 |
| **What is not Lace** | The forbidden readings, drawn beside the real one and marked | B10 |

The last two are why this is worth building at all. B10 and C11 exist to put a
flat graph next to the real structure; a toggle between them teaches the
distinction better than any prose in this repository.

---

## 4. The `[GAP]` fence — never appears in the view

| Not shown | Why |
|---|---|
| *When* a POINTER is written | `[GAP]`, and D1 refutes the mechanical readings |
| Arity beyond what D1 shows | `[CONFLICT]` — two slots drawn, unary and dynamic in history |
| Which ref is `ref_A` | `[GAP]` — slot order is not chronological |
| Tokenisation, `PIE` vs `pie` | `[GAP]` — word identity unsettled |
| Any read / query / traversal operator | `[GAP]` — the source specifies growth and pictures, not retrieval |

A control that would need any of these must not be built, not even disabled.

---

## 5. Phases — each one ships and is verified alone

```
  P1 DATA        eleven rows as a registry, provenance in the header
       |         accept: byte-identical to the close reading transcription
       v
  P2 1D LINE     entries in index order; select one; refs highlighted
       |         accept: all 11 selectable; backward-only visibly true
       v
  P3 3D STARS    value-equality clustering; passes, not nodes
       |         accept: both PIE entries share a star; no star object exists
       v
  P4 LADDER      1D / 2D shadow / 3D on one dataset  + NOT-LACE toggle
       |         accept: the shadow cannot be edited; B10 failures labelled
       v
  P5 CHAINS      pointer-to-pointer, including the mixed row 0009
                 accept: 0009 shows one WORD ref and one POINTER ref
```

**Ready** means P1–P5 each verified by reading pixels or data back — never by a
status. P2 alone is already a useful artifact; nothing later is required for it
to stand.

---

## 6. Technical bounds

- Single HTML + relative data files. WebGPU. **No CDN, no framework, no build step, no fetch.**
- Separate file from `shadow-clock-gearing.html`. Different altitude, different keys. Merging them is how a cube quietly becomes a WORD row — see [`hologram/README.md`](hologram/README.md).
- The picture must be a function — `shade(ndc)` — so a compute entry point can render it to a storage buffer and read it back **without a canvas or a device**.
- Read-only throughout. No control writes to the dataset. No `localStorage` of edits.

### Verification, stated because it already failed once

A pipeline object is not an image. `built: true` proves a pipeline exists; it
proves nothing about pixels. During the Shadow clock restyle that exact false
pass hid a reserved-keyword compile error through three checks and two shipped
versions.

**Every phase check reads back values.** `getCompilationInfo()` on every shader
module, and pixels out of a storage buffer for anything visual.

---

## 7. Done means

One artifact, the eleven rows unmodified, every phase check passing, no gap
filled, no emitter anywhere in the code path. Commit only if the human asks.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A projection shows the cord. It never decides where the next wrap goes.
Emission remains `[GAP]`.
