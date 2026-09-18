# Restructure plan — coherence of the whole tree

**Status:** `[PROPOSAL]`. Plan only. No move, rename or rewrite is made by this file. Each phase runs on the human's "go phase N", one station per commit, in the manner of [the defrag plan](../defrag-plan.md), which this supersedes as the filing plan of record.
**Station:** maps. **Reads:** every tracked file's path, station, index coverage, inbound and outbound links, status line and size; the four copies of the law; the coherence audit log; the defrag plan; every shelf README; the commit stream of the last eight hours. **Writes:** this file and one README row.
**Emission:** remains `[GAP]`. No `src/`. Nothing here touches Graphics A–D or the manifest.

Measured at `955cecc` (survey) and re-checked at the tip this file lands on. Numbers below are from the survey, reproducible with the commands in §6.

---

## 0. Verdict

**The folders are right. The indexes, the copies and the names are not.**

Defrag passes 1–6 met their own success test: a stranger can name Hands from Shadow from the folder list. What that filing could not fix, and what has grown since, is a different kind of incoherence — the same text in four places with three different lengths; one identifier meaning two things depending on which document you are in; shelves whose doors name none of what is on them; one file per executed pass, none linked, fourteen in eight hours; and a coordination protocol whose bookkeeping is a third of all commits on `main`.

A plan that shuffled folders again would be restructuring theatre. This plan moves almost nothing. It changes what a shelf README is, what a copy of the law must say about itself, how identifiers are spelled, where a pass goes when it is done, and how much of the coordination protocol is written into history.

---

## 1. What is incoherent — measured

