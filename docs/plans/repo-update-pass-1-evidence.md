# Repository update — pass 1 evidence map

**Snapshot:** `0b2012bb221184f684f672f63260c6b1ecd9427b`, inspected 2026-09-20. **Station:** maps.
**Purpose:** evidence for the [pass 1 plan](repo-update-pass-1-plan.md), updated during planning and the authorized documentation repair pass. Sections 1–5 preserve the baseline and planning receipt; sections 6 onward record execution. This is not a replacement authority or an acceptance record.
**Full path census:** [558 paths with Git blob identities and sizes](repo-update-pass-1-inventory.json). The census excludes the three new planning artifacts. Inclusion establishes existence at the snapshot, not semantic review.

## 1. Keep five different questions separate

| Question | Evidence that answers it | What it does not establish |
|---|---|---|
| Did these bytes arrive? | reachable commit, patch identity, or exact content comparison with an integration locator | source support, execution, acceptance |
| Does the statement agree with its source? | cited source passage or bounded counterexample, compared at named revisions | permission to implement |
| Was the planned work performed? | product, actual observations, and receipt with their scope | proof merely because a file says EXECUTED |
| Did the human accept this exact claim? | retrievable human statement, exact content identity, and scope | acceptance from a commit title, an agent stamp, or reviewer consensus |
| Which version does a user actually see? | install URL, pinned commit, manifest/link resolution, cache and device evidence | that updating main updates an existing install |

