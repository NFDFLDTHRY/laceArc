# Verification iteration 5 — the global scope mappings

**Status:** `[PROPOSAL]`. **Pass 1 EXECUTED.** Passes 2–6 NOT_RUN.
**Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Previous:** [iteration 4](verification-iteration-4-receipt.md), CLOSED. Before it, [3](verification-iteration-3-receipt.md), [2](verification-iteration-2-receipt.md), [1](verification-iteration-1-receipt.md), [the restructure](restructure-plan.md).

## 0. This answers iteration 4's receipt rather than ignoring it

[That receipt](verification-iteration-4-receipt.md) recommended **no iteration 5 as a measuring campaign**, on the grounds that four iterations had each ended by finding the instrument wrong rather than the tree, and that what remained was *"a ruling or a repair, not a survey."*

**This iteration is the repair.** Its brief is *analyse **and update*** the global scope mappings. Pass 1 measures because a repair needs a board; passes 2–4 change files.

## 1. What a global scope mapping is, and there are four

Every one of these answers a question of the form *"for anything in this repository, what is it?"* — and each is a single point of failure for a different kind of agent mistake.

| | Mapping | Question it answers | Where it lives | Size |
|---|---|---|---|---|
| **I** | **Ownership** | *who may touch this path* | `docs/coord/coord.sh` `RULES` | **11 stations + 1 catch-all** |
| **II** | **Namespace** | *what does this token mean* | [`docs/namespace-register.md`](../namespace-register.md) | **28 families** |
| **III** | **Navigation** | *where does this file live and how is it found* | the eleven doors | **9 thin** |
| **IV** | **Derivation** | *what is this document derived from* | the manifest family | **12 map/manifest documents** |

## 2. The board, measured at `662ccc2`

### I — Ownership has a catch-all, and it is one of the largest owners

`path_to_station` carries eleven explicit station rules and then this:

```
RULES[maps]="${RULES[maps]} docs/*.md"
```

Its comment is honest about why — new files at `docs/` root matched nothing and failed closed, so an agent could not gate its own paths. **But the default has been accumulating.**

**Simulated without that one rule: 31 tracked files lose their owner entirely.** They are not scattered. They are two campaigns:

| Campaign | Files | Owner today | By |
|---|---|---|---|
| `systems-manifest-ascii` | **26** — the document and 25 pass plans | `maps` | **the catch-all** |
| `math-execution-model` | **5** | `maps` | **the catch-all** |

**Every other campaign in this tree has a rule of its own.** Clipboards, prompts, history, hologram, kit, graphics, coord, gearing-meta — each names its directory. These two have nothing, because they file at `docs/` root, and the default caught them.

**And the default assigns to `maps`, which is this campaign's own station.** So `maps` nominally owns 31 files of two other campaigns' live work, and **this campaign claimed `maps` repeatedly through iteration 4 while both were running.** That is a conflict of interest in the mapping being audited, and it is named here rather than discovered later.

### I(b) — the matcher's `*` crosses `/`, so the rule is wider than it reads

`match_score` tests globs with bash `[[ "$path" == $pat ]]`, where `*` is **not** path-aware. `docs/*.md` therefore *matches* `docs/plans/verification-iterations.md` and every other markdown file at any depth. It loses only on **score** — 3005 against 5011 for `docs/plans/**`.

**So the map's behaviour rests on the scoring arithmetic, not on what the pattern appears to say.** No misassignment is claimed here; pass 2 tests it adversarially, because a rule whose correctness depends on a number nobody has re-derived is the shape iteration 2 found four times.

### II — the namespace register does not know about the campaign that just concluded

28 families registered. The prefix-device / Φ campaign ran **seven passes onto `docs/pointer-emission.md`**, the file that governs the `src/` gate, and introduced `Φ`, `Q0`–`Q5`, `slot I`/`slot II` and its pass-sheet identifiers.

**Registered entries for any of them: zero.** The `math-execution` vocabulary is likewise absent.

### III — navigation

Nine thin doors. `docs/graphics/README.md` covers **16 of 36** — twenty of those files are the concluded campaign's own output. Unreachable markdown is **39 of 442, all quiet-door**, unchanged by that campaign, which filed its work reachably.

