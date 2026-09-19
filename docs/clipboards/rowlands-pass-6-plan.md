# Rowlands pass 6 — accurate mapping mechanisms ↔ ASCII SOURCE MACHINERY

**Status:** PLANNED — not executed. Emission `[GAP]`.  
**Station:** clipboards (HELD `reference-Mapper`)  
**Base at plan:** refresh to current `origin/main` before execute  
**Prerequisite:** Pass 5 Wave B commits should be on the working branch (push or rebase first if still only local).  
**Book:** Peter Rowlands, *Zero to Infinity* · K&E Vol. 41  
**PDF:** `refs/local/rowlands-zero-to-infinity.pdf` · gitignored · offset printed ≈ PDF − 25  
**Primary (audit + fix):**  
- `docs/clipboards/rowlands-zero-to-infinity-mechanisms.md` (M-A1…A9 · M-B1…B5)  
- `docs/clipboards/rowlands-zero-to-infinity-ascii-machinery.md` (P-A* · P-B* · SOURCE MACHINERY)  
**Companion (receipt only):** `docs/clipboards/rowlands-zero-to-infinity-clipboard.md`  
**Not this pass’s object:** `docs/systems-manifest-ascii.md` (Lace Core) — cite only as OFF-board  

Law: empty start · no extra rooms · “rewrite” ≠ mutate-WORD · Hands win · `[GAP]` sealed.

```
pull/ff → claim → Hands skim
      → read every M-* card + every P-* panel + overview(s)
      → build accuracy matrix (node / panel / card / stamp / pin)
      → fix drift: panel Implements ↔ card steps; overview arcs ↔ Wave A/B spine
      → one canonical SOURCE MACHINERY diagram
      → optional Wave C only after accuracy green
      → receipt · check · commit · release · STOP
```

---

## Why this pass exists

| Pass | Job |
|---|---|
| 4 | Wave A cards + first SOURCE MACHINERY + P-A* |
| 5 | Wave B cards + P-B* + overview fork |
| **6** | **Accuracy** — ensure mechanism map and ASCII systems diagram **say the same machine** |

Pass 5 grew Wave B fast. Pass 6 is the steward pass: no silent drift between algorithm text, panel fences, and the top-level ASCII systems diagram.  
It is **not** a Core merge. Lace Core ASCII stays a different object.

---

## What “accurate mapping” means

For every mechanism ID `M-*` that has a panel `P-*`:

1. **Cite match** — panel Mechanism cite names the same chapter/PDF pins as the card (or documents a deliberate refine).  
2. **Stamp match** — panel Lace stamp ≡ card Lace stamp (KEEP/FORBID/SILENT family).  
3. **Implements match** — panel “Implements” lists card algorithm steps that a steward can actually find numbered on the card.  
4. **Fence fidelity** — ASCII glyphs depict those steps; no Lace `WORD`/`POINTER` inside fences.  
5. **Overview fidelity** — every overview node corresponds to a Wave A/B card (or is explicitly marked metaphor/FORBID-fork); no orphan nodes; no missing spine nodes.  
6. **Cross-walk completeness** — one table lists all P↔M↔stamp↔R#↔clipboard PAGE/FM without gaps for A and B.

Failures become `ACCURACY OPEN` rows with a fix ticket in this pass (prefer fix now).

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ `[GAP]` |
| Redraw `systems-manifest-ascii.md` as if it were Rowlands | wrong object |
| Soften Wave A/B FORBID stamps to make the diagram “prettier” | morals stand |
| Quiet rewrite of Pass 3 mesh / five-stakes / map §2 | wrong scope |
| Fill Waves C–D by inventing from TOC alone | PDF sighting required; optional only after accuracy green |
| Git-add PDF | gitignore |
| Push without ask | standing rule |

---

## Pass 6 product

### P6-X — Accuracy matrix (required)

Add to **both** mechanisms and ascii files (or one shared section linked from both):

