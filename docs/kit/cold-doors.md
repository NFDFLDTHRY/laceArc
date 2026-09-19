# Cold doors

**Status:** Pass 1 EXECUTED. Pass 2 EXECUTED. Pass 3 EXECUTED. Pass 4 EXECUTED. Pass 5 EXECUTED. Pass 6 EXECUTED.
**Station:** kit.
**Pass 1 BASE:** `ec5ae61624db93bb19e2560adacfded080f98a50`.
**Pass 2 BASE:** `8c912a10df56504cb51cf95cd33c68ac8d3f2f45` (companions unchanged from `22ac006`).
**Pass 3 BASE:** `e6e19352364cec81f96409596b8e8d3ffe70b63b`.
**Pass 4 BASE:** `ccc68724d07095e5673ee380783bbdc4fc6c5326`.
**Pass 5 BASE:** `60eb30ff1754307a6a3fab9842f12f1386a0b0da`.
**Pass 6 BASE:** `1fcada25a43c88b3328cb529befff2c531ba28d9`.
**Read:** 19 September 2026.
**Emission:** `[GAP]`. No `src/`.

Steward register. Not Hands. Not a second package door. Each named door still belongs to its own station.

Stamps: **LIVE** routes to live law or tip. **DATED** is an honest pin. **STALE** is a pin or absence-claim that outlives the tree. **PAUSED** is a human halt. **SHUT** is a law gate.

THEN/NOW on the package door is a reading, not a retarget.

---

## The ten quiet doors

| # | Door | Path | Station | Stamp | Pin | Evidence |
|---|---|---|---|---|---|---|
| 1 | Package door | `docs/kit/READ_ME_FIRST.md` | kit | LIVE | THEN `4fe984bb098d5ca21c9704234df4fddd53056efb`; NOW `044257ceb95e78612d302a204a9438c72d06aa96` | Opens by sending the reader to live `AGENTS.md` and live law. THEN/NOW are labeled. Downstream audit stays a dated snapshot at THEN. No STALE banner. |
| 2 | Kit index | `docs/kit/README.md` | kit | LIVE | none as tip | Shelf door. Names the package door, this register, and transport copies. Says live law wins where a copy lags. |
| 3 | Court door | `docs/README.md` | law | LIVE | none | Indexes Hands, DRAFT emission gate, live law, shelves. Does not pin a commit as the tip. |
| 4 | Live law | `docs/law-why-these-documents.md` | law | LIVE | none | Header: **LIVE LAW.** Declares transport copies may lag and that this file wins. Line 10 vs IMPLEMENTATION LAW (existence vs acceptance) is an unresolved human pair; noticed, not edited. |
| 5 | History door | `docs/history/README.md` | history | LIVE | none | Names pass 6 extract + sit-note and pass 7. Walkers stay rejected. Φ `[GAP]`. |
| 6 | Clock door | `docs/clock/README.md` | hologram | LIVE | none | Routes install to `docs/kit/githack-pwa-deploy.md` + full SHA. Cubes ≠ rows. Viewer files exist; the *renderer campaign* is a separate PAUSED row below. |
| 7 | Hologram door | `docs/hologram/README.md` | hologram | LIVE | none | Lookrefs and primitives indexed. Not a fifth graphic. |
| 8 | Gearing door | `docs/gearing/README.md` + `docs/gearing/RESYNC.md` | gearing-meta | LIVE | RESYNC CLEAR at `2026-09-19T04:05:47Z` by Grok-resync-p1 | Shaft protocol live. RESYNC receipt is dated and CLEAR, not a tip pin. |
| 9 | Coord door | `docs/coord/README.md` | coord | LIVE | none | Claim/release umbrella. Fail closed. |
| 10 | Graphics door | `docs/graphics/README.md` | law | LIVE | none | Four lossless PNGs named and present at this BASE. Source of record. |

No row in this table is STALE.

Activity is not this table. After door #1 CLOSED 6/6, a rescan must also read [`scanner.md`](scanner.md). LIVE is not idle. This line is a route, not cold-doors pass 7, not an Activity column.

---

## Already on the package door