| # | Finding | Evidence at `955cecc` |
|---|---|---|
| **R1** | **The law exists in four copies and they differ.** The IMPLEMENTATION LAW block in `staking-the-workspace.md` (the human's original stake), `law-why-these-documents.md` (the live law), `kit/agent-control.md` and `kit/grok-bot-profile.md` (transport copies) has three different sizes. STILL FORBIDDEN lists 11, 28, 8 and 26 items respectively. `agent-control` is missing three lines the stake has. `grok-bot-profile` differs from the stake on 17 lines. The READING ORDER block has three distinct hashes across its four copies. No copy says which one it is. | §6 check 1. The atomic map already noted the "older transport copy … omits the later blocks." |
| **R2** | **Identifier families collide.** `A5` is Graphic A panel 5 (the star) *and* train-A tooth 5 in `contracts-trainA.js`. `C1` is Graphic C panel 1, Coffee Cup stage 1, and crate-map Page C. `P1` is atomic primitive *occurrence at a position* in `atomic-primitives-map.md` and manifest Piece 1 *continuous strand* in the hologram IR golden — both under `docs/plans/`. Live families: graphic panels A1–A13/B1–B12/C1–C12/D1–D6; manifest Pieces 1–15; atomic P0–P4, K1–K6, G1–G7; audit stations A1–A14; downstream F01–F12; reason-model RM1–RM10; manifest Q1–Q11; gear keys A1–A9/B1–B5/C1–C10/t0–t6/E1–E2/R1/X1–X6; HCC H1–H11; Cup C1–C5; my review prompt B1–B9. A citation "see A5" is now ambiguous between the source of record and a Shadow gear tooth. | `grep -c` of each family across the tree; gear keys are baked into JS and HTML and the 1:1 audit forbids renaming them. |
| **R3** | **Four documents are titled "Systems Manifest".** The Hands manifest and three gear manifests (HCC-A 793 lines, Cup 357, Water 279). Subordinate by content — each says "Hands court: `docs/systems-manifest.md`" — coequal by title. | `git grep -l '^# Systems Manifest'` → 4. |
| **R4** | **"A pass" follows four conventions.** History: `history-recovered-pass-N-*.md` products beside a `pass-6-plan` ticket. Clock: one `<gear>-pass-N-plan.md` per executed pass, kept beside its product — 14 files, every one an island and a dead end, all marked EXECUTED. Plans: `atomic-construction-pass-1-plan.md`, NOT_RUN. Audit: passes as ticks in one append-only log. Only the last one scales. | Link graph §6 check 3: 26 islands, 19 of them files (14 are clock pass plans), 7 are shelf READMEs reached only by directory link. |
| **R5** | **Shelf doors don't name what is on the shelf.** `history/README.md` names 0 of 10 files. `prompts/README.md` names 0 of 16. `clock/README.md` names 14 of 34 and links **none** — not `hcc-a-projection.html`, not any pass plan. (26 at survey; the campaign adds ~16/hour.) `gearing/README.md` omits `RESYNC.md`, `resync.sh`, `claims/`. `hologram/README.md` omits the seven `primitive-*.png` sheets. `plans/README.md` names every file but as bare text, not links, so its files register as orphans. Six of nine doors have this defect; see §4.1. `docs/` root — the court, 11 files — has no README at all; nor do `.claude/`, `coord/stations/`, `gearing/claims/`, `plans/fixtures/`, `plans/tools/`. | §6 check 2. |
| **R6** | **Shelf descriptions have drifted from shelf contents.** Root README: "Plans — Rust `[PLAN]` tree + birth cards"; the shelf holds hologram IR schema and binding, two golden fixtures, a Python validator, an atomic-construction plan, the projection brief and a second reading. "Shadow view — `shadow-clock-gearing.html`, gearing, hologram"; there are now three HTML viewers (`docs/shadow-clock-gearing.html`, `docs/hologram/nostd-pipeline.html`, `docs/clock/hcc-a-projection.html`) and the `renderer` station owns exactly one of them. | `git ls-files '*.html'` + `which` on each. |
| **R7** | **Ten tracked paths are unowned — fail closed for every agent.** All eight `docs/gearing/claims/*.claim` (the files `claim.sh` itself writes), `.gitignore`, `LICENSE`. | `which` over `git ls-files`: 151 owned, 10 UNOWNED. |
| **R8** | **Coordination bookkeeping is 31% of `main`'s history.** 44 of 138 commits in eight hours are claim, release or refresh. Each is a push that races every other agent's push. `CLAIMS.md` warned "do not maintain a shared STATUS.md that everyone rewrites — that reintroduces grind"; the umbrella reintroduced it at station granularity. One station (`prompts`) has been held for over two hours with no commit to its directory. | `git log --since='8 hours ago'`, subject prefixes. |
| **R9** | **The root README is a second index of every file**, 60 rows, touched by 18 commits in eight hours, owned by the `law` station marked "rare; steward". Every new file anywhere needs a law claim. The shelf READMEs exist to be that index and mostly aren't (R5). | Root README table; law-station claims today: three, all for README rows. |
| **R10** | **`kit/` mixes live controls with dated artefacts.** `READ_ME_FIRST.md` opens "STALE pin: `4fe984bb`"; `downstream-audit.md` is a dated snapshot re-checked by audit station A14. The shelf is described as "portable steward controls". | Shelf README; file headers. |
| **R11** | **The standing orders cannot be link-checked.** `AGENTS.md` names fifteen repository paths in backticks and links none. It is a dead end in the link graph. So are the manifest, both law files, the draft and the references — correct for source texts; not for the file every agent is told to load first. | §6 check 3, outbound 0. |
| **R12** | **The law names one language and the tree uses five.** Rust `no_std` is the only Core language. The tree has Bash hooks, Bash coord scripts, JavaScript contract data, HTML viewers and a Python validator. The hologram IR plan says host tools may use `std`; nothing in law says which languages steward tooling may use. Downstream F11 is open on exactly this. | `docs/plans/tools/hologram-ir-validate.py`; F11 in `kit/downstream-audit.md`. |

Nothing above is a Hands finding. The four graphics, the manifest and the draft are not in question. Every item is filing, naming or copying.

---

## 2. Principles the target follows

1. **Authority reads as a tree from the folder list** — Hands → readings of Hands → law → controls → Shadow → plans → tickets → history. Kept from the defrag; it already holds.
2. **One door per shelf, and the door names everything on the shelf, as links.** The root README names shelves, not files.
3. **One live copy of any law text.** Every other copy states what it is a copy of and at which revision, and the hook checks it.
4. **One namespace register.** The source's identifiers win. Every newer family carries a prefix. Nothing baked into JS or HTML is renamed.
5. **Tickets, products, receipts and logs are different kinds.** A ticket lives in `prompts/` while it runs. A product lives on its shelf. When a ticket is executed it becomes a receipt row in its product or a tick in its shelf's log — never a file of its own.
6. **Coordination state is not content.** As little of it as possible is written into `main`'s history.
7. **Hands bytes never move. `git mv` only. No content rewrite in a filing commit.** Inherited whole from the defrag plan.

---

## 3. Target layout

Almost every path stays. What changes at each node is marked.

```
/
├── README.md                     shelf table + Hands rows ONLY; per-file table removed   [R9, law]
├── AGENTS.md                     paths become links                                       [R11, law]
├── CLAUDE.md  CONTRIBUTING.md    unchanged
├── LICENSE  .gitignore           owned by law                                             [R7, coord]
└── .claude/hooks/                two new checks: law-copy parity, shelf-door coverage     [R1 R5, kit]

docs/
├── README.md                     NEW — the court's door: one line per root file            [R5, law]
├── graphics/                     HANDS. Unchanged. Never moves.
├── systems-manifest.md           the one document with that title                         [R3]
├── graphics-close-reading.md · pointer-emission.md (DRAFT) · atomic-primitives-map.md
├── reason-model-map.md · references.md · namespace-register.md (NEW)                      [R2, maps]
├── law-why-these-documents.md    header line: LIVE LAW                                    [R1, law]
├── staking-the-workspace.md      header line: ORIGINAL STAKE, frozen at <sha>            [R1, law]
├── coherence-audit-log.md · defrag-plan.md    unchanged; defrag gains "superseded by" line
│
├── kit/                          LIVE CONTROLS only                                        [R10]
│   ├── agent-control.md          header: TRANSPORT COPY of law-why@<sha>; block regenerated  [R1, kit]
│   ├── grok-bot-profile.md       same                                                      [R1, kit]
│   ├── agent-task-template.md · README.md
│   └── (READ_ME_FIRST.md, downstream-audit.md → history/  — optional phase 6)
├── coord/                        + stations/README.md; claims/** and *.html mapped         [R7 R6, coord]
├── gearing/                      README names RESYNC, resync.sh, claims/; claims/README    [R5 R7]
├── hologram/                     README names the primitive sheets                         [R5]
├── clock/                        three gear manifests retitled "Gear manifest — X (Shadow)"  [R3, hologram]
│   ├── README.md                 names all 26 incl. hcc-a-projection.html                  [R5]
│   └── passes/                   the 14 executed pass plans, git mv, + index — AFTER the
│                                 current Cup/Water/HCC campaign ends                       [R4, hologram]
├── clipboards/                   unchanged (door already complete)
├── history/                      README names all 10                                       [R5, history]
├── prompts/                      README names all 16; running pass tickets live here       [R5 R4, prompts]
└── plans/                        README rows become links; fixtures/ and tools/ get doors  [R5, maps]
    ├── restructure-plan.md       this file
    └── …
```

**Considered and not recommended:** a by-layer reshelving (`docs/hands/`, `docs/law/`, `docs/shadow/`, `docs/ops/`). It would make the folder list perfectly legible and cost a link blast across every station — `law-why` has 14 inbound links, the manifest 12, staking 11, plus `CLAUDE.md`, githack URLs and every agent prompt that names `docs/law-why-these-documents.md`. The defrag plan's "root is the court" ruling stands. If the human wants it anyway, it is one more phase after everything below and its cost is stated here.

---

## 4. Phases

Each phase: one station, one commit, "do not run until go phase N". Phase 1 is deliberately parallel — six stations, six agents, no shared file.

| Phase | Station | Product | Go-gate |
|---|---|---|---|
| **0** ✅ | coord | **DONE** `5799afc`, released `92d3e02`. RULES: `docs/gearing/claims/<shaft>.claim` → `gear:<shaft>`; `.gitignore` `LICENSE` `docs/README.md` `docs/namespace-register.md` → law/maps; `docs/**/*.html` → renderer (all three viewers). `stations/README.md`. **Zero unowned paths.** | done |
| **1** | see **§4.1** | Move the index out of the root README into the shelf doors, so phase 2 can delete the root table without orphaning 23 files. Nine sub-phases, one prerequisite. | go phase 1 |
| **2** ✅ | law + coord + maps | **DONE** — see §4.4. `docs/README.md` (court door). Root README loses the per-file table, keeps the shelf table and Hands rows, and its shelf descriptions are corrected (R6). `AGENTS.md` paths → links. `staking` and `law-why` gain their one-line self-identification (R1). `defrag-plan.md` gains "superseded by". | done |
| **3** ✅ | kit | **DONE** — see §4.6. `agent-control.md` and `grok-bot-profile.md`: IMPLEMENTATION LAW, READING ORDER and STILL FORBIDDEN blocks regenerated byte-for-byte from `law-why`, plus a header line `TRANSPORT COPY of law-why@<sha>`. Hook check 7: every transport copy's block equals the live block, or the copy carries `STALE` in its header. Hook check 8: every file in a shelf is named as a link in that shelf's README. | done |
| **4** | maps | `docs/namespace-register.md`: one table, every identifier family, its owner, its prefix. Source panels keep bare `A5`. Atomic primitives become `AP0–AP4`; manifest pieces are written `Piece 1` / `P.1`, never `P1`; audit stations `S-A1`; gear teeth keep their baked keys but are always written with the shaft, `trainA:A5`. Each owning station applies the spelling when it next touches its file; Pass 1 (Codex) adopts `AP` before it runs. | go phase 4 |
| **5** | hologram | Three gear manifests retitled `Gear manifest — HCC-A (Shadow)` etc. (title line only; filenames stay). `clock/passes/` + index for the executed pass plans (24 and counting), `git mv` only. **Absorbs sub-phase 1i:** the clock door is written here, once, against the folded shape. Forward rule in `clock/README.md`: no new one-file-per-pass. | go phase 5 — **after the Cup/Water/HCC campaign stops** (passes landed within the last hour) |
| **6** *(optional)* | history + law | `READ_ME_FIRST.md` and `downstream-audit.md` → `history/` as dated artefacts; `CLAUDE.md` and `CONTRIBUTING.md` links follow. `kit/` becomes live controls only. | go phase 6 — costs a CLAUDE.md edit |
| **7** | coord — **human decision** | Claim and release stop being their own commits: `claim` writes the station file locally; the work commit carries HELD; `release` rides the next work commit or a `doctor` sweep. `doctor --auto-clear` also frees a station whose `SINCE` is older than N hours with no commit to its paths. Target: claim/release share of commits from 31% to under 5%. | go phase 7 — changes the protocol every agent runs |
| **8** | law — **human decision** | One sentence: *Core is Rust `no_std` only. Steward tooling — hooks, coord scripts, validators, Layer III viewers — may be any language, is never a Core dependency, and never lives under `src/`.* Closes downstream F11 and the question `tools/hologram-ir-validate.py` raises. | go phase 8 |

### 4.1 Phase 1 — expanded, after measurement

The table above described phase 1 as "shelf doors name their files." Measuring
it changed three things: what the defect is, what the success test is, and what
phase 1 is actually *for*.

**What phase 1 is for.** The root README links 10 of 10 history files, 15 of 16
prompts, 5 of 10 clipboards. The shelf doors link 0, 0 and 1. With two
exceptions — `hologram/` at 16 of 23 and `graphics/` at 4 of 4 — **the root
README is the repository's only index and the doors are decorative.** That is
R9 measured. Phase 2 deletes the root table; **23 files would become orphans
the moment it does.** Phase 1 is the transfer that makes phase 2 safe. It is
not tidying.

**What the defect is.** Not missing names — missing *links*. A bare filename in
a door does not make a file reachable and does not clear the orphan check
(verified: linked `water-pass-6-plan.md` cleared; bare-named `water-pass-5-plan.md`
did not). Six of nine doors name files they do not link:
clock 14 named / 0 linked, gearing 10/2, plans 8/1, clipboards 6/1, kit 5/0,
coord 1/0.

**What the success test is.** Broken, and fixed first. The orphan check compares
**basenames**, so any link to any `README.md` exempts every `README.md`, and two
files sharing a basename in different directories are conflated (demonstrated
with a twin fixture). It reports 26; a path-resolving count reports **56**,
including **7 shelf doors that are themselves unreachable** because the root
README links `docs/clock/` rather than `docs/clock/README.md`.

| Sub-phase | Station | Work | State |
|---|---|---|---|
| **1-pre** | kit | Orphan check resolves links to paths, not basenames; stop exempting every `README.md`; keep only the true root entry points. | ✅ `e0557da` — reported 31, reports **62**, matching the independent count |
| **1a** | history | 10 files as links; extraction and sit-note separated. | ✅ `799ea88` — 3 root-only cleared |
| **1b** | prompts | 16 files as links, + *a running ticket lives here; an executed one becomes a receipt or a log tick, never a file*. | **still blocked**: `prompts` HELD by `Codex-atomic-pass2` since 20:48Z, 0 commits to `docs/prompts/` in 2h30m. Carries 9 of the 17 remaining root-only files — the largest phase-2 blocker. Needs the human to clear a stale claim |
| **1c** | hologram | — | ✅ **no work needed.** The door already points at the sheets through [`visual-primitives.md`](../hologram/visual-primitives.md), which links each one. It was never an orphan source; the survey's "missing 7" counted names, not reachability |
| **1d** | gearing-meta | `RESYNC.md`, `resync.sh` added; the 8 `contracts-*.js` become links; new `claims/README.md`. | ✅ `fcc8c1e` — **10 orphans cleared** |
| **1e** | maps | `plans/README.md` rows → links; new `fixtures/` and `tools/` doors. The tools door records F7: the validator checks shape, not the plan. | ✅ `0db2536` |
| **1f** | coord | `stations/README.md` lists the 10 station files as links, each with what it owns. | ✅ `19032a1` — **10 orphans cleared**; see the ordering note below |
| **1g** | kit | 5 files as links, with a status column: two are transport copies, one is a dated snapshot. | ✅ `3e8e27e` |
| **1h** | clipboards | **Deferred.** 10 files and growing — 4 Kauffman pass plans landed during this measurement, 8 commits in 90 minutes. A flat door drifts by the hour. | to phase 5's shape |
| **1i** | clock | **Deferred into phase 5.** 34 files, 27 orphans, **16 added per hour** while the campaign runs. Phase 5 moves the pass plans to `clock/passes/`; a door written now is 34 rows phase 5 rewrites. | merged into phase 5 |

**Order — corrected by running it.** `1-pre` first; that part held. The claim
that the rest run "in parallel, no shared file, no shared line" was **wrong**.
Distinct stations do not make independent commits: `stations/README.md` (coord)
links `claims/README.md` (gearing-meta), so **1d must precede 1f**. Run the
other way round, as it was, main carried a dead link for two commits
(`19032a1`, `83795ef`; green again at `fcc8c1e`).

**The rule that replaces it:** a sub-phase that links a file another sub-phase
creates runs *after* it, whatever station owns it. Where both files are in one
station, write them in one commit — 1e did that for `plans/`, `fixtures/` and
`tools/`. Cross-shelf links are an ordering edge; only genuinely unlinked
shelves are parallel.

**Gate for phase 2.** Phase 2's law commit removes exactly the root-README rows
whose shelf door now links that file, and no others. Rows for `clock/` and
`clipboards/` stay until phase 5. This replaces "after 1a–1f": the root table
shrinks shelf by shelf as each door takes over, and never leaves a gap.

**Accept phase 1** when: the path-resolving check runs; root-only drops from 23
to 4 after 1a–1g + 1b (the remaining 4 are `docs/README.md` and root entry
points, which are phase 2's own work); no door names a file it does not link;
and `docs/clock/` plus `docs/clipboards/` are the only shelves still indexed
from the root.

### 4.2 Phase 1 — outcome, measured

Ran 2026-09-18. Six commits, six stations, all gates passing at commit time
except the one noted above.

| Measure | Before | After |
|---|---|---|
| Orphans, path-resolved | 62 | **44** |
| Files whose only inbound link is the root README | 23 | **17** |
| Shelves whose door links every file it holds | 2 of 14 | **9 of 14** |

Door coverage now: `history/` 10/10 · `gearing/` 12/12 · `gearing/claims/` 8/8 ·
`coord/stations/` 10/10 · `plans/` 8/8 · `plans/fixtures/` 2/2 · `plans/tools/`
1/1 · `kit/` 5/5 · `graphics/` 4/4. Not covered: `prompts/` 0/16 (blocked),
`clock/` 0/36 and `clipboards/` 1/15 (deferred), `hologram/` 16/23 (the seven
reach through the catalog), `coord/` 0/1.

**The orphan count did not fall as far as the work suggests, and that is the
point.** 1a and 1g cleared nothing: those files were already reachable — *from
the root README*. Phase 1 was never a clearing exercise; it was the transfer
that lets phase 2 delete the root table. The measure that moved is root-only,
23 → 17. What is left there is 9 prompts (1b), 2 clipboards and 2 clock
(deferred), and 4 root/`docs/` files that are phase 2's own work.

`docs/clock/` grew from 34 files to 36 during phase 1, and still holds 29 of the
44 orphans. Deferring it was right; phase 5 has not got smaller.

**Phase 2 is ready for every shelf except `prompts/`, `clock/` and
`clipboards/`.** Under the per-shelf gate it can start now and leave those three
sets of rows in place.

**Not in phase 1.** Making the 7 doors reachable — that needs the root README
to link `docs/<shelf>/README.md` instead of `docs/<shelf>/`, which is phase 2,
law station. Until then those doors stay orphans and the fixed check will say so.


### 4.3 Phase 2 — expanded, after measurement

Measured at `028acf2`. Phase 2 was one line in the table: *root README loses
the per-file table*. It cannot, yet, and the reason is worth stating before
anyone tries.

**Only 17 of the root README's 63 per-file rows can go.** Under the per-shelf
gate — a row goes only when that file's own shelf door links it — the safe set
is exactly: the 10 history files, 4 plans files, 2 gearing files, 1 kit file.
The other **46 stay**, because their shelf door does not yet link them:
16 prompts rows (1b blocked), clipboards and clock rows (deferred to phase 5),
and every `docs/` root file, which has no door at all. Phase 2 shrinks the
table by a quarter. Finishing it is phase 5's and 1b's work, not phase 2's.

**Phase 0's guarantee has already regressed.** Seven tracked files are unowned
again — `docs/systems-manifest-ascii.md` and its six pass plans, written in the
15 minutes before this measurement and still landing. The `RULES` table lists
`docs/systems-manifest.md` exactly, so the derivative matched nothing. **Any new
file at the `docs/` root falls through**, and the agent writing it cannot gate
its own path. That is a hole in phase 0, not a mistake by that agent.

**The court root is becoming a shelf.** It now holds 18 files: eight Hands
prose, two ops, one renderer HTML, and seven from a live ASCII campaign — six
of them one-file-per-pass, none linked, none owned. That is R4 at the court,
the same pattern deferred in `docs/clock/`. Naming them in a door is a
stopgap; the durable shape is phase 5's.

| Sub-phase | Station | Work | Notes |
|---|---|---|---|
| **2-pre** | coord | Add a `docs/*.md` catch-all to `RULES` so the court root cannot go unowned again. | Verified non-disruptive: a glob scores 3005 against exact 10000 and `docs/plans/**` at 5011, so it fires only where nothing else matches — exactly the 7 files above and nothing else. **Which station it points at is a policy choice**: `maps` matches the derivative-map artifacts already there (`reason-model-map`, `atomic-primitives-map`, `coherence-audit-log`); `law` would make every new court file need a steward claim. Proposed: `maps`. |
| **2a** | law | `docs/README.md`, the court door: 18 root files, what each is, which are Hands and which are not. Root README in the **same commit**: drop the 17 safe rows, link the shelf table at `docs/<shelf>/README.md` instead of `docs/<shelf>/`, correct the shelf descriptions (R6), remove the duplicated `system-mathematical-model.md` row. | One commit because the root README links the court door; split, main carries a dead link — the 1f lesson. Clears **13 orphans**: the 6 ASCII files and the 7 shelf doors that are unreachable only because the shelf table points at directories. |
| **2b** | law | `AGENTS.md`: 20 backtick paths become links. One is wrong — `data-structure-1d-array.png` is written bare and resolves nowhere. | AGENTS.md is a dead end in the link graph and the first file every agent is told to load. |
| **2c** | law | `staking-the-workspace.md` gains one line: **ORIGINAL STAKE**, frozen. `law-why-these-documents.md` gains one line: **LIVE LAW**. | Part of R1. The rest of R1 — regenerating the transport copies — is phase 3. |
| **2d** | maps | `defrag-plan.md` gains a "superseded by" line. | **Not law**: `defrag-plan.md` is a maps path. Phase 2 is not a single-station phase. |

**Raised in 2c, not fixed there.** `law-why-these-documents.md` line 10 reads
*"Implementation remains forbidden until `docs/pointer-emission.md` exists."*
Its own IMPLEMENTATION LAW block, 290 lines below, reads *"When the human has
accepted docs/pointer-emission.md, code may appear."* Existence is not
acceptance — the whole repository turns on that distinction, and AGENTS.md was
already corrected for the same drift by the coherence audit's A6 tick. This is
**human-authored law contradicting itself**, so no agent should quietly edit
either sentence. Phase 2 reports it; the human decides the wording.

**Order.** `2-pre` first — it restores the protocol for the campaign now
running. Then `2a`; `2b`, `2c`, `2d` in any order after it.

**Accept phase 2** when: no tracked path is unowned; `docs/README.md` exists and
names every root file; the shelf table links doors, not directories; orphans
fall from 44 to about 31; the root README holds 46 rows and each survivor's
shelf is named in §4.1 as blocked or deferred.

### 4.4 Phase 2 — outcome, measured

Ran 2026-09-18. Five commits across three stations: `95f42be` 2-pre (coord),
`94070ad` 2a (law), `d46632f` 2b (law), `e21cf39` 2c (law), `5db6c83` 2d (maps).
Every gate passed; checks green at each step; main never went red.

| Measure | Before | After |
|---|---|---|
| Unowned tracked paths | 7 | **0** |
| Orphans, path-resolved | 44 | **35** |
| Root README per-file rows | 63 | **45** |
| Shelf rows pointing at a door, not a directory | 0 of 9 | **9 of 9** |
| Files whose only inbound link is the root README | 17 | **15** |

**What the remaining 35 orphans are**, and this is the useful part: 31 are
`docs/clock/`, and **four are infrastructure** — `.claude/hooks/check-docs.sh`,
`.claude/hooks/session-start.sh`, `.claude/settings.json`, `.gitignore`. Every
shelf door, every ASCII pass plan and every prompt is now reachable. Apart from
the deferred clock shelf, the repository's documents are all linked; what is
left is a `.claude/` door (kit, clears 3) and one mention of `.gitignore`
(law, clears 1). Neither is worth its own phase.

**Dropping 17 rows did not move root-only much (17 → 15), and that is
arithmetic, not failure.** The per-shelf gate only releases a row when the file
has another link, so by construction a dropped row was never a file's only
link. Root-only falls when a *door* takes over a file the root was carrying
alone — which is 1b's 9 prompts and phase 5's 4. The two 2b picked up were
paths AGENTS.md now links.

**Phase 2 was not a single-station phase.** `defrag-plan.md` is maps and the
catch-all is coord. The table's one-station-per-phase shorthand is wrong
wherever a phase's files happen to span shelves; check `which` before assuming.

**Left for the human, unchanged by any agent.** `law-why-these-documents.md`
line 10 forbids implementation until `pointer-emission.md` *exists*; its own
IMPLEMENTATION LAW block permits code when the human has *accepted* it.
Existence is not acceptance. The file now carries a note naming the
contradiction and editing neither sentence.

### 4.5 Phase 3 — expanded, after measurement

Measured at `892fdec`. The table said *regenerate the transport copies and add
two hook checks*. Measuring found one thing serious enough to change the
ordering, and one that is not an agent's to touch.

**`docs/kit/agent-control.md` is missing two whole sections of the law and 20
of its 28 prohibitions — while stating on line 174 that the block is "the
author's law, preserved verbatim."** It carries 166 lines where the live law
carries 396. Absent: *GEARS REQUIRED TO OPERATE UPON THE LACE*, *OBJECTS DO NOT
HAVE RELATIONSHIPS*, and prohibitions including `revived walkers /
lace_walk.py`, `mutable continuation slot`, `substitution rewrite of occurrence
history`, `codec VAL / lowercase intern as arrival`, `WELD-1 / scoped-UNK as
Core`. This is the file handed to an agent that **cannot read the repository**.
It is a portable prompt that under-states the law and says it does not.

`docs/kit/grok-bot-profile.md` is nearly current: 391 lines against 396, seven
differing lines, two prohibitions short.

**Nothing in either copy is absent from the live law** — checked item by item.
Regeneration therefore loses no text, which is the precondition for doing it
mechanically.

`docs/staking-the-workspace.md` is a different shape: its law text is **not
fenced** at all. It is the frozen ORIGINAL STAKE and is not regenerated or
checked against anything.

| Sub-phase | Station | Work |
|---|---|---|
| **3a** | kit | Replace `agent-control.md`'s law block with the live law's fenced block, byte for byte. Same for `grok-bot-profile.md`. Each gains a header line naming the source revision: `TRANSPORT COPY of law-why@<sha>`. |
| **3b** | kit | **Hook check 7 — law-copy parity.** For every file carrying a fenced block containing `STILL FORBIDDEN`, compare it to the live law's. Report drift unless the file's header says `STALE`. Skips `staking-the-workspace.md` (unfenced, frozen) and the live law itself. |
| **3c** | kit | **Hook check 8 — door coverage.** Per shelf: how many of its files its own door links. Advisory. Today: `clipboards/` 1/17, `clock/` 0/39, `coord/` 0/1, `hologram/` 16/23, `prompts/` 0/16; `.claude/` and `.claude/hooks/` have no door at all. |
| **3d** | kit + law | `.claude/README.md` (kit) — clears 3 orphans. One mention of `.gitignore` in the root README (law) — clears 1. Orphans 35 → 31. |

**Why 3c is worth a check and not just a habit.** It is the phase-2 gate,
automated: a root-README row is safe to drop exactly when that file's own shelf
door links it. It also catches what the orphan check cannot — `hologram/` is
16/23 because the seven primitive sheets are linked by `visual-primitives.md`
and not by the door. No orphan, still an incomplete door. The two checks
measure different things and both are worth having.

**The judgment call in 3a, for the human.** The mismatch is the defect; there
are two honest repairs. **Restore the text** — the missing items are
substantive prohibitions, not formatting, and the claim on line 174 becomes
true. Cost: a portable prompt roughly doubles, which matters if it was
abridged deliberately for a paste budget. **Or correct the claim** — leave 166
lines and say *abridged; the live law governs*. Recommended: restore, because
an agent that cannot read the repository has only this text, and what is
missing from it is exactly the walker-revival list AGENTS.md warns about.

**Raised in 3b, not fixed there.** The live law lists `manufactured cat/cat-1
notation` **twice** in STILL FORBIDDEN. Harmless, and human-authored; the
parity check would propagate it to both copies verbatim, which is correct
behaviour for a copy. Noted so it is not mistaken later for a regeneration bug.

**Order.** `3a` before `3b` — adding a check that immediately reports known
drift is noise. `3c` and `3d` are independent of both.

**Accept phase 3** when: both transport copies are byte-identical to the live
law's block and say which revision they came from; check 7 is silent; check 8
reports the six incomplete shelves without failing the gate; orphans are 31.

### 4.6 Phase 3 — outcome, measured

Ran 2026-09-18. Four commits, one station: `33b1b2a` 3a, `fb4fd10` 3b+3c,
`3f57694` 3d. All gates passed; main never went red.

| Measure | Before | After |
|---|---|---|
| `agent-control.md` law block | 166 lines, 8 of 28 prohibitions | **396 lines, 28 of 28** |
| `grok-bot-profile.md` law block | 391 lines, 26 of 28 | **396 lines, 28 of 28** |
| Law copies byte-identical to live | 0 of 2 | **2 of 2** |
| Orphans | 36 | **34** |
| Advisory checks in the hook | 2 | **4** |

**The restoration was the point.** Both copies now match the live law's fenced
block exactly and declare their source: *transport copy of `law-why@e21cf39`,
live law wins on disagreement*. Nothing was lost — every item in either copy
was verified present in the live law before regenerating.

**Check 7 found a bug in itself before it found one anywhere else.** The first
version called two byte-identical files drifted: capturing a block with
`$(...)` strips trailing newlines, this block ends on a blank line, so a
captured copy could never equal an uncaptured live sum. A check that cries wolf
on correct files is worse than no check, because it teaches people to ignore
it. Both sides now go through a pipe, and it is tested four ways: identical
silent, one-word corruption fires, a `STALE` header silences, restoring goes
quiet.

**Check 8 immediately justified itself.** `hologram/` is 16/23 — no orphans,
because `visual-primitives.md` links the seven primitive sheets, but its own
door does not. The orphan check cannot see that and never will; they measure
different things. Check 8 is also this plan's phase-2 gate automated: a
root-README row is safe to drop exactly when that file's own door links it.

Door coverage at close: `clipboards/` 1/18 · `clock/` **0/41** · `coord/` 0/1 ·
`hologram/` 16/23 · `prompts/` 0/16. Everything else complete.

**Check 5 was tightened, prompted by this plan's own prose.** *"X is missing
from main"* claims X is absent; *"X is missing two sections"* claims the
opposite, and §4.5's description of `agent-control.md` tripped it. The phrase
now requires a clause end or `from`/`at`/`on`. Both directions verified.

**Orphans landed at 34, not the 31 predicted.** The `.claude/` door cleared 3;
`docs/clock/` gained files faster than that while the work ran, and the
`.gitignore` mention was skipped as not worth a law claim of its own. The
prediction was not wrong about the work, only about a tree that does not hold
still.

**Process slip worth recording.** 3a's first push failed five times because
`kit.station` was left unstaged and `pull --rebase` refuses with unstaged
changes. The commit was sound; the loop reported "PUSH FAILED" without saying
why. A push loop should surface git's own error on the last attempt rather than
swallowing it.

Phases 0–3 are filing. Phase 4 is naming. Phase 5 waits on another campaign. Phases 7–8 change law or protocol and are only proposals here.

---

## 5. Do not touch, and how this fails

**Do not touch, any phase:** Graphics A–D bytes. The manifest body. `pointer-emission.md` answers. `src/`. Gear keys in `contracts-*.js` or the HTML. Anything a phase's station does not own.

| Failure | What it looks like |
|---|---|
| Restructuring theatre | A phase that moves folders and closes none of R1–R12 |
| A fifth copy of the law | "Just paste the block here so agents see it" |
| Renaming a gear tooth to fix R2 | The 1:1 audit breaks; the HTML breaks; the register exists so this never has to happen |
| Folding pass plans while the campaign runs | Two agents in `docs/clock/` at once — C07 |
| Dropping the root README table before the shelf doors exist | 60 files lose their only index for one commit |
| A filing commit that also "tidies" a sentence | The defrag rule: one phase per commit, filing only |
| Treating this plan as accepted | It is `[PROPOSAL]`; each phase waits for its go |

---

## 6. Receipt — how the numbers were made

Run from a clean checkout of the tip named in the status line.

| Check | Command | Result at `955cecc` |
|---|---|---|
| 1 Law copies | hash of the text between `IMPLEMENTATION LAW` and `STEWARD TEST` in the four files; `difflib` between them | 3 distinct sizes; agent-control −3 lines vs stake; grok 17 lines differ; READING ORDER 3 hashes / 4 copies |
| 2 Shelf doors | for each dir with a README, files in that dir whose basename does not appear in it | history 0/10, prompts 0/16, clock 13/26, gearing 10/12, hologram 16/23, root 3/5; no README: `docs/`, `.claude/`, `coord/stations/`, `gearing/claims/`, `plans/fixtures/`, `plans/tools/` |
| 3 Link graph | every markdown link in every tracked `.md`, resolved to a path; in-degree and out-degree | hubs: law-why 14, manifest 12, staking 11; islands 26; dead ends 61 |
| 4 Station coverage | `coord.sh which` over `git ls-files` | 151 owned across 18 stations; 10 unowned |
| 5 Commit mix | `git log --since='8 hours ago' --format=%s`, prefix Claim/Release/Refresh | 44 of 138 |
| 6 Viewers | `git ls-files '*.html'` + `which` + `grep src=\|fetch(` | 3 viewers, 2 stations, none loads a CDN |
| 7 Inventory | `git ls-files` by directory | 161 files, 95 markdown; clock 27, hologram 24, prompts 17 |

Not done: no file moved, renamed or rewritten; no station other than maps claimed; no physical cord; one agent. Human acceptance: `ABSENT`.

**Next narrow question:** phase 0 or phase 1 first? Phase 0 is one commit and ends fail-closed on ten paths; phase 1 is six parallel commits and ends the islands. Both are safe today. Phase 2 must wait for phase 1.

**STOP.**

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

You can re-tie the knots so the lace is easier to read. You do not cut it, and you do not write on it. Emission remains `[GAP]`.
