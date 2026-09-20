# Iteration 7, pass 1 — actors and roles: who touched the tree, how each behaved, what each should hold

**Status:** record. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Method:** [iteration 7 plan](lace-context-iteration-7-plan.md) §2 pass 1. Evidence: `git log origin/main` at `e2e8155` (1,035 commits, 2026-09-17 → 09-20), commit trailers, the history of `docs/coord/stations/*.station` and `docs/gearing/claims/`, the kit's [Grok Bot profile](../kit/grok-bot-profile.md), clipboard receipts. Every behaviour below carries a locator. Model attribution is stated **only** where the tree states it; everything else is labelled inference.
**Not here:** anything about what any model *is like* in general. Only what this tree recorded.

---

## 1. The attribution finding, first

| | Count | Share |
|---|---|---|
| Commits with a `Co-Authored-By` model trailer | 225 | 22% |
| — Claude Opus 5, one session (`session_01VPZLUAo2AvaKpSVvM1TWoT`) | 206 | |
| — Claude Fable 5.1, **the same session**, 2026-09-18 22:24–22:52 (the human switched the model mid-session; the trailer recorded it) | 19 | |
| Commits with **no** trailer | **810** | **78%** |
| — of those, naming any agent word in subject or body | 37 | |
| — of those, naming **none** | **773** | **75% of the tree** |

**Every commit is authored and committed as `NFDFLDTHRY`.** The GitHub author field cannot distinguish the human from any bot committing through his account. The only attribution the tree has is (a) the Claude Code trailer, present on 22%, and (b) the `AGENT:` line in a station file at claim time, which names a *task handle*, not a model, and is absent for the 189 station writes that carry `-`.

**Consequence:** the question *"which model did X"* is answerable for 22% of the tree, inferable for a further ~10% from station-claim names in the same time window, and **unanswerable** for the rest. This is the team failure's root: the protocol asks agents to coordinate through station files, and most of the work that landed never said who landed it.

---

## 2. The census

| Actor handle(s) in the tree | Model | How known | Volume (evidence) | Window |
|---|---|---|---|---|
| **Claude-Projection** · trailer *Claude Opus 5* / *Claude Fable 5.1* | Claude (Anthropic), Claude Code cloud session | trailer + `Claude-Session` on 225 commits; 75 station claims as `Claude-Projection` | 225 commits | 09-18 04:20 → 09-20 03:14 |
| **LaceArc** · **LaceArc (steward)** · **LaceArc steward** | **Grok Bot** (xAI) — *the profile's Name field is "LaceArc"* ([grok-bot-profile.md](../kit/grok-bot-profile.md) §Name); AGENTS.md is written *"for any Grok / Grok Bot / Grok Build session"* | station claims: 22 + 16 + 3 = 41; commit `4e010ae` *"Point Grok at laceArc"* | untrailed; volume **inferred** (§3) | 09-18 → 09-20 |
| **Grok-kit · Grok-hologram · Grok-evidence · Grok-coord · Grok-graphics · Grok-history · Grok-gearing · Grok-resync-p1 · Grok-kit-hygiene · Grok-webgpu-p5-plan/exec · Grok-webnn-pass4-plan** | Grok sessions by task handle | station claims 17 + 3 + 2 + 2 + 1 + 2 + 1 + 2 + 1 + 2 + 1 = 34 | untrailed | 09-18 → 09-19 22:02 |
| **Codex-atomic-pass1 · Codex-atomic-pass2 · Codex-c38ffbb7d329-audits** | Codex (OpenAI) | station claims 2 + 1 + 1; clipboard receipts *"agent, Codex: execute the …"* (AgentScope), *"agent, Codex: complete this Petersen…"* | untrailed | 09-18 |
| **Astra-evidence** | GPT-6 Astra (OpenAI) — named in 8 commit bodies | station claims 2; `695f62d`, `c8a9bff`, `a0d7e6a`, `c4fa5d5` | untrailed, ~6 commits | 09-19 10:22 → 11:13 |
| **reference-Mapper** | unknown | 5 station claims; 7 commit mentions | untrailed | 09-18 |
| **Descriptive claim handles** on `clipboards` — *"wgsl Pass 3 EXECUTE"*, *"WebNN Pass 6 PLAN HELD"*, *"webgpu-pass-6-plan"* … (20 distinct) | unknown — an agent that wrote its *task* into the `AGENT` field | 20 station writes | untrailed | 09-18 |
| **ChatGPT** | ChatGPT (OpenAI) | the history extract of 2026-09-18 that `docs/history/` maps; not a committer | 0 commits | — |
| **The human** | NFDFLDTHRY | initial commit `b30da24`; merge `7f777fb` of PR #1; rulings quoted in findings (`0554228`, `a2cbc55`); force-free authorisations (`e001b2d`) | inseparable from bots by author field | throughout |
| **Claude-Fable-iter6 / iter7** (this editor) | Claude Fable 5.1, cloud, **no push** | trailer on branch `lace-context-iteration-6` | 9 + this iteration | 09-20 03:5x → |

