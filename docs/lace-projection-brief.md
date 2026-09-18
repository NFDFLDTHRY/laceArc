# Lace Projection Brief — Graphic D as a Layer III view

**Audience:** Any agent building or reviewing the Lace visualizer.
**Status:** `[PROPOSAL]` v2. Plan only. No pixels until the human accepts the fence in §2.
**Review pass 1:** Grok, against `origin/main` `b445a63`. Nine findings; eight adopted below, one part-corrected. All nine are now dispositioned in this file. Its first finding was process: this file was on a branch, not on `main`, so the fence could not be audited as committed prose. That is fixed by review prompt §gate, which now carries the branch and a raw link.
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
   show what the rows close          a generator that decides
   say where a row came from           when a POINTER is written
                                     fill a [GAP] to make a demo work
                                     rows authored to taste
```

The moment a visitor can enter a sentence and watch POINTER entries appear, the
project has invented pointer-emission inside a toy. That is `[X]` audit 5, it
arrives dressed as a feature request, and it would be the most persuasive wrong
artifact this repo has produced.

**A projection may show what is on the line. It may not decide what goes on it.**

### Timing is part of the fence

Replay can walk through the fence even with no text input. If rows appear one at
a time in index order, a viewer reads *"0001 arrived, therefore 0002 was
emitted"* — which is the `[GAP]`, smuggled back as an animation.

- **All eleven rows present at t=0.** The array is shown as it stands, not built.
- A scrub control is permitted **only** when labelled *replay of given rows —
  not emission*, and only if it can move backwards.
- No frame may be captioned so that one row appears *because of* another.
- No type-in. Ever.

The eleven rows are already transcribed and mechanically re-verified in
[`docs/graphics-close-reading.md`](graphics-close-reading.md). That transcription
is the data contract; nothing is retyped from the image again.

**P1 is D1 only.** "Hand-authored rows the human accepts" was an escape hatch in
v1 and it reopened the emitter by the back door: rows typed to make a demo work
are an emission rule with extra steps. Any row beyond the eleven requires a
dated human sentence in-repo carrying the same status language as the emission
draft — *these N rows are specimen, not a rule* — and names who accepted it.
`docs/graphics-close-reading.md`: eleven rows cannot distinguish a rule from a
tidy illustration; more rows authored to taste cannot either.

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
| **Projection ladder** | One dataset, three views: 1D line, 2D shadow, 3D threading | C2, C3, C4, **B11**, C11, D4 |
| **What is not Lace** | The forbidden readings, drawn beside the real one and marked | B10 |

**Cite correction (review pass 1).** An earlier draft of this paragraph said
"B10 and C11 exist to put a flat graph next to the real structure." That
conflated two panels. **B11** is the projection panel — *"A 2D view is only a
shadow of the full structure."* **B10** is the collapse panel — the four named
failures, one of which is *"Not one flat edge."* The table row above is
corrected; the B10 row stands, because B10 really is the what-is-not-Lace panel.
`docs/graphics-close-reading.md` had it right all along: *"Projection is a shadow
that cannot write back — B11, C11, D4."*

The two rows are why this is worth building. B11 puts a 2D projection beside the
real structure and B10 names the failures; a toggle between them teaches that
distinction better than any prose in this repository.

**Before any phase ships, every row of this table is marked `[ok from D1]` or
`[cannot draw — omit]`.** Omit beats invent. A row needing emission, arity, slot
order or tokenisation is `[cannot draw]` by definition.

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
  P2 1D LINE     the default view. index order, WORD rows and POINTER rows
       |         both on the line; select one; its refs highlighted
       |         accept: all 11 selectable; both types visible; backward-only
       |                 visibly true; the words "projection of Graphic D --
       |                 not the store" on screen, not in a tooltip
       v
  P3 STARS       shared value shown by colouring the WORD rows that share it
       |         accept: both PIE rows carry one colour; NO OBJECT WHOSE
       |                 LIFETIME IS "THE STAR" -- no index, map, id or count
       v
  P4 LADDER      1D / 2D shadow / 3D on one dataset  + NOT-LACE panel
       |         accept: the line is still what loads; the shadow is reached
       |                 by a control named "shadow -- not the store"; the
       |                 shadow cannot be edited; B10 failures labelled
       v
  P5 CHAINS      pointer-to-pointer, including the mixed row 0009
                 accept: 0009 shows one WORD ref and one POINTER ref
```

**Ready** means P1–P5 each verified by reading pixels or data back — never by a
status. P2 alone is already a useful artifact; nothing later is required for it
to stand.

### Negative tests — every phase, not only its own

Every acceptance line above can pass while the object is still wrong: P1 can
show the eleven rows graph-first, P2 can hide POINTER participation, P3 can
intern, P4 can make the shadow the memorable picture, P5 can animate index
order. So each phase check also runs these, and a phase is not passed until
all four come back empty:

| Negative test | Fails if |
|---|---|
| **The graph is never the default** | any load path reaches a node-edge picture before the 1D line |
| **No `Star` type** | any declaration — type, struct, class, array, map, id, count — whose lifetime is *the star* |
| **No timed append** | any timer, transition or frame in which a row arrives; all eleven exist at t=0 |
| **No extra row** | the registry holds ≠ 11 rows with no dated human accept line in-repo |

Three of the four are greppable. They belong in the phase check, not in a
reviewer's attention.

---

## 6. Technical bounds

- Single HTML + relative data files. WebGPU. **No CDN, no framework, no build step, no fetch.**
- **First line of the file declares what it touches** — `reads: docs/graphics/data-structure-1d-array.png D1, transcribed / writes: nothing`. A file that cannot state that in one clause is doing two jobs.
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