| Fact | Where it already lives |
|---|---|
| Live law / live AGENTS win | `READ_ME_FIRST.md` opening lines |
| THEN pin `4fe984b` | same file; audit body not rewritten |
| NOW re-read `044257c` | same file |
| Emission file exists as DRAFT, not accepted | same file + court door + `docs/pointer-emission.md` header |
| Transport copies may lag | kit index + live-law header |

Pass 1 does not add a second routing block. Those sentences stay where they are.

---

## Off this list (stamped so they are not mistaken for quiet-door work)

| Object | Stamp | Why |
|---|---|---|
| `docs/clock/lace-projection.html` and sibling viewer HTML | PAUSED | Steward halt after the githack-vs-Pages correction. Station FREE is not a resume. |
| Seven first-party Rust doors in `docs/plans/rust-nostd-branch-contracts.md` | SHUT | Emission not accepted. Maps station. Not a README door. |
| Clipboards / plans doors | — | Moving. Not classified here. |
| HCC/Water “admission door” | — | Constraint, not a path. |

---

## Pass 2 — kit companions

Behind the package door. Same stamps. Live law bytes not edited. Copies not regenerated.

| # | Companion | Path | Stamp | Pin | Evidence |
|---|---|---|---|---|---|
| 1 | Standing prompt | `docs/kit/agent-control.md` | DATED | transport regen `e21cf39` | Calls itself a transport copy of the live-law fenced block. Says live law wins where they differ. Does not claim to be the tip. |
| 2 | Grok paste | `docs/kit/grok-bot-profile.md` | DATED | transport regen `e21cf39` | Same declaration. Points at live law. Size still ≠ live law (R1). Lag is labeled. |
| 3 | Downstream audit | `docs/kit/downstream-audit.md` | DATED | `4fe984bb098d5ca21c9704234df4fddd53056efb` | Header is the THEN pin. Package door already says the body is not rewritten. F10 at that pin: emission file absent; file now exists as DRAFT — the audit records the old observation, it does not pretend the tree is still missing the file. |
| 4 | Task forms | `docs/kit/agent-task-template.md` | LIVE | none | Version 1.0 forms. Routes to “the current repository law.” Not a law-block copy. |
| 5 | GitHack deploy | `docs/kit/githack-pwa-deploy.md` | LIVE | none as tip | Layer III deploy law. Host `rawcdn.githack.com` + full SHA; never branch name; never Pages. Matches AGENTS rule 9. |
| 6 | Hook door | `.claude/README.md` | LIVE | none | Routes to live law. Names checks as advisory, not a publishing gate. Points at audit F06/F07. |

No companion in this table is STALE.

A lagging copy that says it may lag is DATED. R1 size split remains noticed, not repaired.

---

## Pass 3 — transport lag inventory

Question: what lags in the two DATED transport copies against the live-law **fenced** block, and does pin `e21cf39` resolve?

Method: `git rev-parse` / `git rev-list --all` / `git ls-remote origin` for the pin. Python extract of the first `STAKING THE WORKSPACE` fence in live law vs the matching fences in the two copies. Line-diff. No paste-over.

| Object | Finding |
|---|---|
| Pin `e21cf39` | **UNREACHABLE** on this clone. No object, no `origin` ref, no `rev-list --all` prefix match (152 commits walked). The two copies still name it. That name is a declaration, not a resolvable locator on this tree. |
| Live-law fence | `docs/law-why-these-documents.md` fenced `STAKING THE WORKSPACE` block: 397 lines, 14903 bytes. |
| `agent-control.md` staking fence | **IDENTICAL** to the live-law fence (0 line diffs). |
| `grok-bot-profile.md` Explanation fence | **IDENTICAL** to the live-law fence (0 line diffs). |
| Fence KEEP/FORBID drift | None found. The declared transport blocks match live law at this BASE. |

The copies may still lag **outside** the fence. That is wrapper prose, not fence bytes.