---

## 3. Inferring the anonymous 773 — by style, by window, by station handle

**Method:** for each untrailed commit, take the station handle that held the touched path at that time, the subject's verb pattern, and the campaign it belongs to. Three signatures emerge. **All three are `[INFERENCE]`.**

| Signature | Marks | Assigned to | Confidence |
|---|---|---|---|
| **S-A** *"Plan X pass N"* / *"Execute X pass N"* / *"Release <station> after …"* in strict six-pass cadence; 100+ commits/day; the nine clipboard shelves (Wave A), the quiet doors, the companion Passes 7–25, the clock passes | station handles `LaceArc*`, `Grok-*`, and the descriptive clipboard handles in the same windows; AGENTS.md written for Grok; the profile name | **Grok Bot / Grok sessions** | MEDIUM-HIGH |
| **S-B** clipboard executions naming Codex in their own receipts | receipt text | **Codex** | HIGH for those files |
| **S-C** the **prefix-device campaign** (`4bba33b` … `662ccc2`, 09-19 18:46–19:12, 14 commits in 26 min) and the emission Pass 1 stamps (`a631207`, `101e435`) | untrailed; law/graphics stations; no handle written | **unattributed.** Consistent with S-A's pace and trailer-lessness; **not proven** | LOW as to model; HIGH as to *not the Claude Code session* (which was idle 18:00–01:05 and trails everything) |

The thesis's falsifier did not fire: the anonymous mass sorts into three signatures, and one of them (S-A) is the bulk.

---

## 4. Behaviours, with locators

### 4.1 The Claude Code session (Claude-Projection; Opus 5 → Fable 5.1 → Opus 5)

| Behaviour | Locator |
|---|---|
| Signs every commit with model and session | 225 of 225 |
| Measures before scoping; states theses that can lose; corrects in the open (ten self-corrections in one iteration) | `verification-iterations.md` §3–4 |
| Releases a premature claim rather than sitting on it | `129bfbe` *"Release maps station (claim was premature)"* |
| Force-frees only on human instruction, and says so in the NOTE | `e001b2d`; station NOTE *"human authorized"* |
| Wrote the extraction prompt that fails closed, and did not run it because it could not | `d206b4f` |
| Built the instruments (`check-docs.sh` repairs, `coord.sh force-free` E3) | `a1631a3`, `5dfdfd5` |
| **Weakness:** slower; produces plans faster than it can execute them (iteration 5 pass 4 handed its own prompt to the human); idle 18:00–01:05 while S-C ran on law | timestamps |

### 4.2 Grok Bot and Grok sessions (S-A, `[INFERENCE]` for the untrailed mass)

