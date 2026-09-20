# Gear contracts — second reading (bounded)

**Status:** `[PROPOSAL]`. Secondary. Not a replacement.
**Primary:** [`docs/clock/shadow-clock-gear-contracts.md`](shadow-clock-gear-contracts.md), on `main` at `df39244`, extended through `ed06eec`. That file is the walk artifact. This one is a counter-reading against it.
**Diagram under test:** [`docs/clock/shadow-clock-hologram.md`](shadow-clock-hologram.md) · **Brief:** [`docs/clock/shadow-clock-agent-brief.md`](shadow-clock-agent-brief.md)

## Why this file exists instead of a second walk artifact

Two agents walked the hologram at the same time and both produced
`docs/clock/shadow-clock-gear-contracts.md`. That is a grind — two feelers dropping on
one shaft in one tick (`agent-interaction-model.md` §2, §5). The other reading
landed first and is the primary; this session yields the shaft.

The two readings agree on every verdict that matters: 40 contracts, no conflict
requiring the hologram to stop, all six `[X]` crossings forbidden, emission
unfilled. **Averaging them would destroy the only thing the pair carries.** Six
findings appeared in this reading and not in the primary. They are recorded here,
each checked against the primary before being claimed.

**Resync, live tip `7cd385f`.** Re-checked under `docs/gearing/RESYNC.md`
(`STATUS: FIRED`, readings stale). **S1 has since been absorbed by the primary**
and is retained below, restated, rather than deleted. Five remain outstanding.

Nothing below changes a stamp in the primary. Nothing below fills a `[GAP]`.

**Grounding** (C01): same reading order as the primary; shoe in hands
`NOT_PERFORMED`. Human acceptance `ABSENT`.

---

## S1 — `[X]` audit 1 has a re-entry path under a friendlier name — **ABSORBED**

**Status:** **closed.** The primary now carries this at line 134 —
*"Write-once continuation" revival (pass 2 D07/D02/D03)* — as a failure mode of
the A.C → A.L mesh, with the same citation. No action outstanding. The finding is
kept below as the record of how it entered, not as an open proposal.

**Bears on:** Walk 7, X1 (`L` merge/delete).
**Originally checked:** the hyphenated form was absent from the primary at
`df39244`; it is present at `7cd385f`.

The primary forbids ledger merge/delete as a Lace write. The breach also arrives
as a **write-once continuation field on an already-created block** — an
append-only declaration sitting beside a single-assignment slot.

- **HANDS CITE:** D1 footer — "Nothing is rewritten." A slot written once is still
  a slot written after the entry existed.
- **HISTORY CITE:** pass 2 — D07 combines exactly that pair; D02 and D03 reject
  reviving the mutable continuation mechanism. The recovery note states the rule
  directly: the present law "must not acquire an exception merely because the old
  field was called 'write once.'"
- **PROPOSAL (discharged):** X1's stamp should name single-assignment fields
  explicitly. An exception does not become legal by being small or by being spent
  only once. The primary now names it.

## S2 — `OBS`/`DELTA` ≠ rows has a mechanical reason, not only an authority

**Bears on:** Walk 3 C3/C8, Walk 7 X4.
**Checked:** `ref_A` and "subject" do not appear in the primary.

The prohibition currently rests on the boundary. It also rests on shape, which is
stronger because it survives disagreement about the boundary:

- A **DELTA is symmetric** — "my OBS: you said A; your OBS: I said B; DELTA: A ≠ B."
- A **POINTER is directed** — in all six D1 rows `ref_A` is the subject of the
  panel's own gloss ("**PIE** relates to DESSERT", "**CUSTOMER** relates to that
  relationship"). Two ascend, four descend, so the order is not chronological.

Difference is not participation. They are not the same object before any
prohibition applies.

- **HANDS CITE:** D1 rows 0002/0004/0006/0007/0009/0010; `docs/graphics-close-reading.md` §2.
- **PROPOSAL:** record the shape argument alongside the boundary argument in X4.

## S3 — the arity coincidence is a trap, and there are three candidates

**Bears on:** Walk 3 C3; open `[GAP]` 1.
**Checked:** "dynamic-arity" does not appear in the primary; "unary" does.

A DELTA requires ≥2 OBS. Every D1 pointer carries 2 refs. **That 2↔2 match must
not be used as evidence in either direction**, because the project's own history
holds three incompatible positions:

| Arity | Source |
|---|---|
| 2 (`ref_A`/`ref_B`) | Graphic D2 entry schema |
| 1 — unary `POINT(target)` | September v3 (D05), pass 2 |
| dynamic | September **dynamic-arity diagram**, pass 2 |

- **HISTORY CITE:** pass 2 — D05 §§3, 21–22; the dynamic-arity diagram is named as
  a separate lead alongside the unresolved graphics provenance.
