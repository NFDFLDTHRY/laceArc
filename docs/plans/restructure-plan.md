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
| **R5** | **Shelf doors don't name what is on the shelf.** `history/README.md` names 0 of 10 files. `prompts/README.md` names 0 of 16. `clock/README.md` names 13 of 26 — not `hcc-a-projection.html`, not any pass plan. `gearing/README.md` omits `RESYNC.md`, `resync.sh`, `claims/`. `hologram/README.md` omits the seven `primitive-*.png` sheets. `plans/README.md` names every file but as bare text, not links, so its files register as orphans. `docs/` root — the court, 11 files — has no README at all; nor do `.claude/`, `coord/stations/`, `gearing/claims/`, `plans/fixtures/`, `plans/tools/`. | §6 check 2. |
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
| **0** | coord | RULES: `docs/gearing/claims/<shaft>.claim` → `gear:<shaft>`; `.gitignore` `LICENSE` `docs/README.md` `docs/namespace-register.md` → law/maps; `docs/**/*.html` → renderer (all three viewers). `stations/README.md`. **Zero unowned paths.** | go phase 0 |
| **1a** | history | `history/README.md` names all 10 files, as links. | go phase 1 |
| **1b** | prompts | `prompts/README.md` names all 16, as links; one line: *a running pass ticket lives here; an executed one becomes a receipt or a log tick, not a file*. | go phase 1 |
| **1c** | hologram | `clock/README.md` names all 26 incl. `hcc-a-projection.html`; `hologram/README.md` names the seven primitive sheets. | go phase 1 |
| **1d** | gearing-meta | `gearing/README.md` names `RESYNC.md`, `resync.sh`, `claims/`; `claims/README.md` (one line: written by `claim.sh`; owned per shaft). | go phase 1 |
| **1e** | maps | `plans/README.md` rows → links; `fixtures/README.md`, `tools/README.md` one line each; shelf description corrected (plans, not rust only). | go phase 1 |
| **1f** | coord | `coord/stations/README.md`. (Can ride phase 0.) | go phase 1 |
| **2** | law | `docs/README.md` (court door). Root README loses the per-file table, keeps the shelf table and Hands rows, and its shelf descriptions are corrected (R6). `AGENTS.md` paths → links. `staking` and `law-why` gain their one-line self-identification (R1). `defrag-plan.md` gains "superseded by". | go phase 2 — **after 1a–1f**, so nothing loses its index |
| **3** | kit | `agent-control.md` and `grok-bot-profile.md`: IMPLEMENTATION LAW, READING ORDER and STILL FORBIDDEN blocks regenerated byte-for-byte from `law-why`, plus a header line `TRANSPORT COPY of law-why@<sha>`. Hook check 7: every transport copy's block equals the live block, or the copy carries `STALE` in its header. Hook check 8: every file in a shelf is named as a link in that shelf's README. | go phase 3 |
| **4** | maps | `docs/namespace-register.md`: one table, every identifier family, its owner, its prefix. Source panels keep bare `A5`. Atomic primitives become `AP0–AP4`; manifest pieces are written `Piece 1` / `P.1`, never `P1`; audit stations `S-A1`; gear teeth keep their baked keys but are always written with the shaft, `trainA:A5`. Each owning station applies the spelling when it next touches its file; Pass 1 (Codex) adopts `AP` before it runs. | go phase 4 |
| **5** | hologram | Three gear manifests retitled `Gear manifest — HCC-A (Shadow)` etc. (title line only; filenames stay). `clock/passes/` + index for the 14 executed pass plans, `git mv` only. Forward rule in `clock/README.md`: no new one-file-per-pass. | go phase 5 — **after the Cup/Water/HCC campaign stops** (passes landed within the last hour) |
| **6** *(optional)* | history + law | `READ_ME_FIRST.md` and `downstream-audit.md` → `history/` as dated artefacts; `CLAUDE.md` and `CONTRIBUTING.md` links follow. `kit/` becomes live controls only. | go phase 6 — costs a CLAUDE.md edit |
| **7** | coord — **human decision** | Claim and release stop being their own commits: `claim` writes the station file locally; the work commit carries HELD; `release` rides the next work commit or a `doctor` sweep. `doctor --auto-clear` also frees a station whose `SINCE` is older than N hours with no commit to its paths. Target: claim/release share of commits from 31% to under 5%. | go phase 7 — changes the protocol every agent runs |
| **8** | law — **human decision** | One sentence: *Core is Rust `no_std` only. Steward tooling — hooks, coord scripts, validators, Layer III viewers — may be any language, is never a Core dependency, and never lives under `src/`.* Closes downstream F11 and the question `tools/hologram-ir-validate.py` raises. | go phase 8 |

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