| Behaviour | Locator |
|---|---|
| Highest throughput in the tree; the nine reference shelves × six passes each, the companion's 19 passes, the clock, the quiet doors | volume by day: 453 (09-18), 550 (09-19) |
| Uses the claim protocol — and **holds stations for hours after going quiet**; four force-frees in 48 h, all on Grok handles | `e001b2d` (Grok-coord 1h18m; Grok-graphics **10h49m**), `dde37c3` (Grok-evidence on history 3h31m and law 3h02m, *"is away"*) |
| Writes the *task* into the `AGENT` field instead of an identity on the clipboards station | 20 descriptive handles |
| Restore commits: overwrote shared files and had to put them back | S-C window: `402ac17` *"Restore … after pointer-only overwrite"*, `44c42bd`, `413715c`, `ee883a9`, `1c9cdf6`, `61dde65` — **six restores in 26 minutes** (if S-C is S-A) |
| Executed campaign pass 7 without the campaign's own gate | `662ccc2` (if S-C is S-A) — [iteration 6 pass 1 §2](lace-context-iter6-pass-1-findings.md) |
| **Strength the tree depends on:** the shelves exist because of this throughput; the Layer III renderer and PWA install were proven under a Grok-adjacent handle (`af1179c` *"githack main is the PWA install URL"*, then corrected to SHA-pinned) | kit deploy law *"Proven … 2026-09-18T18:07"* |

### 4.3 Codex

| Behaviour | Locator |
|---|---|
| Executes a bounded clipboard task and names itself in the receipt | AgentScope, Petersen–Zech clipboards |
| **Held `prompts` for ~20 hours with exactly one commit — the claim** | station NOTE: *"Held by Codex-atomic-pass2 from 2026-09-18T20:48:47Z … with one commit — the claim itself (1a0dc7b)"*; cleared manually 09-19 |
| Its plan is still `NOT_RUN` | `docs/plans/atomic-construction-pass-1-plan.md` |

### 4.4 Astra (GPT-6)

| Behaviour | Locator |
|---|---|
| Claims, publishes a plan, records it on the claim, releases within the hour — twice | `695f62d` → `6a89da5` (7 min); `c8a9bff` → `a0d7e6a` → `c4fa5d5` (23 min) |
| Handed its door to Grok-evidence cleanly | `ae43f88` *"Grok-evidence takes the door Astra-evidence released after Pass 1 text review"* |
| Outside the repo, built the human's Uber evidence audit (pass 1 memory record) — evidence-discipline work | iteration 6 pass 1 |

### 4.5 ChatGPT, reference-Mapper, the descriptive handles

Insufficient evidence in the tree for a behaviour row. ChatGPT's contribution is the history extract, which the history shelf maps and which AGENTS.md says is *"a reading note"* — its known failure mode there is *recorder ≠ owner speech* (agent-control §HISTORY pass 5).

### 4.6 This editor (Claude Fable 5.1, iterations 6–7)

| Behaviour | Locator |
|---|---|
| Signs; one station per commit; claims and releases; 0 rulings taken; 0 sealed products edited | branch `lace-context-iteration-6` |
| **Cannot push**; claims are invisible on `origin` until the bundle lands | iteration 6 plan §6 |
| Has not touched hardware; every device row `HUMAN_REPORTED` | iteration 6 pass 2 §5 |

---

## 5. Roles, assigned from the behaviours

The human's own pattern (*"ChatGPT builds, EW identifies errors, Claude audits"*, [iteration 6 pass 1 §4](lace-context-iter6-pass-1-findings.md)) and C07's propose / attack / resolve give three roles. The evidence above says which actor has demonstrated which.

