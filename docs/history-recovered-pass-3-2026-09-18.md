# History recovery pass 3 — how the third extract sits

Source: workspace attachment `Lace_Memory_Recovery_Pass_3_2026-09-18.md` (18 September 2026).

Supplements [pass 1](history-recovered-2026-09-18.md) and [pass 2](history-recovered-pass-2-2026-09-18.md).

This is a **reading of that extract against current law**.
It does not amend staking law.
It does not settle pointer-emission.
It does not replace `docs/graphics/` bytes.
It does not grant `src/`.
It does not install P02, the codec, or DESIGN.md defaults.

The extract already says it is a reading note and that staking law remains controlling. Honor that.

The extract pinned `NFDFLDTHRY/laceArc` at `eed8396`. This map is written later. Pin ≠ authority over Hands.

---

## What pass 3 adds that 1–2 did not have

- Four recovered visual counterparts of Graphics A–D, with timestamps, resolutions, and SHA-256 of both recovered and tracked files.
- Direct user wording, 7 September 2026: the store is a 1D array; every pointer is another section of lace.
- Full reads of P02 v0.2 and superseding v0.3: same reachable derivations ≠ same recorded history.
- Static inspection of two `star_codec` sources: the 100% roundtrip is against a *normalized* string, not raw arrival.
- `DESIGN.md` ledger: MINE guesses, known-bad measurements, missing-ruling count mismatch.
- Cat / cat-1: only a two-line fragment is sourced. Embellished retrieval is excluded.

29 August walker rejection is **not reversed**.
Pass 2 contact-rule conflicts stay **visible**.
Unary `POINT(target)` vs Graphic D `ref_A`/`ref_B` stays a **conflict**.

---

## Graphics — visual kin, not byte identity

| Claim in extract | Lawful reading | Unlawful reading |
|---|---|---|
| Compositions match A–D (empty start, PIE, twelve B panels, twelve C panels, WORD/POINTER + `ref_A`/`ref_B`) | Current graphics are the same *pictures* the 7 Sep work was drawing | Recovered PNG bytes replace tracked files |
| Titles inside images match canonical titles | Naming is stable | Filename drift authors Core |
| Recovered 7 Sep 00:24–01:05 UTC; repo commit of graphics is 18 Sep | Earlier visual record exists | Authoring-date of the idea is proved |
| Recovered SHA ≠ tracked SHA; tracked files named `.png` read as JPEG | Encoding path unverified | “The repo files are forgeries” or “swap them now” |
| Attachment numbers 13284–13287 come from current graphics README | Catalog in *this* repo | Original upload receipt |

Do **not** replace `docs/graphics/*`. Conversion history is still `[GAP]` as provenance, not as Core.

The 7 Sep conversation order recovered (3D request → mechanisms → N-D → user correction → fourth image) is chronology consistent with image metadata. It is not the emission contract.

---

## 7 September correction — pointer is lace

Recovered user wording (snippets, not full transcript export):

- “You literally just need a 1D array, and then pointers for your wiring.”
- “every pointer created is another section of lace… it all lands on lace so then that relationship can then participate in a later structure… a 1D lace”

Assistant echo (“A pointer is not outside Lace… It becomes more Lace.”) is **not** an extra user ruling.

### Map onto Hands

This is Graphic D / Piece 5, already law:

- POINTER is an entry on the same line as WORD.
- Later participation uses that entry as material.
- There is no separate graph store.

This is **not**:

- when a POINTER is written
- which targets
- arity (unary historical `POINT(target)` vs illustrated `ref_A`/`ref_B`)
- whether adjacent WORDs already relate
- word identity

The extract says the two-reference illustration and the earlier unary prescription **remain a conflict**. Keep both visible. Do not pick a winner from enthusiasm for Graphic D.

Onto the mathematical model (`docs/system-mathematical-model.md`):

\[
e_j=(P,\rho)\ \text{is an entry of }L,\ \text{not a row in another algebra}.
\]

\(\Phi\) still \(\in[\mathrm{GAP}]\). “Pointer is lace” names the *sort*. It does not define the *writer*.

---

## P02 v0.3 — EE is not recorded history

v0.3 supersedes v0.2. Historical proposal. Not Core.

| v0.3 correction | Clock / Hands reading | Do not import |
|---|---|---|
| Equality of admitted derivations (EE) ≠ byte-identical replay under the same schedule | \(L\) *is* recorded history. Same reachable work can yield different \(L_n\) | Checkpoint + replay as Core store |
| Re-run of identical job ≠ new evidence | Tick is append of *this* occurrence, not a count of compute | Epoch-as-evidence |
| Local admissibility ≠ commit policy | Gear W Locate ≠ \(\mathrm{app}\) | Admission engine in Arrival |
| StructureBytes equality is relative to canonicalizer \(V\) | Lossy \(V\) is Xiao intern / codec `.lower()` | Byte-eq after erase as possession of the strand |
| Overlapping serialization offsets ≠ incidence | Gluing is hitch / later grab, not shared file offset | Offset-as-POINTER |
| Coverage-from-strand withdrawn | Hands never claimed unrecorded work is in \(L\) | Reconstruct-from-missing |
| Starvation theorem left to P09 | Scheduler still not Core (pass 2) | Eleven-rule / 4:3:2:1 |
| Dog/wolf limited to pattern selected by \(V_1\) | No shared semantic role | Sense on WORD |