### IV — derivation

Twelve map and manifest documents, and **no document states the derivation order between them.** `systems-manifest.md` is derived from the graphics; `systems-manifest-ascii.md` from the manifest; the four clock manifests and three `*-map.md` documents sit at unstated distances from both. Pass 4's subject.

## 3. The thesis, stated so it can lose

**The tree's global mappings are maintained where a campaign owns them, and defaulted where none does — and the default has quietly become one of the largest owners.**

Iteration 4 found the same shape in navigation and called it a habit: *doors are kept by campaigns that add a row when they add a file.* **Ownership turns out to work the same way, and where habit ran out, a catch-all absorbed 31 files without anyone deciding.**

**Falsifier:** if the 31 are genuinely maps' work — *"derivative maps of the manifest are maps work"*, as the rule's own comment claims — then the default is **correct**, the only defect is that it is implicit, and the repair is one line of documentation rather than two new stations. **Pass 2 decides that by reading them**, and iteration 3 is the standing warning: its eleven queued repairs were all correct as written.

**Second falsifier:** if pass 2's adversarial test finds no path where the `*`-crossing behaviour misassigns a file, then I(b) is a hazard note and not a finding, and it should be recorded as such rather than inflated.

## 4. The six passes

| Pass | Station | Question |
|---|---|---|
| **1** | maps | What are the mappings and what state are they in? **This document. EXECUTED.** |
| **2** | maps | **Read the 31.** Maps' work, or two campaigns without a rule? Plus: adversarially test whether `*` crossing `/` can misassign a path |
| **3** | maps | **The register against the two new vocabularies** — Φ, `Q0`–`Q5`, `slot I/II`, math-execution. What collides, what is merely unregistered |
| **4** | maps + law | **Derivation.** State the order between the twelve map documents, or mark it `[GAP]` where nothing does |
| **5** | — **human** | Whatever passes 2–4 refer up, plus the standing docket: `D10`, **`D11`**, `D12`, `D13`, the SPOKEN widening, the branch |
| **6** | maps | Receipt, and whether the mappings now hold themselves |

## 5. What iteration 5 must not do

- **Not add a station without a ruling.** Two new `RULES` entries change the protocol every agent runs. That is pass 5's, not pass 2's.
- **Not edit `coord.sh` before pass 2 reads the files.** It is **coord**'s, it is code, and `CLAUDE.md` says ask.
- **Not touch `docs/pointer-emission.md`.** The concluded campaign's answers and the SPOKEN question are the human's.
- **Not rewrite a dated artefact to make it current.** Standing since iteration 1.
- **Not let `maps` audit its own windfall quietly.** §2's conflict of interest is declared; pass 2 states for each of the 31 who *should* own it, including where the answer is "not maps."
- **Not fill `[GAP]`.**

## 6. Accept iteration 5 when

Each of the 31 files has a named owner arrived at by reading rather than by default; the `*`-crossing behaviour is tested and recorded as a finding or a non-finding; the register carries the two new vocabularies or says why not; the derivation order between the twelve map documents is written down or marked `[GAP]`; and the receipt says whether a mapping now exists that nobody has to remember to maintain.

## 7. Two probe failures in this pass, recorded

**Both were mine and both were caught before publication**, which is the only thing that has changed about this failure class in five iterations.

- A `BLOCKED` census returned **84 stamps, 78 unqualified**. The grep had swept up four vocabularies — `BLOCKED-COMPLETE`, `DIAGRAM BLOCKED`, the C01 menu line being *listed*, and door rows. **Discarded; no number was published.**
- A catch-all census returned **425 files**. `git ls-files 'docs/*.md'` is a **pathspec, not a shell glob**, and matches recursively. The real figure is **31**, obtained by simulating the rule table instead of guessing at it.

**Both failures are the same one:** a pattern that looked path-shaped was not. **Which is also §2's finding about `coord.sh`** — and it is worth noticing that the instrument and the object failed in the same way within the same hour.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Eleven stations were named by hand and one rule was left to catch whatever fell. **What fell was two campaigns.** A lace with eleven marked lengths and one bin labelled *everything else* is not mapped; it is mostly mapped, and the bin is where the next knot forms. Emission remains `[GAP]`.