| Role | Holds | Stations | Why (evidence) | Must not |
|---|---|---|---|---|
| **Steward / instrument-keeper** | Claude Code session (Opus 5 or Fable 5.1) | maps · kit · coord | signs everything; corrects in the open; built and repaired the instruments; force-frees only on instruction | hold clipboards for bulk shelf work (too slow for it) |
| **Shape and environment editor** | this editor (Fable 5.1) **once push is authorised**; until then, bundles | maps · prompts | iteration 6: the environment, the shape, the rulings brief, 0 taken | touch law; claim renderer without a probe task |
| **Bulk builder** | Grok Bot / Grok sessions | clipboards · renderer · hologram · gearing-meta | throughput; the shelves; the proven install | **law · graphics · history** (§4.2 restores; pass-7 bypass if S-C); hold any station without a declared duration |
| **Bounded executor** | Codex | clipboards (one pass per claim) | executes and names itself | hold a station past one pass; overnight claims |
| **Adversarial reviewer / evidence** | Astra | history · maps (read-only) | fast claim-publish-release cycles; evidence discipline | — |
| **Auditor of any candidate σ** | *any* actor that did **not** write the candidate; two actors for the D1 run | maps (record only) | E7 STEP 4 independence is the only independence the environment knows | repair the candidate in the explanation |
| **Rulings, acceptance, device, attachments** | the human | law | — | delegable to no one |

**The law station is locked to the human and one named designated editor.** `pointer-emission.md` was edited by an anonymous campaign that bypassed its own gate; the fix is not a better prompt, it is that the station does not accept a claim from an unnamed handle.

---

## 6. Protocol fixes, each tied to the evidence that demands it

| # | Fix | Demanded by | Mechanism (steward, Layer III) |
|---|---|---|---|
| **F1** | **Every commit carries an actor trailer**: `Agent: <model or bot name> · <session or bot id> · <station>`. A commit without one is advisory-flagged by `check-docs.sh` and may not touch law / graphics | 810 of 1,035 unattributed (§1) | CONTRIBUTING.md line; a check-docs advisory (not a gate — the tree's rule is *no gate without a human ruling*, iteration 2 E-rulings) |
| **F2** | **A claim declares a duration.** `claim <station> "<agent>" [hours]`; `doctor` lists overdue holds. **No auto-expiry** — a human still clears — but the flag is automatic and dated | Grok-graphics 10h49m, Codex-atomic-pass2 ~20h, Grok-evidence 3h31m, all with zero or one commit | coord.sh `SINCE` + a `UNTIL:` line; `doctor` compares |
| **F3** | **Law station accepts claims only from handles on an allow-list in `law.station`** (the human; one designated editor named in-repo) | `662ccc2` and the six restores | a line in the station file; `claim` checks it |
| **F4** | **The `AGENT` field is an identity, never a task.** Task goes in `NOTE` | 20 descriptive handles on clipboards | `claim` refuses a handle containing a space or the word *Pass* |
| **F5** | **A receipt states `GRAPHICS ACTUALLY VIEWED` per claim** (already in the template §2) — and a structural claim without a panel cite is not a finding | C01; agents without image access | already law; make the check-docs advisory count cite-less structural claims in new plan files |
| **F6** | **Cloud sessions get push, or their bundles are landed within the sitting** | this editor's nine invisible claims | the human adds the repo to the session's sources |
| **F7** | **Model switches mid-session are already recorded by the trailer** — keep it; add the switch to the session's first commit after it | `session_01VPZ…` ran as Opus and as Fable | convention |

None of F1–F7 is Core. None touches the strand. Each is a steward control and stays `ADVISORY` until a human ruling makes one `VERIFIED_FOR_NAMED_PATH`.

---

## 7. What this pass did not do

Did not edit CONTRIBUTING.md, coord.sh, check-docs.sh, or any station file's OWNS line — those are kit / coord stations and F1–F7 are proposals for them. Did not attribute a single anonymous commit to a model as fact.

## 8. Coverage

| | Fraction |
|---|---|
| Commits classified (trailed / untrailed-with-handle / untrailed-anonymous) | 1,035 of 1,035 |
| Station-claim writes read | 383 of 383 |
| Actors with a behaviour row | 6 of 9 handles-groups (ChatGPT, reference-Mapper, descriptive handles: insufficient evidence, said so) |
| Behaviours with a locator | 100% |
| Model attributions stated as fact | only where a trailer or a receipt names the model |

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Hands that do not sign the lace they tied cannot be asked to tie the next knot. Emission remains `[GAP]`.