| Pair | Where it lives | In the shared fence? | In the two copies' wrappers? |
|---|---|---|---|
| Existence sentence | Live-law header line 14: *Implementation remains forbidden until `docs/pointer-emission.md` exists.* | No. Header is outside the fence. | Neither copy repeats that header pair. |
| Acceptance sentence | Shared fence IMPLEMENTATION LAW: *When the human has accepted docs/pointer-emission.md, code may appear…* | Yes. Present and identical in all three fences. | Also restated in wrappers (see below). |
| Header notice of the pair | Live-law blockquote: existence is not acceptance; neither sentence edited here. | No. | Absent from both copies. |

Wrapper restatements (not fence drift; not repaired here):

- `grok-bot-profile.md` Description fence (a different fence): refuses `src/` until the emission file *exists and the human accepted it* — one line joins both gates.
- `agent-control.md` C03: gate requires the file to exist, to settle the questions the task uses, *and* identifiable human acceptance of that exact content.
- `agent-control.md` C01 dated observation at `4fe984b` still says the emission file was absent at that pin (pass 2 already stamped this).

R1 sizes at this BASE are wrapper weight, not staking-fence disagreement: `staking-the-workspace.md` 5961 (original stake, unfenced, not this compare), live law 17385 (header + fence), `grok-bot-profile.md` 18739 (profile + Description fence + identical Explanation fence), `agent-control.md` 31663 (identical fence + C01–C12).

`docs/staking-the-workspace.md` was not scored as a transport copy. It is the original stake. Law owns it.

No companion stamp from pass 2 changes. Copies not regenerated. Live law not edited. Pin string not retargeted.

---

## Pass 4 — R1 file sit

Question: how do the other R1-named files sit against the fence pass 3 proved identical in the two transports?

Sit labels in this table only: **ORIGINAL** = frozen stake, not a lagging copy. **POINTER** = routes to live law, does not carry the fence. Door stamps above are unchanged.

Sizes at Pass 4 BASE `ccc68724d07095e5673ee380783bbdc4fc6c5326`:

| File | Bytes | Lines | Sit | Carries fence? | Carries header pair? |
|---|---|---|---|---|---|
| `docs/law-why-these-documents.md` | 17385 | 438 | LIVE | Yes (397-line fence). | Yes. Blockquote names existence ≠ acceptance. Line 14: *forbidden until … exists.* Fence IMPLEMENTATION LAW: *When the human has accepted … code may appear.* |
| `docs/staking-the-workspace.md` | 5961 | 171 | ORIGINAL | No. Unfenced body. Header calls it frozen and points at live law. | No. Body includes the IMPLEMENTATION LAW *accepted* sentence. It does not repeat the live-law header pair. Shorter than the fence: ~197 fence-only lines (gears, hologram, later forbids). Three body lines are not in the fence (reading-order wording). Shorter ≠ STALE. |
| `AGENTS.md` | 9771 | 142 | POINTER | No. `STAKING THE WORKSPACE` is absent. Standing orders point at live law (lines 8, 79, 122, 142). | No header pair. Gate is already joined: line 68 and line 104 require the emission file to *exist and* the human to have *accepted* it (the A6 shape the live-law header cites). Implementation Law here is a summary; full ASCII is live law. |
| `docs/kit/agent-control.md` | 31663 | 557 | DATED | Yes. Identical to live-law fence (pass 3). | No. Wrapper C03 restates exist + settle + acceptance. Pin `e21cf39` still unreachable. |
| `docs/kit/grok-bot-profile.md` | 18739 | 504 | DATED | Yes. Identical Explanation fence (pass 3). | No. Description fence joins *exists and the human accepted it*. Same unreachable pin. |

No file in this table was edited. R1 remains a size split with different duties, not five broken copies of one file. Repair stays law-station if the human names that.

---

## Noticed, not repaired

Restructure R1: four law-bearing files differ in size at this BASE (`staking-the-workspace.md` 5961, live law 17385, `grok-bot-profile.md` 18739, `agent-control.md` 31663). Live law already says the copies may lag. Repair is a law-station pass if the human names one.

---

## Pass 5 — package-door pins

Question: do THEN and NOW still resolve, and do the NOW claims still hold at execute tip — without retargeting the pins?

