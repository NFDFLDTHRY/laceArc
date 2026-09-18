# Shadow Clock Agent Brief — Gear Interaction Contracts

**Audience:** Any agent operating on laceArc Shadow clock work.  
**Status:** Standing brief. Not a sixth graphic. Not Core.  
**Gearing diagram under test:** [`docs/shadow-clock-hologram.md`](shadow-clock-hologram.md)

You are not implementing Lace Core. You are auditing and contracting the **holder machine** `{A, B, C}` already forged in the hologram.

---

## Job

1. Treat the hologram’s ASCII as the **gearing diagram** under test.
2. For every gear–gear mesh (within A, within B, within C, and across A×B×C at each co-presence cell t0–t6), write an **interaction contract**: inputs, outputs, preconditions, effects, invariants, failure modes, and which boundary stamp applies (`[I]` `[II]` `[III]` `[H]` `[X]` `[GAP]`).
3. **Walk each contract** against all source material below. Cite the passage you used. If the picture/text is silent → mark `[GAP]`. If a source would change WORD / POINTER / STAR / governing rule → **discard for Core**; keep as reading note only.
4. Do **not** invent pointer-emission. Do **not** add `src/`. Do **not** put PDFs in git. Do **not** grow a second store.

---

## Reading order (mandatory before each walk)

1. Shoe in hands (physical two-ended lace)
2. `docs/graphics/` A–D (source of record)
3. `docs/systems-manifest.md` (contracts I / II / III)
4. `docs/staking-the-workspace.md` (Hands vs Shadow law — do not paraphrase away)
5. `docs/reason-model-map.md`
6. `docs/shadow-clock-hologram.md` (the gearing diagram)
7. Only then: Shadow texts and history notes

---

## Source corpus to compare against (all of it)

**Hands**

- Four PNGs + `docs/graphics/README.md`
- `docs/systems-manifest.md`
- `AGENTS.md`, `CONTRIBUTING.md`, `README.md`

**Shadow law / maps**

- `docs/staking-the-workspace.md`
- `docs/reason-model-map.md`
- `docs/shadow-clock-hologram.md`
- This brief

**Philosophical gears** (attachments / prior chat — not Core)

- HCC-A (Human Cognitive Compiler Architecture)
- The Coffee Cup
- Where the Water Is Loud + Dual Proofing Systems

**Five stake PDFs** (KEEP/FORBID only; never import axioms into Core)

- Kauffman, *Knots and Physics*
- Rowlands, *Zero to Infinity*
- Xiao & Zhu, *Foundations of Large Language Models*
- Petersen & Zech, *Mathematical theory of deep learning*
- Bi et al., AgentScope / Diagnosing with Insights

**History** (reading notes only; silence ≠ assent; approval labels can hide mismatched behavior)

- Lace memory recovery pass 1
- Lace memory recovery pass 2 (scheduler, No Containers, contact-rule conflicts, card mismatches, false C-experiment attribution)

---

## Contract template (use for every mesh)

```
MESH: <gear_i> → <gear_j>   (scale: A|B|C|A×B×C ; time: t#)
INPUTS / OUTPUTS
PRECONDITIONS / EFFECTS
INVARIANTS
FAILURE MODES
BOUNDARY STAMP: I|II|III|H|X|GAP
HANDS CITE: <graphic panel or manifest piece>
SHADOW CITE: <A|B|C passage or stake KEEP/FORBID>
HISTORY CITE: <pass1/pass2 or none>
DELTA vs HOLOGRAM: confirms | refines | conflicts | silent
IF CONFLICT: hologram wins only if Hands agree; else mark CONFLICT and stop inventing
```

Boundary stamp meanings (from the hologram):

| Stamp | Meaning |
|---|---|
| `[I]` | Kin-read of Core invariant (does not implement Core) |
| `[II]` | Kin-read of Arrival discipline (does not implement ingest) |
| `[III]` | Kin-read of Projection / view (must not write back) |
| `[H]` | HOLDER-only (steward / conversation / attention) |
| `[X]` | FORBIDDEN to cross into I/II/III as mechanism |
| `[GAP]` | Hands silent — Shadow must not fill |

---

## Walks required (minimum)

1. Every adjacent tooth in A’s train (R→…→B→R)
2. Every adjacent tooth in B (Cond→…→After→Cond)
3. Every C FSM edge (S0→…→S4→S0') + bridge functions Locate/Anchor/Pair/Unknowns/Reject
4. Every t0–t6 co-presence cell (B tooth × C state × A phase)
5. Escapement: Rapids lock vs Locate/Anchor release
6. Master recursion (1): After ≡ Rebuild ≡ Act VI → next start — stamp `[H]` / metaphor `[I]` / mutate-WORD `[X]`
7. Explicit `[X]` audits: L merge/delete; M as word sense; PFC as Star; OBS/DELTA as rows; Anchor as emission; After as rewrite i

---

## Done means

A single markdown artifact listing every mesh contract + walk result + open `[GAP]`s. No Core schema. No emission rule filled. Commit docs only if the human asks.

Suggested output path (when the human requests the walk artifact):  
`docs/shadow-clock-gear-contracts.md`

---

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

If a crate did it for you, you may not.

Holder gears diagnose the steward (same shelf as AgentScope stake). They do not grow a second store beside Graphic D.

---

## Related paths

| Path | Role |
|---|---|
| [`shadow-clock-hologram.md`](shadow-clock-hologram.md) | Gearing diagram under test |
| [`staking-the-workspace.md`](staking-the-workspace.md) | Hands vs Shadow law |
| [`reason-model-map.md`](reason-model-map.md) | Five PDF stakes → Hands |
| [`systems-manifest.md`](systems-manifest.md) | Contract I / II / III |
| [`shadow-clock-gearing.html`](shadow-clock-gearing.html) | Interactive physical gearing map (Layer III; raw.githack) |