These are independent fields, not an ascending confidence score. The September 20 conceptual-reference correction has explicit human authority in [live law](../law-why-these-documents.md#conceptual-reference-documents). That authority is limited to the recorded classification; it does not accept emission or every later interpretation.

## 2. Whole-tree map and review coverage

Counts come from `git ls-tree -r -l` at the snapshot, grouped by path. All 558 paths were inventoried. The text contains 484 Markdown files. The remaining files include four HTML surfaces, ten JavaScript files, five shell scripts, one Python tool, images, JSON, and coordination metadata. Zero Rust source or wasm artifacts were found.

| Family | Files | Main role | Planning review performed |
|---|---:|---|---|
| repository root | 6 | entrances, orders, contribution/license controls | active entrances and control claims inspected |
| `.claude/` | 4 | hooks and session controls | checker run; hook/README scope compared; no hook edits |
| `docs/` root | 44 | law, manifest, emission, maps, global companion | active authority chain and disputed mappings inspected; prior logs sampled |
| `docs/graphics/` | 37 | four canonical sources plus readings | all four PNGs viewed; campaign/custody passages sampled |
| `docs/plans/` | 99 | architecture proposals, findings, pass plans, fixtures | active models and current plan/product routing inspected; historical plans inventoried/sampled |
| `docs/clipboards/` | 87 | ten reference families and their pass records | every family's entrance and terminal status sampled; rust-target clipboard read |
| `docs/clock/` | 93 | conceptual readings and viewer artifacts | active runtime files and briefs inspected; prior pass bodies sampled |
| `docs/gearing/` | 31 | contract data and gear coordination | runtime inventory, contract wording, claims/dispatch inspected |
| `docs/hologram/` | 32 | visual references and projection | runtime surface/entrances inspected; historical imagery not all reread |
| `docs/history/` | 34 | recoveries and dated receipts | index, closed receipts and contradictory interpretive passages inspected |
| `docs/kit/` | 48 | portable controls and deployment rules | current controls, transport blocks, package/role/deploy documents inspected |
| `docs/coord/` | 21 | ownership and claim protocol | all current states, mapping/dispatch and entrance inspected |
| `docs/prompts/` | 22 | tasks that agents may reuse | active context/diagram/coord/emission/target prompts inspected; remaining tickets sampled |
| **Total** | **558** | **13 path families** | **inventory 558/558; families screened 13/13; not 558 full semantic audits** |

The plans family comprises 46 verification, 13 math-execution, 12 lace-context, 11 reduction, three rust-nostd, and 14 other files at this pin. This is a path-family grouping, not a verdict on each file.

Independent work: root proposed the plan and integrated findings; `branch_audit` examined ancestry/content; `controls_review` examined authority, custody and coordination; `architecture_review` examined models and maps; `reference_review` examined references/history; `projection_review` examined runtime surfaces; `proof_scope_review` independently checked the main proof-scope objections. Final plan review is recorded below when complete. Agreement between reviewers is not human acceptance.

**Limits at planning:** historical campaign bodies were not all read in full; browser/device behavior was not executed; physical cord testing was NOT_PERFORMED; current remote protection was NOT_CHECKED. The nine supplied PDFs were hashed by the reference reviewer, with seven sampled explicit shelf hashes matching. Planning did not reread their contents; execution later sighted the specific Kauffman/Xiao pages recorded in §7. The rustc source text cited by the shelf is not among the supplied attachments; its receipt is not a fresh source sighting. Earlier in this session the three conceptual-reference TXT files were read in full.

## 3. Branch arrival map

All remote branches were fetched before this comparison. GitHub's open-PR collection returned `[]`. Abbreviated hashes below are unambiguous in the fetched object set. `Main-only / branch-only` is the symmetric-difference commit count against the snapshot, not the count of missing changes.

| Branch, without `origin/` | Tip | Merge base | Main-only / branch-only | Content disposition |
|---|---|---|---:|---|
| main | `0b2012bb22118` | same | 0 / 0 | snapshot |
| claude/recovered-mdj1wo-2026-09-19 | `b4f3bcd88d2f` | `6603c1bf19c8` | 1017 / 13 | integration and subsequent supersession recorded below |
| claude/repository-setup-mdj1wo | `3655e7ff2d96` | `b445a636c9e0` | 1020 / 10 | all ten commits patch-equivalent to recovered series |
| docs/math-execution-model-pass-2 | `4d2016e09f15` | same as tip | 199 / 0 | reachable |
| fable/full-tree-f4db9d5 | `a3aa70211bd2` | none | 1107 / 1 | unrelated-root archive; counts are not a normal ahead/behind relation |
| lace-context-iteration-6 | `eda880802d79` | same as tip | 17 / 0 | reachable |
| math-execution-pass-4-plan | `7b3a3389b1c2` | `4de5fc106b12` | 187 / 1 | patch-equivalent to `d639c8ebe2b2` |
| math-execution-pass-5-plan | `e93c41ddd8fb` | `7347f2e8da68` | 180 / 1 | plan byte-identical; incorporated with execution at `37a6d600d8ff` |
| math-execution-pass-6-plan | `dbdb0dfe3787` | same as tip | 171 / 0 | reachable |
| math-execution-wasm-crosswalk-pass-1-plan | `53ae5bf4ac7c` | same as tip | 168 / 0 | reachable |
| math-execution-wasm-crosswalk-pass-2-plan | `06bba20778d2` | `0c375441c851` | 166 / 1 | patch-equivalent to `ede8d0651c2b` |
| math-execution-wasm-crosswalk-pass-3-execute | `4ab0c98d15c7` | same as tip | 157 / 0 | reachable |
| math-execution-wasm-crosswalk-pass-3-plan | `3eee85f30fe6` | `143af15ebefa` | 159 / 1 | plan byte-identical; incorporated with execution at `4ab0c98d15c7` |
| math-execution-wasm-crosswalk-pass-4-plan | `968289acd30e` | same as tip | 155 / 0 | plan reachable; named output still expressly unwritten |
| plans/math-execution-model-pass-2-plan | `655556d5ae45` | same as tip | 206 / 0 | reachable |
| plans/math-execution-model-pass-3-plan | `1e4f2d3e1239` | same as tip | 196 / 0 | reachable |
| plans/math-execution-problem-map-pass-1 | `8416835ace7b` | same as tip | 209 / 0 | reachable |

Nine non-main tips are ancestors; two are patch-equivalent; two have their plan content incorporated in larger commits; two contain recovered/rewritten history with documented integration; one is an archive root. No missing-content backlog was established by this audit. That bounded result is not a proof that every hunk or claim is correct.

### Integration evidence and traps

`126a545264a7e278b6257bebd49f282621c801e4`, titled “Merge the recovered branch,” has one parent, `130577905dbfd1bc56657cf9b8414bdbc7deb868`. It integrates content without making the recovered commits ancestors. `git cherry` alone consequently overstates outstanding work.

| Recovered path | Current destination / disposition |
|---|---|
| `docs/lace-projection-brief.md` | [plans/lace-projection-brief.md](lace-projection-brief.md), equal except two repaired relative links |
| `docs/lace-projection-review-prompt.md` | [prompts/lace-projection-review-prompt.md](../prompts/lace-projection-review-prompt.md), equal except one repaired link; indexed at `41de899` |
| `docs/shadow-clock-gear-contracts-second-reading.md` | [clock/shadow-clock-gear-contracts-second-reading.md](../clock/shadow-clock-gear-contracts-second-reading.md), equal except three current path labels |
| `docs/gearing-code-1to1.md` | [clock/gearing-code-1to1.md](../clock/gearing-code-1to1.md), integrated and further updated |
| `docs/graphics-close-reading.md` | current successor includes later human-attributed clarification; old centimeter arithmetic superseded |
| `.claude/hooks/check-docs.sh`, `docs/shadow-clock-gearing.html` | integration record explicitly keeps evolved successors; not byte-equality claims |
| `README.md` | current navigation supersedes earlier paths |

Patch identities: `7b3a338` / `d639c8e` share `f51111ae28db149f94078098964ca29892b60153`; `06bba20` / `ede8d06` share `d9fd76878cf8ea616979c61d82160a6b19c1783d`.

Fable's archive contains 555 paths: 529 identical blobs, 26 differing shared paths, zero archive-only paths, and three main-only paths. The three additions are this session's earlier conceptual-reference reconciliation, the WASM crosswalk Pass 4 plan, and the recovered projection-review prompt. Its claimed source `f4db9d5c905086c1f48e2ee21ba161246bd9e868` is recorded in the commit message but unavailable as an object locally. Preserve archive provenance; do not invent ancestry or restore the whole snapshot.

**Branch treatment for pass 1:** no merge, cherry-pick, deletion, or ancestry rewrite is proposed. A disputed change must be compared by exact hunk/current destination. Reachable plans still need separate execution and acceptance checks.

## 4. Findings and closure tests

The discrepancy column describes the pinned baseline. Findings are SOURCE/OBSERVED text or static source comparisons unless stated otherwise. Priority 1 prevents false authority or evidence; priority 2 repairs current routing; priority 3 identifies separately gated code/runtime work. The table preserves the proposed closure tests; current execution dispositions appear in §8. Recording a finding alone does not resolve it.

| ID / priority | Evidence and discrepancy | Proposed disposition and closure test |
|---|---|---|
| U01 / 1 | [emission Q0–Q5 and slot II](../pointer-emission.md), [context §2](../prompts/context-pass.md), [rulings brief row 13](reduction-pass-5-rulings-brief.md): the custody summary names four disputed SPOKEN locations but Q3 also carries that stamp | Register each distinct Answer, source locator, introduction and acceptance scope, including Q3. Keep every existing Answer/Stamp untouched pending reconciliation. Closure: all SPOKEN Answer locations accounted for; no merge or agent paraphrase substituted for a human source |
| U02 / 1 | [live law opening](../law-why-these-documents.md) preserves the unresolved existence/acceptance pair; [package door](../kit/READ_ME_FIRST.md) claims alignment | Correct the derivative completion claim. The explicitly reserved human-authored law pair remains a ruling, with the stronger acceptance gate controlling meanwhile. Closure: entrances accurately expose the unresolved pair |
| U03 / 1 | [distribution amendment](../kit/distribution-model.md) says acceptance absent while allowing production Pages; [deploy policy](../kit/githack-pwa-deploy.md) calls it effective; AGENTS still forbids Pages | Trace exact acceptance and scope before harmonizing normative wording. Closure can be a clearly preserved conflict, not a chosen host. No deployment or permission change |
| U04 / 1 | [execution model X3–X5](reduction-pass-2-execution-model.md): I1 covers all transitions, M1 covers every app observable, I6 counts successful SUBMITs | Reconcile lifecycle and observation scopes using the counterexamples below; review X0/X8/X9 and downstream proof summaries. Closure: each retained claim has explicit premises and survives the named counterexample; no new persistence or emitter choice |
| U05 / 1 | execution-model M3 asserts fixed frontiers from F-H4; [environment E2/E3/E6](lace-context-iter6-pass-4-environment.md) specifies final D1 equality; [algebra S4.3](../math-execution-model.md) supplies an ordering whose inheritance is implicit | Make the premise chain explicit or limit the claim. Closure: distinguish final-row equality from per-STEP partition; independent reviewer checks the chosen statement. Do not promote an illustrative partition to a schedule |
| U06 / 1 | [environment E5](lace-context-iter6-pass-4-environment.md) includes BLOCKED/indeterminate rows but its conclusion and context say all 17 are outside the region | Report “none established in-region” with the actual per-candidate dispositions. Closure: BLOCKED is not relabeled REFUTED, including diagram/receipt-derived current summaries |
| U07 / 1 | [branch cards](rust-nostd-branch-contracts.md) exclude scheduling from route/core; [shape](lace-context-iter6-pass-5-crate-proposal.md) says seven doors compose and notes σ absent; execution STEP assigns σ to route/strand | Record the unresolved ownership edge in current architecture. Closure: source-supported ownership or an explicit unassigned obligation; no invented eighth branch or implicit task expansion |
| U08 / 1 | [crate map](rust-nostd-crate-map.md) and branch cards still cite an emission gap about POINTER→POINTER; current Q4 closes that permission | Reconcile their current premises with Q4, preserving open timing/arity. Closure: no active card claims the already closed permission is unknown or uses that claim as a blocker |
| U09 / 1 | [atomic map §5](../atomic-primitives-map.md), crate-map holder wording, selected history sit-notes and viewer labels retain the prior H/C/W machinery reading | Carry the accepted conceptual-reference classification into current entrances; annotate historical interpretations without erasing source text. Closure: all active consumers in this finding's dependency list expose the correction; viewer publication stays separate |
| U10 / 1 | [Grok compact profile](../kit/grok-bot-profile.md) puts crates.io/std/database/tokenizer prohibitions behind “until acceptance” | Separate the temporary Core gate from independent permanent restrictions. Closure: accepting emission cannot be read as lifting those restrictions; portable law blocks remain exact |
| U11 / 2 | [pointer outline prompt](../prompts/pointer-emission-prompt.md) orders a questions-only skeleton and calls POINTER→POINTER unknown despite current Q4 | Retire the initial creation instructions as a dated task and route future work to preserving the accumulated document. Closure: following the live entrance cannot erase existing grounded answers or reopen Q4 by default |
| U12 / 2 | [context](../prompts/context-pass.md) says A1 next; [diagram prompt](../prompts/lace-context-diagram-prompt.md) says A1–A6 unattached; [rust-target shelf Page G](../clipboards/rust-target-clipboard.md) records A1 mapping and queues A4 next, G8′/G10 and a Pass 0 label correction | Reconcile the current queue and downstream labels from receipt evidence, retaining proposals and unrun builds. Closure: current entrances name the same next source and distinguish attachment, mapping, toolchain ruling and build |
| U13 / 2 | [namespace register](../namespace-register.md) omits reduction R, attachments A, promotion gates G, components C and model E/X/I/M; its claim about atomic G as the only bare G reading no longer holds | Register qualified families using their defining documents. Closure: every active cross-file identifier in the reviewed model/target closure resolves to one family; do not renumber historical identifiers |
| U14 / 2 | [plans index](README.md) says PLAN only while linking executed findings; [clipboard index](../clipboards/README.md) says nine campaigns/all plans executed but has ten and pending WebGPU/WGSL Pass 6; [kit index](../kit/README.md) dates synchronized transports to e21cf39 | Repair current navigation from products/receipts, not filename or branch reachability. Closure: every changed index row names its evidence and current status; dated plan bodies remain intact |
| U15 / 2 | [history index](../history/README.md) treats frozen companion/hold state as current; [reference catalog](../references.md) says extraction six has not executed although its receipt exists and omits routing to later technology shelves | Reanchor the live index, preserve frozen receipt text, assess A/B handoff against current companion independently of its changed hash, and route the catalog to current shelves. Closure: current-state claims match evidence, with A/B disposition explicitly checked |
| U16 / 2 | [reason map K7/X2 and matrix](../reason-model-map.md) retain strict hitch inequality and token-ID/occurrence conflation; [five-stakes clipboard](../clipboards/clipboard-five-stakes.md) records source corrections | Sight the cited source pages before correcting attribution, then update dependent prose/matrix cells. Closure: source wording accurate while existing Core exclusions remain; no tokenizer or topology operation admitted |
| U17 / 2 | root/context/CLAUDE/hook say “no code” or “no runtime,” although Layer III surfaces and steward scripts exist; package attributes a reading requirement directly to AGENTS that is actually in other entrances | Scope documentation to “no Lace Core implementation” and correct attribution. Hook wording is separately gated code. Closure: no false absence claim and no claim that every agent harness enforces the same loading path |
| U18 / 2 | [coord prompt](../prompts/coord-protocol-prompt.md) omits stations/command; coordination maps lace-projection HTML and SW to hologram but HCC HTML to renderer; coord/prompts indexes are thin | Correct command documentation and label ticket status; record exact existing ownership before proposing any reassignment. Closure: all eleven doc stations represented, override documentation grants no override authority, and candidate path owners confirmed with `which` |
| U19 / 1 | [HCC viewer](../clock/hcc-a-projection.html) discards manifest text before `###`, hiding the correction banner; labels still say driver/law. Frozen gearing surface also retains machinery labels; [LATEST](../clock/LATEST.json) pins an older revision | Separate a current-source wording/visibility repair from release promotion. Closure: correction visible in each affected runtime entry and pinned linked material checked at the actual release SHA. Static observations only; no browser result claimed |
| U20 / 3 | [SW](../clock/sw.js) activate deletes other same-origin caches and precaches only icons; [Lace viewer](../clock/lace-projection.html) shows fallback inline, then recovery has an empty hideFallback | Separate code task with scoped tests: preserve an unrelated same-origin cache; test cold offline load; trigger GPU failure then successful recovery and inspect canvas/fallback. Closure requires browser observations, not source inspection alone |
| U21 / 3 | [coord dispatch](../coord/coord.sh) routes gear force-free to a delegate that only allows claim/release/check/refresh | Static defect, NOT_EXECUTED. Separately authorized code repair and disposable-fixture regression for reason propagation/rejection; never test by clearing real holds |
| U22 / 2 | [global companion](../systems-manifest-ascii.md) has later Pass 28; active reduction/context reading instructions retain older line ranges/pass sets; root shelf descriptions mix source, law, interpretation and provenance | Replace fragile current navigation with named sections and revision-qualified reading order. Closure: every current entrance reaches the relevant later amendment without treating it as a new canonical source; keep historical pass receipts unchanged |
| U23 / 1 | Algebra/witness/projection/arrival/crosswalk headers label derivation sequences “authority,” sometimes placing proposals above governing sources; Star occurrence-index shorthand is not consistently qualified as less than the whole formation | Distinguish source authority from reading/derivation dependencies and membership from full formation. Closure: all reviewed active chains preserve the governing source/law boundary and no membership set is promoted to a complete geometry model |
| U24 / 3 | [Lace viewer](../clock/lace-projection.html) binds one uniform buffer to solids/glass pipelines, writes flag 0 then 1 before one submission; shader discards different geometry by that flag. “GPU on” is set before submission | Static inference of shared-uniform/render-evidence defects, not an observed GPU result. Separately reproduce with two distinct pass materials; verify stable per-pass data and actual visible geometry. A callback or queue completion must not certify nonempty pixels |
| U25 / 3 | [gear binding data](../gearing/contracts-gears.js) calls AB/BC/CA chip-only/no pickTarget; [current renderer](../shadow-clock-gearing.html) supplies their pick regions | Separately gated data-code correction under gear:gears. Closure: current key/pick-target join and bounded picker check. Preserve the dated older 1:1-map counterexamples |
| U26 / 2 | [clock index](../clock/README.md) counts 30 executed plans where the pass index accounts for 60; [wasm notes](../clock/wasm/README.md) describe an old target attempt without a current boundary; SW behavior does not implement the proposed complete offline carrier | Correct current descriptions and date old attempts. Distinguish development surface, proposed production behavior, ixp2 execution, and a verified successful render. Closure: counts match tracked plans; current loading path matches prose; no claim of a new device success or perpetual offline operation |

### Addresses on the existing system map

These addresses use the existing diagram's boxes and names; they do not install new components. “Steward only” means no Core Piece or fence is being asserted by that finding.

| Findings | Diagram / contract address | Existing obligation or ruling |
|---|---|---|
| U01 | GATE; companion Open board #13 | SPOKEN custody, R7; F-A1 where a claimed answer conflicts with retained occurrences |
| U02, U10, U11 | LAW and GATE entrances | implementation acceptance and independent prohibitions; no new gate |
| U03 | SHIP / shell S and carrier C | amendment acceptance; R3/R11; deployment permission unresolved |
| U04, U05 | execution MODEL; Contract I/II; carrier C | I1/I6, M1/M3; F-H1/F-H4/F-H5/F-A1; R3/R7 remain open |
| U06, U07, U08, U23 | ALGEBRA / ENVIRONMENT / SHAPE; Contract I and III | E5 verdict strength; σ ownership R7; Q4; S3 Star/π scope; source-role ordering |
| U09 | conceptual-reference readings, G-III reference mappings | F-S4; accepted classification correction supplies no Core operation |
| U12, U13 | TARGET / SHAPE; cross-map identifier register | attachments A*, R1/R12 and G8′/G10 proposals; qualified names |
| U16 | reference-source KEEP/FORBID mappings; Pieces 1/4/15 comparisons | source attribution, occurrence distinction and existing import restrictions; no emission premise |
| U14, U15, U17, U18, U22 | TEAM / reading door / provenance | steward only; history A/B handoff is checked against companion, not presumed adopted |
| U19, U24, U25 | VIEW surfaces; Contract III | interpretation visibility, projection evidence and picker bindings; no write-back/emission authority |
| U20, U26 | shell S, current Layer III app, SHIP | cache/recovery evidence; proposed production carrier separate from current development behavior |
| U21 | TEAM / coordination umbrella | steward protocol dispatch; no Core Piece or emission contact |

### Proof-scope counterexamples for U04/U05

These are challenges to stated propositions, not proposed implementation rules. Two independent reviewers checked them.

1. **I1 / reload:** start durable with `L = ε`, `K = enc(ε)`. SUBMIT and successful STEP give `L = [WORD v]`. X3 permits OPEN before PERSIST, restoring `ε`; the former L is not a prefix of the restored L. Durable-before-ack constrains acknowledgement, not OPEN's premise. Volatile OPEN also resets nonempty L. M2's narrower `OPEN ∘ PERSIST` identity can still hold. Reconcile uninterrupted-run prefix preservation versus recovery scope while leaving residence open.
2. **M1 / observables:** fixed L with different h has different SUBMIT enablement/UI custody; PERSIST changes K at fixed L. Neither h nor persistence progress follows from L and fixed X1 parameters. “One authoritative strand history” does not prove “every observable of the running app.” Specify the observable class and quiescence premise before retaining a minimality theorem.
3. **I6 / pending input:** after successful SUBMIT but before STEP, the arrival is in h and absent from L. Successful SUBMIT count and appended Arrive count differ. Scope the equality to the correct processing/recovery boundary.
4. **M3 / partition:** F-H4 alone gives final D1 equality. The same final rows can be partitioned with frontiers 1,2,5,8,11 if row 0002 is placed before the third segment's Arrive. This demonstrates missing boundary information, not an admissible schedule. If inherited S4.3 requires each STEP to start with its sole Arrive and then only Φ, D1's WORD positions force 1,3,5,8,11. Resolve that inheritance explicitly across E2/E3/E6/E9, S4.3 and M3. Do not mark the stronger theorem refuted without considering that premise.

### Preserve, do not rewrite into agreement

- Canonical graphics, original staking text, source attachments, human quotations, and recovered JSON captures.
- Dated `coherence-audit-log.md` ticks, cold-door surveys, historical hold/pin states in receipts, older Wasm32 banners explicitly kept as history, and previous plan expectations.
- Unknown emission timing, arity, identity, capacity, residence, host trust and acceptance. A documentation update cannot choose them by wording cleanup.
- Unexecuted WebGPU/WGSL Pass 6 and WASM crosswalk Pass 4. Arrived plans remain plans.

## 5. Baseline checks and planning receipt

- `git status` initially clean; HEAD and origin/main equal at the snapshot. Open PR count: 0. All eleven doc stations and eight gear shafts FREE; RESYNC CLEAR before the maps claim.
- `bash .claude/hooks/check-docs.sh`: exit 0, 100 advisory findings (2 unreferenced files, 9 thin indexes, 89 unsigned of the last 200 commits). No new runtime or device tests performed. These checks do not detect the semantic findings above.
- Both portable law blocks equal the live fenced block; SHA-256 `104ba8c9296d640e3302cc96d868d452920021312828ba74ff79a92839d733e0`. U10 concerns separate profile prose, not drift in that block.
- Independent final reviews completed: controls reviewer accepted planning scope/custody/coordination with explicit read limits; branch reviewer verified all 17 rows and content-disposition evidence; proof reviewer confirmed counterexamples and the conditional M3 treatment. No material correction was requested. Root added system-map addresses and completed the final receipt.
- `git diff --check`: passed. Inventory JSON was parsed and compared with `git ls-tree -r -l` at the base: all 558 paths, blob identities and byte sizes match exactly. All four planning paths map to maps; only those paths and the temporary maps claim changed.
- Final documentation checker: exit 0, 98 advisories (0 unreferenced, 9 thin indexes, 89 unsigned). **The two-count decrease is not a navigation repair:** the new JSON census contains every path, and the checker's non-Markdown token scan treats those strings as references. U18's actual shelf-navigation work remains open. Counts cannot substitute for reviewing the route a reader follows.
- Station gate passed for all four planning paths against unchanged `origin/main` at the snapshot. After these final record edits, release maps and verify the station's original FREE fields; tool-only newline normalization may restore original bytes if no state field differs. The final conversation reports that coordination result.
- Planning changes are local and uncommitted/unpublished at this handoff. The prior “Push all” operation published the conceptual-reference reconciliation; it is not recorded here as publication of this new plan.
- Repair sweep: NOT_RUN. No finding above is marked resolved merely by planning it. No new Core acceptance, merge, release or deployment was performed.

## 6. SPOKEN Answer custody register

**Execution check, 2026-09-20.** Five distinct Answer locations in `pointer-emission.md` carry campaign SPOKEN stamps. Repeated header, Φ-status and Pass 7 recap text are not additional answers. All five were introduced in `662ccc23ea38229a98e03cfb1bc68d08750bda6d`, whose parent is `61dde65c3cd89e7ee05ec52331504e4048bff0c7`; commit diff and blame agree. Git author/committer identity establishes arrival, not an exact human utterance or acceptance.

| Location / identifying text | Checked source trail | Human locator and acceptance scope |
|---|---|---|
| Q0 — “A WORD is appended when a word first arrives as seed on L” | Graphic citations; prefix-device Pass 2 Collision I / Sheet I cites “this session” without a repository statement; Pass 4 S6 `I=` and `Q0-later=` are blank | Exact human-statement locator missing in this checked chain. Existing answer also says no second WORD for a word already on L; source tension remains |
| Q1 — “Φ fires when an arriving word must participate in what already exists on the prefix” | D / Pieces 5 and 2 / B4 B6 C9 C10 support bounded source constraints; Pass 4 S6 `Q1-when=` is blank | Exact human-statement locator missing. Source constraints do not establish the whole spoken schedule or acceptance |
| Q3 — “leftover adjacency is arrival order on the wire (B5)” | Local B5 citation; no filled speak-sheet or separately located human statement for the SPOKEN Answer. Its separate CLOSED no-adjacency-trigger clause is not this stamp | Exact human-statement locator missing. Earlier four-location memory inquiry did not establish that Q3 was searched; no such search is claimed here |
| Q5 — “The later pass is the payment into the existing star — Φ, not intern” | Same Collision I / later-arrival chain as Q0; `I=` and `Q0-later=` blank; D1 conflict remains explicitly recorded | Exact human-statement locator missing; neither commit arrival nor this review settles the occurrence dispute |
| Slot II — “a word is the defining pointer cluster” | Prefix-device Pass 2 Sheet II cites “this session”; Pass 4 S6 `II=` blank; acceptance explicitly absent | Exact human-statement locator missing; no acceptance supplied by this pass |

Checked custody anchors: Pass 2 initial `d3ac387b8bf96beed7bf07943e56507d7fe95d20`, restored `413715cf8646e77f72938c2a9e1bac388bc2834d`; Pass 4 speak-sheet `fd3f8b9b0d618c22695206a09553d9d5ebfacddb` (the sole path commit through the base, with those fields blank); Pass 5 receipt `7fd4d2ceacbcafaffe7a4060fd1ab348c4f72478` and Pass 6 receipt path introduction `b06d551ecc1d18bf7778f8e44385ef9b69776bb7`, both reporting not SPOKEN before Pass 7. The earlier `080abea` locator relates to a bind, not that receipt's path introduction. Pass 4's literal copying instruction names Pass 5; it is not generalized here into a ban on every later pass.

**Disposition:** CONFLICT_ROUTED. The register, context prompt, companion and rulings brief now account for all five. Every existing Answer/Stamp byte remains unchanged. “Missing in the checked chain” is not a claim that the human never said it anywhere; the remaining obligation is an exact statement, locator and scope. This pass does not re-stamp or accept any answer.

## 7. Targeted source sightings and current handoff

The following pages were rendered and visually inspected from the supplied PDFs during execution. Page numbers distinguish printed pagination from one-based PDF pages. This is a bounded source check, not a full rereading of either book.

| Source identity | Pages sighted | Result carried into the reason map |
|---|---|---|
| Kauffman, *Knots and Physics*, 4th edition; SHA-256 `5bc2465525431f2a944cfb1af1ee51e24d1bba242bdcb40d277faa2d37581697` | printed 16–17 / PDF 35–36, Figure 8 | Reidemeister moves concern diagram equivalence while preserving knot/link type. Literal cutting or deletion of recorded Lace occurrences is not the source definition; Lace's prohibition concerns substituting equivalence for its history |
| Same Kauffman PDF | printed 323 / PDF 342 | No-slip bound is inclusive: `T₂ ≤ κT₁`. Both strict inequalities in the reason map corrected; no friction parameter admitted as a Lace field |
| Xiao–Zhu, `2501.09223v2.pdf`; SHA-256 `0f5d145d298a90bbe1648b365d97b8833e86be3c31bedd7db900a932ba50bc1a` | printed 2 / PDF 9, Eq. 1.1; printed 38 / PDF 45, §2.1.1 | Indexed sequence positions remain distinct; token embedding and position are combined. Shared vocabulary identity alone does not collapse occurrence history. X1/X2 and dependent matrices now distinguish source representation from prohibited Lace substitutions |

The source correction was reviewed independently against the reason-map dependency set. The reviewer did not claim an additional visual source sighting. No topology operator, tokenizer, encoding or emission rule was selected.

**History A/B handoff:** direct content inspection found both proposals NOT_APPLIED in the companion at `0b2012b`, irrespective of its changed blob. The new [companion qualification](../systems-manifest-ascii.md#repository-update-pass-1--current-qualification) now applies A and B as current reading qualifications: the full star formation includes recorded threading participation, and definition routes, later reuse and retained touch are described together. Manifest Pieces 7–11/15 and the handoff support these bounded sentences; independent source review concurred. Original Passes 1–28 and frozen history handoff bodies remain unchanged. This is presentation reconciliation, not construction or schedule acceptance.

## 8. Execution dispositions

These are work dispositions for the documentation pass. A routed conflict is visible and bounded; its underlying decision remains open. The exact file set and checks are recorded in §9.

| Finding | Disposition | Actual result / remaining obligation |
|---|---|---|
| U01 | CONFLICT_ROUTED | Five-location custody register in §6; current summaries reconciled; exact human locators still missing; emission document untouched |
| U02 | CONFLICT_ROUTED | Package entrances expose the reserved live-law existence/acceptance pair; no false completed-alignment claim; stronger acceptance requirement retained |
| U03 | CONFLICT_ROUTED | Distribution/deploy entrances distinguish unaccepted production proposal from current install rules; no hosting permission or deployment change |
| U04 | RESOLVED_WITH_EVIDENCE | I1/I6 bounded between OPENs; M1 scoped to strand-history observations with explicit counterexamples and operational limits; current summaries updated and independently challenged |
| U05 | RESOLVED_WITH_EVIDENCE | M3's exact frontiers now conditional on the S4.3 ordering premise; environment records inheritance obligation. No schedule selected |
| U06 | RESOLVED_WITH_EVIDENCE | E5 explicitly counts 4 REFUTED, 9 not-a-σ, 1 not-a-candidate, 1 not-yet-σ/UNESTABLISHED and 2 BLOCKED; conclusion is none established in-region. Original receipts dated |
| U07 | CONFLICT_ROUTED | Cards, shape, model, inventory and summaries expose unassigned σ implementation ownership. Existing seven tasks not widened |
| U08 | RESOLVED_WITH_EVIDENCE | Crate map/cards cite Q4's closed POINTER→POINTER permission while preserving timing, arity and requiredness questions |
| U09 | RESOLVED_WITH_EVIDENCE for selected documentation; U19 deferred | Atomic/crate/current entrances carry conceptual-reference classification; historical sit-notes have supersession notices. Executable display labels remain a separately listed debt |
| U10 | RESOLVED_WITH_EVIDENCE | Compact profile separates temporary Core acceptance gate from standing prohibitions; portable law blocks unchanged |
| U11 | RESOLVED_WITH_EVIDENCE | Pointer-outline task retired behind a current preservation instruction; original outline body retained byte-for-byte |
| U12 | RESOLVED_WITH_EVIDENCE | A1 staking and mapping distinguished; A4 is next; brief carries R12, G8′/G10 and source-sighting/probe obligations as proposals, all builds NOT_RUN |
| U13 | RESOLVED_WITH_EVIDENCE | Register expanded from defining documents with qualified families and a reproducible literal-token tally; no identifiers renamed and no claim of a complete repository-wide identifier census |
| U14 | RESOLVED_WITH_EVIDENCE | Current indexes distinguish products, executed plans, proposals and pending passes; transport metadata corrected. Historical measurements remain dated |
| U15 | RESOLVED_WITH_EVIDENCE | History/catalog routes reflect sixth/seventh records and later shelves; frozen holds remain historical; A/B disposition checked and carried in §7 |
| U16 | RESOLVED_WITH_EVIDENCE | Targeted source sightings in §7; K4/K7/X1/X2 and dependent prose/matrices corrected while import prohibitions remain |
| U17 | RESOLVED_WITH_EVIDENCE for documentation; hook code deferred | Entrances distinguish no Lace Core from existing Layer III code and correct reading attribution. Unchanged hook wording remains an exact separately gated candidate |
| U18 | RESOLVED_WITH_EVIDENCE | Prompt lists all 11 stations and actual renderer/hologram exceptions; quiet-door records indexed; force-free limitation documented without override permission |
| U19 | DEFERRED_CODE_OR_DEVICE | Current-source/display wording and hidden-banner defect remain in named HTML/gear candidates; frozen renderer ownership and unchanged release pin explicit |
| U20 | DEFERRED_CODE_OR_DEVICE | Same-origin cache deletion and fallback-recovery defects remain; sentinel-cache, cold-offline and recovery observations still required |
| U21 | DEFERRED_CODE_OR_DEVICE | Gear force-free dispatch limitation exposed in live coordination docs; code repair and disposable-fixture test not performed |
| U22 | RESOLVED_WITH_EVIDENCE | Current prompts/index/companion use named sections through Pass 28 and the current qualification; dated 21-member door is not asserted as today's complete closure |
| U23 | RESOLVED_WITH_EVIDENCE | Governing sources/law distinguished from derivation dependencies across the selected chain; Star membership explicitly narrower than full formation |
| U24 | DEFERRED_CODE_OR_DEVICE | Shared GPU uniform and premature render-success claims remain static findings; no browser/GPU reproduction performed |
| U25 | DEFERRED_CODE_OR_DEVICE | Gear AB/BC/CA binding description mismatch remains under gear:gears; bounded key/picker validation required |
| U26 | RESOLVED_WITH_EVIDENCE | Clock count matches 60 plans; old Wasm32 attempt dated; current JS/WGSL development surface, WebNN context-only role, ixp2 and proposed production/offline scope distinguished |

## 9. Execution receipt

**Authorization:** “Proceed with pass 1.” **Reanchor:** fetch and ff-only pull found the remote unchanged at `0b2012bb221184f684f672f63260c6b1ecd9427b`. Four planning paths were already local before execution. Independent station batches used disjoint paths, station gates and releases. No commit, push, branch integration, source acceptance or release promotion performed by this pass.

**Review:** architecture changes independently challenged against I1/M1/I6/M3; two residual shorthand claims (restart preservation and complete implementation ownership) were found and fixed before closure. Source/history reviewer checked the derivative entrances and A/B qualification; an incorrectly dated extraction heading was corrected. Runtime reviewer checked the development/pin boundary. Final read-only architecture and source/history reviews found no remaining material defect in the selected current dependency sets. Those reviewers did not claim independent PDF re-rendering or browser execution.

**Actual coverage:** 47 changed/new paths: 44 tracked Markdown files modified, two Markdown planning/evidence files and one JSON base inventory added. This is 46 Markdown paths plus one inventory; the original 558-file census remains a base snapshot, not a claim of 558 full semantic audits. All changes belong to the declared candidate pools. Reserved source/authority files, graphics, executable files, release metadata and fixtures match HEAD bytes exactly. No files are staged.

**Verification observed:**

- `git diff --check` passes. The 558 inventory records match base paths, Git blob identities and sizes exactly. The historical companion body matches HEAD after removing only the current top note and appended qualification; the audit log is append-only. The retired outline's original body and the three annotated historical source bodies are preserved.
- Newly introduced relative Markdown links and heading fragments resolve (209 checked, including the final receipt link). Station editors also checked their owned links. This is link validation, not source-truth validation.
- Namespace arithmetic independently reproduced from the actual table: **49 rows, 371 distinct literal tokens, 578 memberships, 125 collisions** (80 with two owners, 25 with three, 8 with four, 7 with five, 5 with six). Counts cover registered rows only. Projection Status-line extraction independently yields **27 stamps over 60 plans**; only `i1` overlaps graphics iteration aliases.
- Canonical fenced law and both portable copies match exactly, SHA-256 `104ba8c9296d640e3302cc96d868d452920021312828ba74ff79a92839d733e0`. The reserved law, AGENTS, manifest, staking and emission documents are unchanged. An initial verification scratch script looked for a portable block in READ_ME_FIRST; that file is an entrance, not the copy. Corrected verification used agent-control and grok-bot-profile and passed; no document change was needed.
- `bash .claude/hooks/check-docs.sh` exits 0: **96 advisories = 7 thin indexes + 89 unsigned historical commits**, with zero stale absence or law-copy drift. From the clean-base 100, two orphan warnings disappear because the JSON inventory is counted as a reference by the checker, as already explained in §5; the other two are the now-complete prompts and coord indexes. The remaining seven thin indexes were not silently called repaired.
- Every editor's station gate passed at unchanged `origin/main = 0b2012b` before release. Root's final maps gate passed for all **21 maps paths** at that same revision; release follows this receipt's final text, with live station files recording occupancy. No claim was force-freed. FREE-field-only newline normalization may restore the original metadata bytes.

**Not run:** new Core code or build, browser/GPU/device reproduction, physical cord operation, live force-free exercise, deployment, release promotion, commit or push. The published conceptual-reference correction preceded this local pass. Its publication is not this pass's publication.

**Next bounded work:** obtain missing human-source/ruling scope where listed; A4 is the next target-source attachment. Runtime candidates and exact tests remain in the plan's separately gated table (U19–U21/U24–U25 and hook wording under U17). Neither the revised proof descriptions nor the applied A/B captions supply an emission schedule or accept σ.

### Actual file manifest

All paths are repository-relative. Transient station occupancy is excluded from this deliverable list and released separately.

```text
.claude/README.md
CLAUDE.md
README.md
docs/README.md
docs/atomic-primitives-map.md
docs/clipboards/README.md
docs/clock/README.md
docs/clock/hcc-a-mechanisms-plan.md
docs/clock/wasm/README.md
docs/coherence-audit-log.md
docs/coord/README.md
docs/history/README.md
docs/history/history-recovered-pass-4-sit.md
docs/history/history-recovered-pass-6-sit.md
docs/history/relationship-evidence-pass-1.md
docs/hologram/README.md
docs/kit/README.md
docs/kit/READ_ME_FIRST.md
docs/kit/distribution-model.md
docs/kit/githack-pwa-deploy.md
docs/kit/grok-bot-profile.md
docs/math-execution-model-pass-3-witness.md
docs/math-execution-model-pass-5-projections.md
docs/math-execution-model-pass-6-arrival.md
docs/math-execution-model.md
docs/namespace-register.md
docs/plans/README.md
docs/plans/lace-context-iter6-pass-4-environment.md
docs/plans/lace-context-iter6-pass-5-crate-proposal.md
docs/plans/lace-context-iter7-pass-2-compute-and-inventory.md
docs/plans/math-execution-wasm-crosswalk-pass-2-reading.md
docs/plans/reduction-pass-2-execution-model.md
docs/plans/reduction-pass-5-rulings-brief.md
docs/plans/repo-update-pass-1-evidence.md
docs/plans/repo-update-pass-1-inventory.json
docs/plans/repo-update-pass-1-plan.md
docs/plans/rust-nostd-branch-contracts.md
docs/plans/rust-nostd-crate-map.md
docs/prompts/README.md
docs/prompts/context-pass.md
docs/prompts/coord-protocol-prompt.md
docs/prompts/lace-context-diagram-prompt.md
docs/prompts/pointer-emission-prompt.md
docs/prompts/rust-target-clipboard-prompt.md
docs/reason-model-map.md
docs/references.md
docs/systems-manifest-ascii.md
```