| Overview node | P-ID | M-ID | Stamp | Pin OK? | Implements OK? | Fence OK? | Verdict |
|---|---|---|---|---|---|---|---|
| zero totality | P-A1 | M-A1 | … | Y/N | Y/N | Y/N | PASS / FIX |
| … | … | … | … | … | … | … | … |

Include all Wave A and Wave B IDs. Any FIX must be resolved in P6-F or listed as leftover with cause.

### P6-F — Fix drift (required if matrix finds issues)

Allowed edits:

- Align panel Implements ↔ card step numbers/wording  
- Align stamps and false friends  
- Align PDF/printed pins when re-sight confirms  
- Tighten fences so they depict the cited steps  
- Deduplicate / reconcile multiple overview blocks into **one canonical SOURCE MACHINERY** diagram  

Disallowed: inventing new physics; closing Φ; changing KEEP→FORBID without PDF cause.

### P6-O — Canonical SOURCE MACHINERY (required)

Ensure exactly **one** authoritative overview in the ascii file:

- Generative spine (A) + Wave B fork  
- FORBID stamps on vacuum / DNA–UG / QFT-history nodes  
- Lace Core OFF-board with pointer to `systems-manifest-ascii.md`  
- Φ = `[GAP]`  

If two overview drafts coexist, merge into one; leave a one-line note of what was retired.

### P6-C — Wave C (optional, after accuracy green)

Only if P6-X is all PASS (or remaining OPENs are explicitly non-blocking):

| ID | Mechanism | Seed |
|---|---|---|
| M-C1 / P-C1 | Fermion/boson charge tables | ch.13–14 |
| M-C2 / P-C2 | GUT / masses | ch.15 |

Same dual schema as Pass 4–5. If skipped: leave Deferred table + say so in receipt.

### P6-R — Receipt

`## Pass 6 receipt` on book clipboard: accuracy verdict, fixes landed, whether Wave C started, Φ still `[GAP]`.

---

## Tickets

### T0 — Sync / claim

Before execute: push or rebase Pass 5 so branch is clean · `git pull --ff-only` · refresh claim.

### T1 — Hands skim

Shoe → A–D → manifest → law → map §2 → five-stakes PAGE 2 → Wave A/B cards + ascii file.

### T2 — PDF gate

Confirm PDF path + gitignore; use `pdftotext` only for pin disputes.

### T3 — Build P6-X matrix

Walk every M-A/B and P-A/B; score Pin / Implements / Fence / Overview.

### T4 — P6-F fixes + P6-O canonical overview

### T5 — Optional P6-C

### T6 — Receipt · plan EXECUTED · check · commit · release

```
./docs/coord/coord.sh check clipboards "reference-Mapper"
# commit: accuracy matrix + fixes + canonical overview (+ Wave C if any) + receipt + plan EXECUTED
./docs/coord/coord.sh release clipboards "reference-Mapper"
```

Ask before push.

---

## Acceptance tests (execute must pass)

1. P6-X matrix present covering all M-A1…A9 and M-B1…B5.  
2. Every row is PASS, or FIX landed, or leftover OPEN with cause (no silent fails).  
3. Exactly one canonical SOURCE MACHINERY overview; Core off-board; Φ `[GAP]`.  
4. Every P-* Implements line matches numbered steps on its M-* card.  
5. No fence contains Lace `WORD`/`POINTER`.  
6. No FORBID stamp softened without PDF-cited CORRECTED note.  
7. `systems-manifest-ascii.md` untouched.  
8. Steward test: pick three random overview nodes; find matching card steps from the panel alone; refuse any Core conflation using the OFF-board legend.

---

## Execution (when you say go pass 6)

1. Sync Pass 5 / refresh claim.  
2. T1–T4 (T5 only if accuracy green and time).  
3. Mark plan EXECUTED.  
4. Check · commit · release.  
5. Stop.

---

## Steward test

Shoe in hands, or no.  
The ASCII systems diagram is a **picture of the book cards** — not a second Core.  
If card and panel disagree, the matrix must show it before any new Wave C ink.  
Φ stays `[GAP]`.
