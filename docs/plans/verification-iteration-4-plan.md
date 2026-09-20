# Verification iteration 4 — the state of the tree

**Status:** **CLOSED.** Passes 1–6 EXECUTED. [The receipt](verification-iteration-4-receipt.md) is pinned at `5af2b4f`.
**Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Previous:** [iteration 3](verification-iteration-3-receipt.md), CLOSED. Before it, [2](verification-iteration-2-receipt.md), [1](verification-iteration-1-receipt.md) and [the restructure](restructure-plan.md).

## 0. The subject, and why it is not another instrument audit

Iteration 3's receipt asked whether anything here still needs measuring. **The human's answer is the tree itself**, and this campaign has held the coherence brief since iteration 0.

**Iteration 0 made the tree legible at 220 files. It now holds 451.**

## 1. The board, measured at `6581023`

| | at the restructure | now |
|---|---|---|
| Tracked files / markdown | 220 / 156 | **451 / 377** |
| Commits | ~300 | **869** |
| **Commits in 24 hours** | 331 | **803** |
| Advisory findings | 0 at close | **44** |

### What held: ownership

**Every one of 451 tracked files maps to a station. Unowned paths: zero.**

Iteration 0 drove that from 10 to 0. **It has survived a doubling of the tree without a single regression** — the only structural property of this repository that has.

### What did not: navigation

**Doors cover 119 of 259 shelved files. 140 are not linked from their own index.**

| Door | Covers | Shelf |
|---|---|---|
| `docs/clipboards/README.md` | 22 | **84** |
| `docs/clock/passes/README.md` | 30 | 60 |
| **`docs/README.md`** — the court door | 19 | 37 |
| `docs/hologram/README.md` | 16 | 31 |
| `docs/prompts/README.md` | **0** | 16 |

### And the measurement that actually matters

**Following links from the court door, transitively: 271 of 377 markdown files are reachable. 106 are not.** *(Corrected in §1a: from every entrance the law names, the figure is **97 of 379 — 26%**.)*

| Unreachable | Shelf |
|---|---|
| 36 | `docs/clipboards` |
| 30 | `docs/clock/passes` |
| 9 | `docs/prompts` |
| 8 each | `docs/clock`, `docs/hologram`, `docs/history` |

**A reader entering where the law says to enter cannot reach a quarter of this repository by following links.**

### 1a. Completed: measured from every entrance the law names

Pass 1's first cut followed links from the court door alone. **The law names more than one entrance**, so the measure was re-run at `f741aab`:

| Entrances | Unreachable |
|---|---|
| `docs/README.md` alone — pass 1's first cut | 107 |
| **+ the repo root `README.md`** | **97** |
| + `AGENTS.md`, `CLAUDE.md` | 97 |
| + live law, the manifest, the staking | **97** |

**Two findings, and the second is the sharper one.**

**The figure was overstated by ten.** 97, not 107.

**And `AGENTS.md`, `CLAUDE.md`, the live law, the manifest and the staking document add exactly zero.** Every route they open is already open. **The two READMEs are the only entrances this tree actually has** — the rest of the law routes through them.

### 1b. The two entrances are not nested, and the court door is the smaller

The root `README.md` reaches **nine prompts** the court door cannot:

`clip-and-five-refs` · `gearing-html-fix` · `gearing-html-hologram-restyle` · `gearing-html-iterate` · `kauffman-clipboard` · `rowlands-clipboard` · `rust-nostd-branch-contracts` · `shadow-clock-shared-interactive` · `xiao-clipboard`

**`docs/README.md` was created in iteration 0 phase 2a as *the court door*.** It does not reach the prompts shelf at all. **Two entrances, neither a superset of the other, and the one the law points at is the smaller.**

### 1c. Which shelves are stranded, and which are not

| Unreachable | Shelf |
|---|---|
| 36 | `docs/clipboards` |
| 30 | `docs/clock/passes` |
| 8 each | `docs/clock`, `docs/hologram`, `docs/history` |
| 7 | `docs/gearing` |
| **0** | **`docs/plans`, `docs/kit`, `docs/graphics`, `docs/prompts`** |

**Every unreachable file is campaign output.** The shelves that stayed navigable are the ones whose campaigns add a row when they add a file — and one of them is this campaign's own, which is a fact about habit rather than virtue: `docs/plans` has a README row per document because every pass wrote one.

### How each number is got

```bash
git ls-files '*.md' | wc -l
./docs/coord/coord.sh which <path>      # per tracked file, for the ownership count
.claude/hooks/check-docs.sh             # doors and orphans
```

