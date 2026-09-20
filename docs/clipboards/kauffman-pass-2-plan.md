# Kauffman pass 2 plan — leftover clip + failure modes

**Status:** EXECUTED — D1–D6 landed on `kauffman-4ed-clipboard.md`. Emission `[GAP]`. PDF missing; D5 no-PDF branch.  
**Station:** clipboards (released after pass 2 · was `reference-Mapper`)  
**Source slug:** `dokumen.pub_knots-and-physics-4ed-9814383007`  
**Book:** L.H. Kauffman, *Knots and Physics*, 4ed · ISBN family `9814383007`  
**Clipboard:** `docs/clipboards/kauffman-4ed-clipboard.md`  
**Ancestor:** [kauffman-pass-1-plan.md](kauffman-pass-1-plan.md) (EXECUTED · `cecf7f3`)  
**Sibling (read-only this pass):** `docs/clipboards/clipboard-five-stakes.md` PAGE 1/5  
**Prompt:** `docs/prompts/kauffman-clipboard-prompt.md`  
**PDF:** `artifacts/refs/kauffman-knots-and-physics-4ed.pdf` — still expected gitignored. Never `git add`.

Law: diagram ≠ rope · hitch kin · grab ≠ emission · `[GAP]` sealed.

```
pull/ff main → shoe → graphics A–D → manifest → law
                 → reason-model-map §1
                 → pass-1 clipboard (do not redo A–X fill)
                 → five-stakes PAGE 1/5 (read only)
                 → PDF if present (else label prior-OCR)
                 → Pass 2 deltas only
                 → STOP
```

---

## Already done (do not redo)

Pass 1 landed:

- PAGE A–F, X filled against Hands
- Pass-1 receipt (PDF missing · prior-OCR accepted)
- KEEP hitch / diagram≠rope; FORBID Reidemeister, closed loop, slide, virtual
- PAGE F silence on when/arity/adjacency; K5 listed as false friend
- ≤ vs `<` note on p.323 friction inequality
- Diagram-authority deadbolt on PAGE X
- reason-model-map / law / graphics / five-stakes **untouched**

Do not re-walk A–X as a greenfield. Do not invent emission. Do not amend the map from clipboard convenience.

---

## What pass 1 still flattened

Pass 1 was verify-and-tighten. It left these as prose scraps or sibling-only notes:

1. **No KEEP/FORBID strip on the book clipboard** — five-stakes PAGE 1/5 has ON THE SHOE / KEEP / FORBID / MAP ARROWS; the book clipboard only has per-page stamps.
2. **No failure-mode table** — how a reader mis-imports Kauffman into Lace (grab→Φ, RII→append, slide→milder write, …).
3. **No “what this artifact is not” block** — book clipboard vs Core vs five-stakes vs reason-model-map.
4. **Printed vs PDF page bridge** — five-stakes already has PDF one-based loci; book clipboard mostly printed Part/§. Pass 2 can mirror the bridge **if PDF is present**; else cite five-stakes and keep prior-OCR label.
5. **K5/K6 locus thin** — named on PAGE F; no Part/§ line unless PDF/OCR supports it.
6. **Interface sentence** — map’s “felt grab matches later participation; equivalent-diagram does not match Piece 6” is not yet a clipboard delta.

---

## Pass 2 product

Edit **only** `docs/clipboards/kauffman-4ed-clipboard.md`. Append Pass 2 deltas (do not erase Pass 1 receipt or A–X pages). Add:

### D1 — What this clipboard is not

Short block under steward notes:

- Not Core / not Graphic D / not `pointer-emission.md`
- Not a rewrite of `reason-model-map.md` §1
- Not a substitute for five-stakes PAGE 1/5 (admission boundary lives there)
- Not therapy for knot theory; not a license to close Φ

### D2 — ON THE SHOE / KEEP / FORBID / MAP ARROWS strip