- **PROPOSAL:** `[GAP]` 1 should carry `[CONFLICT]` on arity specifically, naming
  all three. `agent-control.md` C04 already directs this for the unary case.

## S4 — t4's `[I]` stamp holds only while the ground is reality

**Bears on:** Walk 4, cell t4; Walk 2 B3.
**Checked:** "reported run" does not appear in the primary.

t4 is the single `[I]` cell — the one place all three trains touch the same fact.
It is therefore the easiest cell to fake, because a shared *account* produces the
feeling of ground truth without the thing.

- **HISTORY CITE:** pass 1/2 — the 60,002 and 104,510 sentence runs are recorded as
  *reported* and were not reproducible; the frozen append-only C machine's
  verification counts are excluded from Lace evidence entirely.
- **PROPOSAL:** attach a steward duty to t4: **a reported run is not an impact.**
  Ground is checked against reality, never against a report of reality — including
  this file's reports and the primary's.

## S5 — the pass-2 interaction failures are unmapped onto the co-presence cells

**Bears on:** Walk 4, cells t1, t5, t6; hologram recursions (4) and (7).
**Checked:** "apparent assent", "familiar adjacent" and `no_containers` do not
appear in the primary.

Three failures documented in the archive land on specific cells and are not
currently stamped there:

| Cell | Failure | Source |
|---|---|---|
| t1 / t5 | **False mesh.** `EW`, `RULING` and `LOCKED` can "preserve apparent assent while the parties imagine different behavior." Silence is not assent. | pass 2, D02 / D01 |
| t6 (PFC') | **Familiar-adjacent capture.** A reader answers a familiar adjacent claim while missing the proposed inversion; D01 records a model doing exactly that. | pass 2, D06 / D01 |
| axle | **Root.** "Understanding depends on overlap between separately developed structures." | pass 2, D06 `no_containers` |

- **PROPOSAL:** recursion (4) PRIORS EAT CHILDREN names the loop; D06 names its
  mechanism. PFC' does not eat the next tick by refusing input — it does so by
  offering a familiar neighbour that is **easier to describe** than the object
  under the hand. Fluency, not refusal. Worth a line at t6.

## S6 — the staking law already names the X5 substitution by hand

**Bears on:** Walk 7, X5 (`Anchor()` as emission).
**Checked:** the phrase "grab is NOT" does not appear in the primary.

`docs/staking-the-workspace.md` anticipates this exact breach in the Kauffman
stake: **KEEP hitch / "later grab is kin" / "grab is NOT a POINTER emission rule."**

- **PROPOSAL:** cite the staking line directly in X5. The strongest argument
  against the substitution is that the law was written with it in view.
- **Supporting evidence for why X5 is the primary risk, from the Hands:** D1
  refutes the mechanical reading — two of four adjacent WORD pairs carry no
  pointer, and pointers appended per arrival run **0, 1, 1, 2, 2**. An irregular
  pattern is the signature of a deliberate act, which is precisely what `Anchor()`
  and `Pair()` are. Being the best-shaped analogue available is what makes the
  substitution dangerous, not what makes it permitted.

---

## Naming hazard (minor, but live)

"Escapement" now names three distinct mechanisms in this repository. The primary
connects the LOCK state to the tape's grind, which is correct; it does not flag
the homonym.

| Escapement | Layer | Law | Where |
|---|---|---|---|
| Gear W pallet | Lace tick | 0 or 1 tick per attempt | `philosophy-map.md` |
| `C.Locate @ B.Traj` | two holders in talk | manual release when A×A locks | `shadow-clock-hologram.md` |
| Shaft escapement | stewards editing the repo | 0 or 1 drop per shaft per tick | `agent-interaction-model.md` `[PROPOSAL]` |

Conflating the second with the first **is** breach X5 — it turns a talk-release
into an array write. Pass 2's card-number failure is the same class of error: a
label that no longer identifies what it once did.

---

## What this reading does not claim

The primary's verdicts stand. This file found **no conflict at the verdict level**
with it and proposes no change to any stamp.

> **Correction.** An earlier revision said simply "no conflict," which was a false
> mesh by the definition in `agent-interaction-model.md` §3b F1 — agreement that
> preserves apparent assent while the readings differ. The verdicts matched; the
> readings did not. Eight of ten spot-checked findings were absent from the
> primary entirely. Two readings can agree on every verdict and still be reading
> different things, and that difference is the information rule 3 says averaging
> destroys. The count was right. The word was wrong. Two items initially held as additive were checked and
withdrawn: the RIC∥PFC fan-out (the primary contracts it as a mesh) and graphics
provenance (the primary carries it as open `[GAP]` 8).

Emission stays `[GAP]`. Arity stays open and is now wider. No Core schema.
No entry type. `Lace ∉ {A, B, C}`.
