# Verification iteration 3, pass 4 — E5, and what a moved file actually costs

**Status:** `[PLAN]`. Execution NOT_RUN. **Proposal only** — pass 4 builds nothing.
**Station:** maps for this plan. Any remedy lands in kit or coord and needs a ruling first.
**Emission:** `[GAP]`. No `src/`. **Pinned at `8f2c397`.**
**Iteration:** [iteration 3](verification-iteration-3-plan.md), pass 4 of six. Passes 1–3 EXECUTED.

*(Written with a quoted heredoc. [Pass 3](verification-iter3-pass-3-findings.md) recorded that defect's third occurrence and said the next file would use the fix.)*

## 0. The question changed shape twice

**E5 as inherited:** *nobody re-points a citation when a file moves.*

Probing found that **somebody did** — and the step leaked. So the question is not what mechanism to build. It is **why an executed step missed eleven of seventeen.**

## 1. Measured at `8f2c397`

### Moves are campaign events, not a drip

**76 renames in the whole history. They sit in six commits.**

| Commit | Renames |
|---|---|
| `47ec0f7` Phase 5a — the clock shelf | **30** |
| `94cdba8` Defrag pass 1 — prompts and history | 25 |
| `f1adf2d` Defrag pass 2 — clipboards and kit | 10 |
| `b7ed9a6` Defrag pass 3 — Shadow prose | 8 |
| `fbcd909` Defrag pass 4 — rust plans | 2 |
| `1fa7da9` reconcile after moves | 1 |

**627 of 633 commits moved nothing.** A standing mechanism would idle through 99% of this repository's life waiting for a day that comes about once a campaign.

### The link rewrite worked, completely

Both defrag commits say *"rewrite links"* in their own subject lines. **Broken markdown links today: zero.** That half of the job was done and has stayed done through 600 commits.

### And a prose sweep happened too — and leaked eleven

`1fa7da9` — *"reconcile links and clipboard status after repository moves"* — touched **exactly the files that now carry broken prose citations**: `atomic-primitives-map.md`, `agentscope-clipboard.md`, `clipboard-five-stakes.md`, `petersen-zech-clipboard.md`, `gearing-code-1to1.md`.

At the defrag tip, **seventeen** documents carried prose citations to the moved paths:

| Moved path | Documents citing it in prose, at `f1adf2d` |
|---|---|
| `docs/rust-nostd-crate-map.md` | 7 |
| `docs/gearing-code-1to1.md` | 6 |
| `docs/petersen-zech-clipboard.md` | 2 |
| `docs/pointer-emission-prompt.md` | 2 |

**Eleven are still broken.** The sweep caught some and stopped.

## 2. So the defect is not a missing step. It is a step with no completeness test

The convention already exists and was followed. What it lacked was any way to know when it was finished — so it caught what someone remembered and stopped where memory stopped.

| Remedy | What it costs |
|---|---|
| **A standing check** | Collides head-on with [D3/E6](verification-iter2-pass-5-plan.md): all eleven broken citations are backticked, and four checks were just taught to blank backticked spans on purpose. It would also flag *"Do not invent `docs/five-refs-clipboard.md`"* — a path that must never be resolved. **And it would run 627 times for every once it mattered** |
| **A convention** | Already tried. It is in the defrag's own commit subjects. It leaked 11 of 17 |
| **A move-time completeness list** | Runs only when a commit renames files. Lists every prose citation of every moved path, for a human to read and decide. **Gates nothing, so no collision. Flags the prohibition case — and a human reading a list is exactly the right place for that** |

**The third is what pass 4 proposes**, and the reason is the measurement in §1: the failure was never detection, it was knowing when to stop.

## 3. What pass 4 does

1. **Write the proposal** — what the list would contain, when it runs, who runs it, and what it deliberately does not do.
2. **Size it against the real event.** Apply it retroactively to `f1adf2d` and report whether it would have caught all seventeen.
3. **State the prohibition case explicitly** in the proposal, using pass 2's example, so nobody later "fixes" it.
4. **Repair nothing.** Ten of the eleven belong to clipboards, hologram and prompts.

**Pass 4 writes no code.** `CLAUDE.md` requires asking before a commit that adds code, and the remedy is a script in kit or coord. The proposal goes up with its cost; the build waits on a ruling.

## 4. What pass 4 must not do

- **Not build the tool.** §3.
- **Not add a standing check.** §2 measures why it is the wrong shape.
- **Not repair the eleven.** Other stations', and [pass 2](verification-iter3-pass-2-findings.md) already named each one's owner.
- **Not treat the defrag as a failure.** It rewrote every link and they are still correct 600 commits later. **It did the mechanical half perfectly and the human half without a checklist.**
- **Not fill `[GAP]`.**

## 5. Accept pass 4 when

The proposal names what the list contains, when it triggers, and who reads it; it is tested retroactively against `f1adf2d` with a stated hit rate; the prohibition case is written into it; and the cost is stated plainly enough that ruling it down is as easy as ruling it up.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Someone moved the shelves and then went round re-labelling what pointed at them. They got most of it. **What they never had was the list of everything that pointed.** Emission remains `[GAP]`.