Central recovered sentence, keep:

> The same reachable derivations are not necessarily the same recorded history.

That is Rule Zero said against a fixed-point fantasy. It does **not** authorize P02 atoms, jobs, Z assignments, or projection equations as array types.

v0.3 “equations on derived projections” is kin of Contract III: views may carry equations. Those equations do not write \(L\).

This recovery did not audit the EE proof and did not run the falsification tests. Treat them as proposed.

---

## Codec — exact roundtrip ≠ raw arrival

Two sources inspected statically: `star_codec.py`, `star_codec(1).py`. Not run in this bind.

| Source fact | Consequence |
|---|---|
| Reader: UTF-8 replace, lowercase, newlines→spaces, split, `VAL` alphabet, first terminal mark only | Comparison domain is already transformed |
| Roundtrip target = `' '.join(words)` + mark | 100% is match-to-normalized, not to raw bytes |
| `Cat` vs `cat` collapse | Concrete counterexample to raw preservation |
| Decode keeps supplied word-tuple order; sorts character angles | Does not prove sentence order from an unordered figure |
| Novelty example pre-selects `the lake is cooler` | Decoder does not discover the answer |
| 16-combination enumeration | Combinatorics, no selection rule |
| `legal()` = membership in seen word figures | Vocabulary-shape, not grammar or truth |
| Trajectory function explicitly unwritten | No dynamics to import |
| 60,002 / 104,510 sentence figures | Reported runs; logs not recovered here |

Pass 2 already: codec round-trip ≠ intelligence. Pass 3 tightens: it is not even lossless *arrival*.

FORBID as Core defaults: `VAL` alphabet, lowercase intern, `[a-z']+` tokenizer, whitelist, old Python deps.

Petersen KEEP still applies: function ≠ construction. A decoder that rebuilds a normalized string does not possess the strand.

---

## DESIGN.md — guesses and known-bad

Useful as a failure ledger. Not rulings.

- Distinguishes LIVE / MISSING / MINE / OPEN. Keep the *habit*. Check each citation (R7 attributed to Kimi, not owner).
- Five MINE fills: angular normalization, extra-character order, ending punctuation, partial-paragraph regen, sentence prefixes as full blocks. Assistant defaults ≠ Hands.
- Known-bad (reported, not re-run): value-sum collapse 19,682→212; tokenizer collisions 9,571; “41.6%” that was constant 340; MI inflated by thin cells, twice.
- Prose says four MISSING (R9–R12); table also marks R13. Count is internally wrong. LIVE labels do not prove implementation completeness.
- `slide.py` measurements stay historical.

These are Gear H PFC-wins: a number felt like progress. Gear W: no OBS on the raw run.

---

## Cat / cat-1 — do not manufacture

Sourced fragment only:

```
cat → tail, fur, tongue
> cat-1 → tail, fur, tongue
```

Capture says the full `>` / `<` notation is unavailable and must not be manufactured.

A more elaborate scratches/purr version is an **unverified retrieval lead**. Excluded.

Meaning of `>` and the full progression remain open. Silence ≠ a Star table of parts.

---

## Structure spec v2 — opening only

Empty seed and reject-cutting as primitive: kin of A1 / Rule Zero.

Also contains historical closed-circle, strict-starvation, typed-pointer machinery: already forbidden (pass 1–2). Antecedent ≠ survival into current law.

---

## What still does not move

| Item | Status |
|---|---|
| Pointer-emission acceptance | None recovered. `docs/pointer-emission.md` and `src/` absent in the pinned checkout and still required before code |
| Unary vs two-ref POINTER | Conflict |
| Graphics conversion path | Unverified |
| Full cat exchange | Missing |
| July scheduler transcript / August allocation correction / card revisions | Still unresolved from pass 2 |
| September C-array experiment | Still not Lace evidence |
| 29 Aug walkers | Still dead |

---

## Stamps

| Recovered object | Stamp |
|---|---|
| 7 Sep “1D array + pointers are lace” | `[I]` kin of Graphic D |
| Visual match of four pictures | `[I]` kin of current graphics; bytes stay as tracked |
| P02 EE ≠ trace | `[H]` / metaphor `[I]` history-as-tape; machinery `[X]` |
| Equations on projections | `[III]` |
| Codec normalized roundtrip | `[X]` as arrival / intern |
| DESIGN.md MINE / known-bad | `[H]` ledger |
| Cat embellishment | unverified; do not write |
| Anchor / codec trajectory / P02 commit as \(\Phi\) | `[GAP]` / `[X]` if filled |

---

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Matching a picture is not replacing the picture.
Matching a decoder is not keeping the arrival.
Matching a derivation set is not the recorded strand.
\(\Phi\) remains `[GAP]`.