Pins as written on `docs/kit/READ_ME_FIRST.md`. Package door bytes were not edited.

**Pin fate** (execute tip `60eb30ff1754307a6a3fab9842f12f1386a0b0da`)

| Label | Written SHA | Resolves? | Full SHA or UNREACHABLE |
|---|---|---|---|
| THEN | `4fe984bb098d5ca21c9704234df4fddd53056efb` | yes, as an object (`git fetch origin <sha>`) | `4fe984bb098d5ca21c9704234df4fddd53056efb` — *Make staking ASCII and Rust no_std implementation posture repo law* |
| NOW | `044257ceb95e78612d302a204a9438c72d06aa96` | yes, as an object (`git fetch origin <sha>`) | `044257ceb95e78612d302a204a9438c72d06aa96` — *Release maps station (Claude-Projection).* |
| execute tip | claim BASE | yes | `60eb30ff1754307a6a3fab9842f12f1386a0b0da` |

A default shallow clone does not contain THEN or NOW until they are fetched by SHA. That is depth, not a missing pin. Neither pin is the tip. Tip-moved is not a defect in NOW.

**Door claims**

| # | When | Claim | Hold? |
|---|---|---|---|
| 1 | THEN | At that pin `docs/pointer-emission.md` was absent. | **hold** — `git cat-file -e THEN:docs/pointer-emission.md` fails. Path exists on disk now; it is not in that tree. |
| 2 | NOW | Routing still holds to live `AGENTS.md` and live law. | **hold** — both files present at execute tip. Door still names them. |
| 3 | NOW | `docs/pointer-emission.md` exists as DRAFT unanswered questions — not accepted. | **hold** — header at tip and at NOW: DRAFT, not accepted, not implemented. |
| 4 | NOW | Emission remains `[GAP]`. No `src/`. | **hold** — no `src/` at THEN, NOW, or execute tip. |

Package door stays LIVE. THEN/NOW were not retargeted.

Queued (not this pass): off-kit remainder table — R1 law-station; renderer hologram PAUSED; Rust maps SHUT; emission `[GAP]`.

---

## Pass 6 — off-kit remainder

Question: what remainders did passes 1–5 notice and refuse to repair, and which station owns each?

Kit named the doors. It did not walk through them. No foreign file edited.

Execute tip `1fcada25a43c88b3328cb529befff2c531ba28d9`.

| Remainder | Station that would own a repair | Stamp already on register | Pass 6 sit | Kit may |
|---|---|---|---|---|
| R1 size split (5961 / 17385 / 18739 / 31663) | law | noticed, not repaired | **hold** — sizes unchanged at this tip | name the station |
| Live-law header pair (exists ≠ accepted) | law | noticed pass 1 / 3 | **hold** — both sentences still in live law | name the station |
| Pin `e21cf39` | kit (label only) | DATED companions; pass 3 UNREACHABLE | **hold label** — object resolves (`e21cf399` *Phase 2c…*); companions still name it; do not retarget | keep the label |
| Graphics door row says station `law` | graphics + coord | door 10 | **moved** — `coord.sh which docs/graphics/README.md` → `graphics`; register row still says law | notice; do not rewrite OWNS |
| Projection HTML campaign | hologram | PAUSED | **hold** — HTML present; hologram and renderer FREE; FREE is not a resume | do not resume |
| Seven Rust doors | maps | SHUT | **hold** — contracts still PLAN / PROPOSAL; no `src/` | do not open |
| Emission | law | `[GAP]` | **hold** — `docs/pointer-emission.md` DRAFT, not accepted | do not fill |
| Graphics ASCII i3 (D companion) | graphics | queued, no plan | **hold** — i3 “not opened this tick”; graphics HELD elsewhere | do not start |

No remainder became kit work. PAUSED stays paused. SHUT stays shut. Φ stays `[GAP]`.

A later named pass on **law** / **hologram** / **maps** / **graphics** is not a kit pass 7.

---

```text
LOCATED != READ != ACCEPTED != PROVEN
A quiet shelf is not an empty shelf.
A THEN pin is not a STALE banner if the door says so.
Φ stays [GAP].
```