Reachability is a breadth-first walk of markdown links from a named set of entrances, skipping fenced and backticked spans the way the checker does. **The walk is in this commit's diff rather than pasted here**, for the reason [iteration 2 pass 1](verification-iteration-2-plan.md) gives.

## 2. This corrects a ruling I took, on evidence I measured wrong

[Iteration 2 pass 4c](verification-iter2-pass-4-findings.md) measured that **all 16 prompts have an inbound link from somewhere** and concluded: *"a filing gap, not a reachability gap."* That conclusion fed [iteration 3's `D1`/`D2` ruling](verification-iter3-pass-5-plan.md) that door coverage stays advisory, partly because *"gating would block the tree on a shelf that is fully reachable."*

**Measured now: all 16 still have an inbound link, and 9 of them are unreachable from the court door.**

**Inbound-link count is not reachability.** A file linked only from an unreachable file is unreachable. Pass 4c measured **one hop** and concluded about **the graph**.

**So the premise under `D1`/`D2` is gone.** The ruling may still stand — gating still buys stoppages, and iteration 2 priced one at 21 commits — but **it can no longer rest on "the doors are cosmetic", because they are not.** Pass 4 re-opens it with the corrected evidence.

## 3. The thesis, stated so it can lose

**This tree is coherent at the station level and incoherent at the reader level.**

Ownership is a property of paths and it survived doubling. **Navigation is a property of the link graph, and nothing has ever maintained it** — the doors were written once, at the restructure, and campaigns have added 230 files since without adding rows.

**Falsifier:** if the 106 turn out to be work that *should not* be reachable — scratch, superseded, campaign-internal — then the tree is coherent and only its advisory is wrong. **Pass 2 decides that by reading them**, and iteration 3 is the warning: its eleven "repairs" were all correct as written.

## 4. The six passes

| Pass | Station | Question |
|---|---|---|
| **1** | maps | What is the state of the tree? **This document. EXECUTED.** |
| **2** | maps | **Read the 106.** Which are genuinely stranded, which are campaign-internal by design, which are superseded? §3's falsifier. **EXECUTED** — [findings](verification-iter4-pass-2-findings.md): three structures, not one |
| **3** | maps | ~~**Have the shelves outgrown a flat index?** A door that lists 84 rows is not a door~~ — **the premise was false; no door in this tree lists 84 rows.** [Plan](verification-iter4-pass-3-plan.md) §0 says why. **EXECUTED** — [findings](verification-iter4-pass-3-findings.md): document siblings, not doors, are what keep provenance reachable |
| **4** | kit + coord — **evidence for a ruling** | Re-open `D1`/`D2` against §2's result. Also: what would keep a door current without gating. **EXECUTED** — [findings](verification-iter4-pass-4-findings.md): `D1`/`D2` hold on a replay neither iteration had run; nothing has ever kept a door current |
| **5** | — **human** | The five law items still open from iteration 1, plus whatever pass 4 refers up. **EXECUTED** — [record](verification-iter4-pass-5-findings.md): four applied, advisories 45 → 15, orphans 35 → 6; eight still the human's |
| **6** | maps | Receipt, and whether the coherence brief is discharged or continuing. **EXECUTED** — [the receipt](verification-iteration-4-receipt.md): **discharged as work, not as a property.** Unreachable 97 → 39, and all 39 are one campaign's |

## 5. What iteration 4 must not do

- **Not add door rows before pass 2 reads the files.** Iteration 3 queued eleven repairs that were all correct; the same trap is here at ten times the scale.
- **Not re-open the rulings that still hold.** `E1` (no gate), `E2` (no expiry), `E5` (no list) were ruled on evidence that has not changed. **Only `D1`/`D2`'s premise moved.**
- **Not take another campaign's shelf.** `clipboards` and `clock/passes` are where the unreachable files are, and they are live.
- **Not confuse reachable with correct.** A file reachable from the court door can still be wrong; iterations 1 and 2 covered that.
- **Not fill `[GAP]`.**

## 6. Accept iteration 4 when

The 106 are read and each is stranded, internal-by-design or superseded; the two oversized shelves have a proposal or a reason to stay flat; `D1`/`D2` are re-ruled against evidence rather than the corrected premise; and the receipt says whether a reader entering at the court door can now reach what the law says they should.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Every file has an owner. **A quarter of them have no route from the front door.** Ownership is who may touch a thing; navigation is whether anyone can find it — and this tree has kept the first perfectly while losing the second. Emission remains `[GAP]`.