One ASCII strip aligned with five-stakes PAGE 1/5 wording (hitch KEEP; R / closed / slide / virtual / Jones-as-history / DNA / Bayman-fields FORBID). MAP ARROWS: K1→RM4/Piece 5 kin (no row); K4→Piece 6 `[X]`; K3→RM5 read. Emission settled? **NO** `[GAP]`.

### D3 — Failure modes (reader → Lace)

| ID | Misread | Hands deadbolt |
|---|---|---|
| FM-K1 | clove grab ⇒ POINTER when-rule | grab is kin; Φ stays `[GAP]` |
| FM-K2 | closed loop ⇒ Lace identity | two ends; Continue |
| FM-K3 | Move Zero ⇒ array write | projection only |
| FM-K4 | Reidemeister ⇒ simplify stars / emit | Rule Zero; not Piece 6 |
| FM-K5 | Jones/Gauss ⇒ wrap history on D | do not store |
| FM-K6 | DNA passage ⇒ thread-through write | cut-rejoin `[X]` |
| FM-K7 | \(T_2,\kappa,e^\theta\) ⇒ array columns | friction ≠ fields |
| FM-K8 | slide ⇒ milder Core write | implies RII/RIII class |
| FM-K9 | virtual 1-handles ⇒ extra rooms | one store |

### D4 — Interface coherence (one paragraph)

Land the map sentence as clipboard delta: only K1 output (felt grab, wraps kept) matches a Core input (later participation); K4 output (equivalent diagram) does not match Piece 6 (new section). Do not close Φ.

### D5 — Source gate

| PDF present under `artifacts/refs/`? | Action |
|---|---|
| Yes | Optional: add printed↔PDF page bridges for A–E from five-stakes / visual check. Label “Pass 2 PDF sighted.” Still never git-add. |
| No | Keep prior-OCR label. Do **not** invent new loci. Cite five-stakes PDF lines as sibling only. |

### D6 — Sealed

- Invent when / arity / adjacency
- Edit reason-model-map, law, graphics, five-stakes (out of scope; five-stakes stays read-only)
- Add `src/`
- Git-add PDF
- Push unless human says push
- Pretend a fresh OCR walk without the file

---

## Tickets

### T0 — Claim / base

Done at plan time: `clipboards` HELD by `reference-Mapper` @ `69cfde8` (refresh if main moved before execute).

### T1 — Hands + sibling read

Re-skim shoe → A–D → manifest → law → reason-model-map §1 → pass-1 clipboard → five-stakes PAGE 1/5. No edits yet.

### T2 — Source gate

Check `artifacts/refs/kauffman-knots-and-physics-4ed.pdf`. Branch D5.

### T3 — Write D1–D4 (and D5 bridges only if PDF)

Append under a `## Pass 2 deltas` heading. Keep A–X intact.

### T4 — Receipt

Add Pass 2 receipt row: EXECUTED · PDF present? · five-stakes still untouched · Φ `[GAP]`.

### T5 — Check / commit / release

```
./docs/coord/coord.sh check clipboards "reference-Mapper"
# commit when human ok
./docs/coord/coord.sh release clipboards "reference-Mapper"
```

STOP.

---

## Execution (when you say go pass 2)

1. `git pull --ff-only` · refresh claim if needed  
2. T1–T2  
3. Edit only `docs/clipboards/kauffman-4ed-clipboard.md` (D1–D6)  
4. Check · commit (ask before push) · release  
5. STOP  

---

## Steward test

If it is not on the shoe or in the cited Kauffman locus, it stays out.  
If a failure-mode row would write Graphic D, mark `[X]` / `[GAP]`, do not “fix” it.  
Five-stakes admission boundary is not rewritten here — only mirrored as a strip.  
Shoe in hands, or no.


---

## Execution result

- Claim refreshed @ `744c34b` after ff-only pull; check OK.
- PDF still missing → D5 no-PDF branch (no new page bridges).
- Edited only `docs/clipboards/kauffman-4ed-clipboard.md` (Pass 2 receipt + D1–D6).
- five-stakes / reason-model-map / law / graphics untouched.
- Φ / POINTER when·arity·adjacency remain `[GAP]`.
