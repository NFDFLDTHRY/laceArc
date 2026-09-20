# Repository update pass 4: planning and execution evidence

**Status:** EXECUTED locally, with conditional observations/work pending in §13. Planning observations are preserved in §§1–9; execution begins in §10. **Instructions:** “Plan pass 4”, then “Proceed with pass 4.” **Date:** 2026-09-20.
**Editor / station:** Codex / maps, session `95fe3444c11b`. **Base:** `335429cc0352c2e93c8009c6db57dd977ec783bb`.
**Plan:** [pass 4](repo-update-pass-4-plan.md). This record preserves the difference between reproducing a failure, fixing it, publishing source, observing a client and receiving human acceptance.

**Current source availability:** Cargo A4 subsequently arrived with “Push all”; see [§16](#16-subsequent-cargo-a4-arrival-and-publication-preparation). Earlier thirteen-file/A4-absent statements are retained as dated planning/execution observations.

## 1. Published baseline and arrival

Root fetched all origin refs and pulled main ff-only; local main equals origin/main at the base. The worktree was clean before planning. An independent Git audit matched every pass3 changed path against its [thirty-path manifest](repo-update-pass-3-evidence.md#11-exact-local-change-manifest): **26 modifications and four additions**, in eight linear commits. Each commit's changed paths have exactly one station owner and the corresponding `Agent: Codex · 95fe3444c11b · <station>` trailer.

| Pass3 publication commit | Station | Paths |
|---|---|---:|
| `c8ea3c01438ab457396de783f162e28086a54ae6` | coord | 3 |
| `520b39c52c7efc3156ade62139607df729a4860d` | kit | 3 |
| `a8247c7b2a242834f6f37c2abc3258869a6d9c84` | gearing-meta | 1 |
| `45182eae1d0a2d308dfec3d7f16013ce9f423d0c` | clipboards | 4 |
| `860def7f6a67a41351b8b33d9ff0a3f29f27dea9` | hologram | 5 |
| `d11931c0afc59aea6bf4e54f5d237b3fa84d2faa` | prompts | 3 |
| `9eb33dec640154a150f8faf239b93d5b944d8ae2` | law | 3 |
| `335429cc0352c2e93c8009c6db57dd977ec783bb` | maps | 8 |

The four additions are the pass3 plan/evidence, the control fixture and the actor fixture. The earlier pass3 receipt truthfully describes its local pre-publication handoff and is preserved. This subsection records the later publication; the current plans-index “uncommitted” label is corrected during planning. No old execution receipt is rewritten to pretend publication occurred during its execution turn.

Main has **1,134 reachable commits**. All **sixteen non-main remote-tracking tips** match the previous snapshot; seventeen branches remain visible. The [pass1 arrival classifications](repo-update-pass-1-evidence.md#3-branch-arrival-map) therefore remain applicable. No new missing-content backlog was established; no branch integration is proposed merely because a tip is not an ancestor.

The independent audit enumerated every path using the pinned Git tree, retaining blob/mode/size in its scratch inventory. Counts use the same thirteen-family grouping as the preceding passes:

| Family | Paths | This pass's review scope |
|---|---:|---|
| Repository root | 6 | standing orders/current entrances |
| `.claude/` | 5 | attribution window, advisory limits; no new algorithm work |
| `docs/` root | 44 | Graphic D reader, governing model/source boundaries |
| graphics | 37 | canonical PNGs and inherited citation routes |
| plans | 106 | current proof qualifications, publication, new planning records |
| clipboards | 87 | selected WebGPU/WGSL/WebNN source consumers |
| clock | 95 | lifecycle, SW/release coupling, fallback/install controls and existing fixtures |
| gearing | 31 | claim/RESYNC backends and frozen-renderer boundary |
| hologram | 32 | current result/renderer routes |
| history | 34 | inherited WORD-subsequence qualification; old receipts retained |
| kit | 48 | current task/role/install policy and unresolved production proposal |
| coord | 23 | actual admission/dispatch/state behavior and fixture scope |
| prompts | 22 | current context/procedure routes; no new E7 defect |
| **Total** | **570** | **13/13 families inventoried; bounded claim-level reading** |

There are **491 Markdown files**. Inventory is not semantic coverage of every path. All eleven doc stations and eight gear claims were FREE at baseline. Root's planning claim is only maps; all other review work is read-only.

## 2. Measurements retained at their actual strength

The checker exits0 with **72 advisories**, comprising seven direct-index warnings and **65 unsigned commits among the last200**. Independent per-commit attribution finds135 attributed. Eight newly attributed commits entered the window while eight unsigned commits left it; the drop from73 to65 is window movement, not retroactive attribution.

The checker reports zero unreferenced files, stale-absence findings and law-copy drift. Its inbound-reference matching and direct-index counting remain limited instruments: an inventory mention is not a reader route, and grouped links can reach documents that do not have direct index rows. Current [checker documentation](../../.claude/README.md) and [pass2 methods](repo-update-pass-2-evidence.md) already state the relevant limits. No new graph-analysis or checker-algorithm project is justified here.

The **51 runtime / 36 control / 15 override / six actor** passing results remain the [published pass3 execution evidence](repo-update-pass-3-evidence.md#9-actual-executable-checks-and-independent-challenge). This planning turn executes targeted baseline probes and the repository checker, not another broad-suite run. The new failures occur outside the named prior coverage; they do not retroactively falsify those passing assertions.

Root reopened all four canonical PNGs; no source bytes changed. D1's WORD positions are0,1,3,5,8 and its six POINTER rows are2,4,6,7,9,10. The conceptual-reference classification of HCC-A, Coffee Cup and Water remains accepted. Physical cord work was NOT_PERFORMED; no new model or emission acceptance is asserted.

## 3. Findings admitted to the plan

Locators describe the pinned base. Function names, section headings and exact source passages should be used to reanchor after edits.

| ID / owner | Actual evidence | Proposed closure |
|---|---|---|
| **P4-01 / hologram** | `killGpuSession`, `requestReboot`, `bootGpu`, `main` and lifecycle listeners: rapid hidden→visible destroys a session but the900ms debounce suppresses its recovery. Repeating after watchdog recovery exhausts that fallback. Separately, resolving a pending device after hide publishes a hidden session/RAF | Recovery cannot be dropped merely because the destroyed session was recent. Invalidate suspended generations across existing awaits and release late/unowned resources; preserve one eligible session and visible recovery |
| **P4-02 / hologram** | Actual page→SW probe: first two release providers fail; the third same-origin request carries no-store, but JSON is cache-first. The cached old valid pointer wins with zero network reads; the page eventually displays `fresh` | Fresh-pointer requests bypass stale CacheStorage. Test coupled page/SW transport, available new pointer and unavailable network; preserve exact pin/identity/deadlines and unrelated caches |
| **P4-03 / hologram** | Following actual uncaptured-error handling, scrub10 changes `tVal` and lookref but leaves phase at `t=0000 PIE`. Play sets `playing=true` and button `pause` while RAF count is0 | Update phase independently of GPU submission; make playback advance under one owner or truthfully pause/disable it during fallback, with recovery tests |
| **P4-04 / hologram** | Install listener calls `deferredPrompt.prompt()` without awaiting it, then awaits `userChoice`. A rejecting prompt with pending choice leaves the click pending, prompt retained and an unhandled rejection | Await/consume the prompt outcome; settle failure and maintain one-use event custody across repeated clicks and later events, without claiming an actual install |
| **P4-05 / coord, gearing-meta** | Both `cmd_claim` implementations accept UNKNOWN/missing STATUS and HELD with an empty holder. All six copied-script cases exit0 and overwrite state, contrary to [CLAIMS admission](../gearing/CLAIMS.md#1-claim-exactly-one-shaft) | Explicitly permit documented FREE/same-holder cases; reject reproduced malformed states without writes. Keep valid claims, ownership, BASE and overrides unchanged |
| **P4-06 / gearing-meta, coord fixture** | `resync.sh::cmd_fire` prints FIRED/exit0 with no mutation when block and heading are absent. Python replacement-string handling interprets literal actor backslashes; actual CR/LF splits fields. The default usage branch performs shell redirections | Success requires a supported metadata write; actor text round-trips literally, actual CR/LF rejects before fetch/write; usage is non-mutating and nonzero. Test valid replacement/initialization and all rejected cases |
| **P4-07 / clipboards** | WebGPU clipboard per-page D and PAGE D GPUTexture pin still point near222; fresh PDF66 shows the IDL, matching M-G4/P-G4 | Correct only current texture locators; date historical FM-Wgpu4/old fragment qualifications. Preserve submit IDL218/prose222 |
| **P4-08 / clipboards** | WGSL M-S5/P-S5 cite159 for the discard rule; fresh158 contains the rule and159 the worked example | Distinguish rule158/example159 at current loci and qualify clipboard PAGE E; preserve semantics and original method receipt |
| **P4-09 / clipboards** | WebNN M-N6 and historical clipboard OPEN labels call Issues5/7 “completion/error signaling”; fresh22/33 say execution-error reporting, while32 supplies the output-readback completion distinction | Narrow current issue labels and add historical qualification, retaining direct-dispatch/readback distinction; no API implementation or R10 admission |
| **P4-10 / graphics** | `graphics-close-reading.md` §3 calls four WORD-subsequence pairs adjacent array pairs and calls final gaps0,1,1,2,2 per-arrival counts | Carry existing WORD-subsequence and final-gap/per-STEP qualifications into this omitted reader; preserve D1 and the supported counterexamples |
| **P4-11 / kit** | Current LAW install guide's ALLOW claims Update replaces the same installation/icon; STEWARD attributes every failed install to host/ref, while its own footer says migration/later revisions untested | Qualify only those two operational claims against the current clock README; preserve the host/SHA law and dated install evidence |
| **P4-12 / maps and current entrances** | Current plans index says pass3 is uncommitted although eight commits are now published | Record publication in this evidence and current index; preserve old local-handoff receipts. Later execution carries its actual results into current entrances |
| **P4-13 / conditional evidence** | Browser tool/executables remain unavailable; HCC overlap is unobserved; frozen designation and Cargo A4 absent; release unchanged | Record exact missing conditions and available observations independently, without treating them as implementation failures or completed tests |

**System addresses:** P4-01–04 are Contract III VIEW/SHIP behavior; P4-05/06 are TEAM coordination; P4-07–09 are reference-shelf source custody; P4-10 is D1/ENVIRONMENT scope; P4-11 is SHIP guidance; P4-12 is current arrival/navigation; P4-13 retains TARGET/SHIP and human decision boundaries. No new Core box, type or operator is introduced.

## 4. Runtime counterexample methods

The runtime reviewer used Node VM probes extracted from the pinned viewer/SW and the existing fixture helpers. A saved replay pins the source revision with `git show`, removes test registration from the helper load and executes **only the following five scenarios**. Root independently replays these same cases. DOM, GPU acquisition, events, timers, CacheStorage and network are controlled doubles; no external request, browser or install is performed. Successful probe exit means the baseline defects reproduced, not that a repair passed.

| Probe input / sequence | Observed baseline outcome |
|---|---|
| Successful first frame; hide and show within900ms; allow the1500ms watchdog recovery; repeat rapid hide/show and allow its timer | First loss: no session/RAF but `GPU submitted` retained. After the repeated sequence: session absent, boot/reboot flags false, RAF0 and watchdog exhausted; fallback persists until an unrelated event |
| Defer `requestDevice`; hide; resolve that device promise | Hidden session published, RAF1, `GPU ready`, device destruction count0 |
| Reject first two release providers; route the page's third no-store request through actual SW fetch listener; cache holds old valid pointer while network double holds newer valid pointer | Three provider attempts, zero network reads, no navigation, one SW check and `fresh` |
| Submit a frame, deliver actual uncaptured-error callback; scrub10; click Play | `tVal=10`/crossing reference with phase still `t=0000 PIE`; Play reports pause/playingtrue while RAF0 |
| Supply a deferred install event whose `prompt()` rejects and `userChoice` stays pending; invoke actual Install handler | Click remains pending, `PWA on` unchanged, deferred event retained, unhandled rejection observed |

The phase-label row records the text value, not a rendered image. The source fixture's isolated fetch doubles do not route through the SW; its SW case exercises activation/cache retention, explaining why the coupled stale-pointer defect was outside its51 checks.

Lifecycle completion must cover resource ownership across the existing startup RAF, adapter, device and bake awaits. The directly measured hidden-device case demonstrates one seam. Preventing obsolete acquisition, releasing devices acquired before session ownership, and stopping stale callbacks from overwriting a newer session are the corresponding invariant across those awaits; they are **proposed completion requirements**, not additional observed browser leaks. GPU acquisition deadlines and broader caching architecture remain outside the demonstrated repair need.

## 5. Control counterexample methods

Root independently reran the control reviewer's copied-script probe. Each run creates a private temporary tree containing the actual `coord.sh`, `claim.sh` and `resync.sh`, synthetic claim/signal files, cwd/history sentinels and a Git stub permitting only the required fetch/ref-read forms. It removes that tree afterwards. No real claim, live signal, override or remote operation is exercised.

| Cases | Count | Observed baseline |
|---|---:|---|
| UNKNOWN STATUS, missing STATUS, HELD with empty holder, through doc and direct gear claims | 6 | Exit0; original synthetic state overwritten by HELD/Fixture |
| Fire with neither STATUS block nor expected heading | 1 | Exit0; FIRED printed; file bytes unchanged |
| Literal actor text `Fixture\nSecond`, through fire and clear | 2 | Exit0; backslash-n interpreted as a line break in the stored actor |
| Actual LF or CR in actor, through fire and clear | 4 | Exit0; actor splits a line/field rather than being rejected |
| No arguments, synthetic cwd containing a file named `agent` | 1 | Exit1 after creating a file named ` | clear ` through the usage string's redirection syntax |
| **Total** | **14** | **Baseline anomalies reproduced; repair NOT_RUN** |

The documented admission contract already requires FREE or HELD by the same actor. Rejecting the six malformed cases restores that contract; it is not an expiry or override policy. Rejection of actual CR/LF in RESYNC actors is a **proposed serialization constraint** for its one-line metadata, not authentication or a naming allowlist. Literal backslashes, apostrophes and Unicode must still round-trip.

The current control fixture already copies all three scripts, so no new harness is needed. Its existing36 cases and the15 override cases are required execution guards. This review does not establish atomic coordination across independent filesystems or a complete adversarial-input policy.

## 6. Source observations and consumer corrections

The reference reviewer freshly viewed **six one-based PDF pages** using the supplied files. Text extraction located passages; visual page inspection supplied the cited observations. Full-text searching to locate an issue is not a full-document review.

| Supplied source | SHA-256 | Fresh pages and observation |
|---|---|---|
| WebGPU | `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1` | **66:** GPUTexture IDL, createView/destroy and immutable attributes. Current M-G4/P-G4 already point here |
| WebGPU Shading Language | `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` | **158:** §9.4.11 discard rule, helper conversion and observable-effect scope. **159:** worked example |
| Web Neural Network API | `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` | **22 / Issue5** and **33 / Issue7:** execution-error reporting, both referring to issue778. **32 / §8.3.1:** dispatch lacks a direct completion signal; output readback observes results |

Exact current consumers:

- **WebGPU:** clipboard per-page D and PAGE D pin; historical FM-Wgpu4 and original fragment need a dated qualification. M-G4/P-G4 need no change. A blanket222→66 replacement would corrupt the closed submit chain.
- **WGSL:** M-S5 locus/algorithm and P-S5 citation/diagram distinguish158 rule from159 example; clipboard PAGE E receives the current qualification. Preserve the original158–160 method receipt and correct159 example cite. The existing algorithm was not shown wrong; discard must not become immediate function termination.
- **WebNN:** M-N6 Open gaps carries the precise issue label; clipboard D7/P5/P6 repeats remain historical, with a dated qualifier. Existing M-N6 algorithm and P-N6 later-readTensor diagram already agree with the source. Completed historical Pass5/6 bodies are preserved.

No new WebGPU/WGSL Pass6 execution, WebNN admission, validator configuration or artifact result follows. Closed W2, submit218/222, Kauffman and Xiao corrections retain their prior scopes. The supplied corpus remains **nine PDFs plus three conceptual-reference texts**; A4, the original A1 text, A3/A10/A11 remain absent. A4's next question is unchanged: Cargo `build-std` crate-list, lockfile and `rust-src` support, one source at a time.

## 7. Proof reader, install guidance and excluded scope

`graphics-close-reading.md` §3's pair0001/0003 has POINTER0002 between its raw indices. The four pairs are consecutive occurrences in the WORD subsequence, as already explained in [the crate map](rust-nostd-crate-map.md) and historical relationship evidence. Its gap vector0,1,1,2,2 follows from final D1 row order; [environment F-H5/E7](lace-context-iter6-pass-4-environment.md) and [reduction M3](reduction-pass-2-execution-model.md#x5--theorems) retain the extra S4.3 premise for treating these as STEP counts. The proposed one-section correction carries existing qualifications; E7/X7 and their current prompt consumers need no repeated repair.

The [current install policy](../kit/githack-pwa-deploy.md) is governing guidance. Its ALLOW row guarantees same-installation replacement and STEWARD row presents host/ref as the exhaustive cause of install failure, while its own footer excludes migration/later-revision verification. The [clock entrance](../clock/README.md) already distinguishes URL selection from installed identity, cache retention and rendering. Two operational wording changes can reconcile this without changing hosting law or taking the unresolved production-exception decision.

**Recorded but excluded from automatic correction:** algebra S4.2 and the emission file share Φ notation using `R` as both eligible-index set and an operand yielding `r₁…rₖ`. At `|L|=2`, the displayed operand tuple `(0,1)` is not an element of the eligible-index set `{0,1}`. This is an inherited domain-formalization ambiguity, not evidence for choosing a tuple length, order or emitter. A child-only rewrite would conceal the inherited source ambiguity. Record it when formalization is required; protected source/model text remains unchanged in this pass.

The five SPOKEN custody locations Q0/Q1/Q3/Q5/slotII and separate occurrence conflicts remain unresolved at their existing scopes. R1/R6 build/encoding, R3/R4/R5/R9/R11 lifecycle/concurrency, production/#14-R10/#15 questions and emission acceptance are not taken by this planning work. None must be resolved merely to repair a viewer or a malformed claim guard.

## 8. Capability, release and conditional work

Fresh planning checks found no advertised browser service/tool, no Chromium/Chrome/Firefox executable on PATH, and no binary at the bundled Playwright Chromium/Firefox/WebKit paths. The Node module's presence does not supply a browser. Pass3's actual launch failed for a missing executable; that remains dated launch evidence, not a new successful or failed launch claimed here. No installation/download was attempted.

| Boundary | Current evidence / condition |
|---|---|
| Browser/GPU pixels and actual lifecycle scheduling | NOT_RUN; needs usable browser/service and exact candidate URL/revision, viewport, camera and adapter/backend |
| Touch/keyboard, computed overlay visibility, t2/t10 image | NOT_RUN; synthetic state changes do not establish displayed or hit-tested behavior |
| HCC header overlap | Static fixed-offset risk remains unobserved; no layout repair triggered |
| Frozen gearing | Human-designated editor absent; [prepared pass2 patch](repo-update-pass-2-evidence.md#10-prepared-frozen-renderer-edit) remains unapplied |
| Offline | First uncontrolled, warmed controlled and worker/REF/linked-view availability remain separate NOT_RUN observations; cache isolation/freshness do not establish an offline carrier |
| Android/WebAPK/identity migration | NOT_RUN for this candidate; original install receipt remains dated evidence for its own revision |
| A4 | Absent; no conditional source intake or build performed |
| Release | LATEST remains **ixp2 / `3b619929182e98ccaa348a2fc696b98c2e416a2e`**; manifest and icons unchanged. Published335429c is a source revision, not a promoted release |

The earlier bounded21-asset comparison still has the same fifteen identical/six differing paths relative to the pin; pass3 changed an already-differing viewer. That set is not a complete network closure or a release gate. New cache/lifecycle repairs would still require candidate-specific browser/device evidence before any requested promotion.

## 9. Planning validation and handoff

Independent reviews cover arrival/inventory, current architecture, proof/source consumers, coordination and runtime. Root checked the controlling code/passages and canonical PNGs, reran the fourteen control anomalies and five runtime scenarios, and assembled the exact work packages. Review agreement is not human acceptance or executable repair.

Final plan review strengthened one completion requirement: a new install event arriving while an old prompt/choice remains pending must survive the old operation's cleanup. This is a required custody regression, not a sixth measured runtime scenario. Review also corrected “source disagreement” to “inherited source ambiguity” for the shared Φ notation; the two cited texts agree in using the ambiguous notation. Control, source and whole-plan reviewers found no further material scope change necessary.

**Planning validation:** PASS. Independent review is complete. All161 relative link targets across the three planning files and all8 new/changed anchors resolve; whitespace checks pass. The repository checker exits0 with72 advisories (7 direct-index,65 attribution), with no unreferenced paths, stale absence claims or law-copy drift. All568 protected tracked files and all12 supplied sources retain their baseline bytes; tracked modes are unchanged. The only content changes are the two new pass4 documents and the plans index, with nothing staged and HEAD unchanged. The maps gate passes at335429c, equal to origin/main. Following this final receipt update, release maps and confirm all19 claims are FREE and the claim file retains its preclaim bytes before handoff.

**Actual work:** planning files and read-only/synthetic baseline probes only. **Repairs and expanded repository fixtures:** NOT_RUN. **Browser/device/physical:** NOT_RUN / NOT_PERFORMED. **Commit/push:** none for pass4. Earlier publication and accepted conceptual-reference classification remain intact.

## 10. Execution reanchor and choices

The human authorized execution on 2026-09-20. A fresh full fetch and ff-only pull leave main and origin/main at335429c, the reviewed base. The three planning-file changes were present at entry. Before repairs, root captured hashes and modes for all570 tracked paths, all source-directory files and the nineteen FREE claims. Planning observations in §§1–9 describe their earlier moment, not the later repair state.

**P4-03 implementation choice, recorded before repair:** retain `playing` as user intent, but disable and label playback as paused/unavailable until a GPU session successfully submits. Manual scrub remains available and updates both phase and reference immediately, while setting play intent to paused. Fallback does not advance time. Successful submission restores the control from retained intent. This adds no second timeline or frame owner.

**Source-carry amendment, recorded before editing its consumer:** the newly supplied `The-rustc-book.txt` is the same A1 already mapped: SHA-256 `4a30e620a066c8157de4af674196df81694bb183ea09cef0a89dd8dbec4e74d3`, 1,056,614 bytes and31,482 LF-delimited lines, matching the clipboard's original identity. A4 has not arrived. Admit only a dated A1 re-sighting/source-availability addendum in `docs/clipboards/rust-target-clipboard.md`, with current context/evidence carries. Preserve the original mapping and all historical absence receipts. This adds one actual source-consumer path to the26 unconditional candidates, for a27-path execution ceiling; the two renderer paths remain conditional and unused. Target builds, A4 intake and human rulings remain outside the work performed.

**Execution checks and dispositions:** recorded below. No pass4 commit, push, installation or release promotion has occurred.

## 11. Execution dispositions

| Finding | Actual local result | Evidence boundary |
|---|---|---|
| P4-01 | Rapid visible recovery is not discarded after session destruction. Suspension invalidates pending startup/adapter/device/bake work, disposes late/unowned devices once, and cancels startup RAF/watchdog custody. Stale completion/callbacks cannot replace a newer session or its status/timer ownership | Controlled lifecycle/GPU doubles, not browser scheduling or device evidence |
| P4-02 | Actual page-to-SW release lookup bypasses CacheStorage for a same-origin no-store request. Available network selects the newer valid pin; unavailable network retains the pin and reports release unavailability | Existing identity/path/SHA/deadline guards remain; no offline or install-migration claim |
| P4-03 | Phase/reference follow manual scrub without a GPU. Playback is explicitly paused/unavailable until successful submission; retained play intent resumes under the existing frame owner | UI state and timeline assertions are synthetic; no rendered-layout claim |
| P4-04 | Install snapshots and consumes the event before awaiting its prompt; rejection settles the handler. Repeated clicks are serialized, and older completion cannot discard a newer delivered event | No actual installation or installability observation |
| P4-05 | Both claim backends reject UNKNOWN/missing STATUS and HELD with an empty holder. FREE and valid same-holder admission, other-holder refusal and existing BASE behavior remain | Actual scripts, private synthetic claims; no expiry or override-authority change |
| P4-06 | RESYNC requires a supported metadata write before reporting FIRED; literal actor text is preserved, actual CR/LF rejects before fetch/write, and usage causes no shell redirection | Actual copied backend and synthetic signal/history/cwd; live RESYNC and CLAIMS remain unchanged |
| P4-07 | Current texture locators use PDF66, with dated qualification of earlier approximate222 references | M-G4/P-G4 and submit IDL218/prose222 preserved; historical sightings are not rewritten |
| P4-08 | M-S5/P-S5 distinguish discard rule158 and example159, with a dated clipboard qualification | Original158–160 method receipt, correct example cite and algorithm semantics preserved |
| P4-09 | Current Issues5/7 label narrowed to execution-error reporting; historical clipboard repeats receive a dated qualification | Dispatch's lack of a direct signal remains separate from output readback; no WebNN implementation or R10 admission |
| P4-10 | Graphic D reader §3 distinguishes consecutive WORD-subsequence pairs from adjacent array indices, and final gaps from per-STEP counts under S4.3 | M3's alternative partition illustrates missing boundary information, not an adopted schedule; model/source bytes unchanged |
| P4-11 | Only two operational claims changed: Update selects a pinned URL without proving installation/icon migration; host/ref checks are diagnostic rather than exhaustive causes | Hosting/SHA law, original dated install evidence and production-exception boundary preserved |
| P4-12 | Current entrances now route to pass4 and carry pass3's actual publication; earlier local-handoff receipts remain untouched | Source publication, executable checks, acceptance and promoted release remain separate |
| P4-13 | Fresh capability check finds no usable browser executable; renderer conditions remain unmet. Newly supplied rustc text is the exact previously mapped A1, re-sighted under the recorded amendment | Browser/device/offline NOT_RUN; frozen gearing NOT_APPLIED; HCC overlap unobserved; A4 still absent |

HCC-A, Coffee Cup and Water retain the human's conceptual-reference classification. No pointer-emission Answer/Stamp, human custody locator, accepted schedule, Core implementation or reserved ruling changed. The shared Φ-domain ambiguity remains recorded, without choosing an emitter or changing protected model text.

## 12. Executable checks and independent challenge

Fixtures run actual source text in isolated copies or controlled Node VM contexts. Revision selection uses `git show` without changing the checkout. No fixture changes real claims, live RESYNC, history or network state. Existing fixtures were extended; no test file or dependency was added.

| Check | Actual local result | Baseline challenge |
|---|---|---|
| Control fixture | **75/75 PASS** | Same final fixture at335429c: **53 PASS /22 FAIL**; all original36 pass in both runs |
| Existing force-free fixture | **15/15 PASS** | Existing valid/invalid override behavior retained; no live override |
| Runtime fixture | **74/74 PASS**, independently rerun;0 failed/cancelled/skipped | Same final fixture at335429c: **51 PASS /23 FAIL**; original51 guards all retained |
| Repository checker | **Exit0;72 advisories**, no unreferenced paths, stale absence findings or law-copy drift | Same7 direct-index /65 attribution advisories as baseline; no checker algorithm change |

The39 added control cases include all14 planning anomalies, umbrella-gear dispatch, valid admission/reclaim/refusal, valid RESYNC replacement and heading-only initialization, literal backreference/backslash/apostrophe/Unicode/shell text, CR/LF rejection and safe usage with/without a cwd file named `agent`. Both claim scripts are byte-identical outside `cmd_claim`; live RESYNC/CLAIMS are unchanged. The independent reviewer reproduced75/75,53/22 and15/15.

**Review-discovered fixture defect, repaired:** conditional invocation of the Bash case runner suppressed `errexit` for an unguarded Python preservation assertion. A disposable injected failure initially still reported75 passes/exit0. Explicit failure propagation now reports72 passes/3 failures and exits1 for the three affected metadata/history cases. This fault-injection challenge is separate from the75 normal assertions and checks that the fixture can reject a broken preservation claim.

The23 added runtime cases cover two quick lifecycle cycles with/without prior watchdog use; visibility/pagehide/freeze startup cancellation and late-device disposal; late adapter and bake ownership; stale watchdog custody; actual page→SW fresh/unavailable transport; no-GPU/post-error/repeated-submission fallback control; and install rejection, accepted/dismissed choices, repeated clicks and overlapping newer events. All original51 case bodies remain; the harness gained the controlled acquisition, lifecycle and transport capabilities needed to reach these paths. The install rejection fixture also handles its deliberately rejecting promise so the old source fails a local settlement assertion rather than only producing runner-global noise.

**Runtime review corrections:** root identified status/fallback writes before the generation check after bake completion. Guards now run immediately after the await and before catch-path fallback/status work. Two retained regressions cover an old suspended attempt settling with null or rejection after a newer session is live: current session, GPU state, RAF, status and fallback are unchanged; the old device is disposed once and stale inline baking is not invoked. The independent reviewer reran the final74 cases. The editor also moved the watchdog generation guard before clearing the shared timer handle, and strengthened the existing watchdog test so an old queued callback cannot prevent cancellation of the current timer.

**Independent targeted mutation challenge:** removing only those two bake guards from the actual page source in memory makes both retained stale-bake cases fail: the stale null result changes current `gpuLive` to false, and stale rejection invokes `bakeMain` once. The unmodified repaired source passes both. This validates detection of that specific seam without altering the checkout or claiming a browser observation.

Source/proof reviewers independently reopened the six retained PDF page renders and Graphic D, verified source hashes and A1's exact identity/line locators, and checked the named section boundaries. All original clipboard bytes can be recovered by removing dated additions and reversing exactly seven authorized current lines. The Graphic D file is unchanged outside §3; kit is exactly the two recorded replacements. No whole reference campaign or Core proof was re-executed.

## 13. Available observations and remaining conditions

Execution preflight independently confirms no Chromium/Chrome/Firefox on PATH and no Chromium/Firefox/WebKit executable at the paths reported by the installed Playwright module. No new browser launch, package installation or download was attempted. Node is v24.19.0. The prior pass's missing-executable launch remains its own dated result.

- Browser/GPU pixels, actual lifecycle scheduling, touch/keyboard, computed overlay visibility and t2/t10 images: **NOT_RUN**.
- First uncontrolled offline, warmed controlled offline and worker/REF/linked-view availability: **NOT_RUN** independently of the synthetic cache-policy check.
- Physical Android/WebAPK installation and identity migration: **NOT_RUN**. Physical cord work: **NOT_PERFORMED**.
- Frozen gearing: **NOT_APPLIED**, with no human-named designated editor session. HCC header overlap remains unobserved, so neither conditional renderer path changed.
- A1: exact original source restored and targeted passages re-sighted; thirteen supplied attachments are now available. Cargo A4 and A3/A10/A11 remain absent. No target build, validator/artifact check or source import occurred.
- Release remains **ixp2 / `3b619929182e98ccaa348a2fc696b98c2e416a2e`**. LATEST, manifest identity/start/scope, icons and lookrefs are unchanged. Local source repairs are not a release promotion.

The earlier bounded21-asset comparison remains fifteen identical/six differing paths: this pass's page/SW changes lie within the existing differing set. That set remains neither a complete network closure nor a release gate.

## 14. Exact local change manifest

The recorded A1 amendment yields **27 paths across nine stations:25 existing files and two new pass4 documents**. No other repository file is an execution deliverable.

| Station | Exact paths |
|---|---|
| maps (4) | `docs/plans/repo-update-pass-4-plan.md`; `docs/plans/repo-update-pass-4-evidence.md`; `docs/plans/README.md`; `docs/coherence-audit-log.md` |
| coord (3) | `docs/coord/coord.sh`; `docs/coord/README.md`; `docs/coord/tests/control-regressions.sh` |
| gearing-meta (2) | `docs/gearing/claim.sh`; `docs/gearing/resync.sh` |
| hologram (6) | `docs/clock/lace-projection.html`; `docs/clock/sw.js`; `docs/clock/tests/runtime-regressions.mjs`; `docs/clock/tests/README.md`; `docs/clock/README.md`; `docs/hologram/README.md` |
| clipboards (7) | `docs/clipboards/webgpu-clipboard.md`; `docs/clipboards/wgsl-mechanisms.md`; `docs/clipboards/wgsl-ascii-machinery.md`; `docs/clipboards/wgsl-clipboard.md`; `docs/clipboards/webnn-mechanisms.md`; `docs/clipboards/webnn-clipboard.md`; `docs/clipboards/rust-target-clipboard.md` |
| graphics (1) | `docs/graphics-close-reading.md` |
| kit (1) | `docs/kit/githack-pwa-deploy.md` |
| law (2) | `README.md`; `docs/README.md` |
| prompts (1) | `docs/prompts/context-pass.md` |

## 15. Final review and local handoff

Independent runtime, controls, source/proof and current-route reviews are complete, with the review corrections and targeted challenges recorded in §12. The exact diff matches all27 paths in §14, across nine owners:25 existing files and two new documents. No conditional renderer path changed.

**Final content validation: PASS.** All526 other non-claim tracked files retain their baseline SHA-256 values, and all570 tracked file modes are unchanged. All13 supplied attachments retain their bytes/modes; the source-directory snapshot is unchanged. Protected material includes canonical PNGs, AGENTS/law/manifest/emission/staking, models, the eight contract shafts, live RESYNC/CLAIMS, worker, release/manifest/icons/lookrefs, IR and frozen/HCC/nostd HTML. Within changed files, the named geometry/shader/worker-transport/release-selector blocks and command/reader boundaries remain intact. The context's E7 procedure is unchanged; the coherence log has exactly one appended tick.

All574 relative link targets across the changed Markdown files and all31 new/changed anchors resolve. Whitespace checks pass. The final repository checker exits0 with the same72 advisories:7 direct-index and65 attribution; no unreferenced paths, stale absence findings or law-copy drift. HEAD remains335429c, all remote-tracking refs match the execution snapshot, and nothing is staged.

All nine station batches passed their gates at335429c. The eight completed non-maps claims were released normally and retain their preclaim bytes. Maps' normal release follows this final receipt write; the read-only handoff check must confirm all nineteen claims FREE with their baseline bytes and the exact27-path unstaged diff. No live claim or signal override was exercised.

**Local handoff:**74 runtime /75 control /15 override checks pass; baseline and mutation failures demonstrate the named repairs. Source/proof acceptance, unavailable browser/device observations and release promotion retain their explicit boundaries. No pass4 commit, push, installation, dependency, source import or Core implementation occurred.

## 16. Subsequent Cargo A4 arrival and publication preparation

**2026-09-20, after the §15 local handoff:** the human instructed “Push all” and supplied `14-The-Cargo-Book.txt`. This satisfies the source-arrival condition already authorized in pass4 §2e. The bounded [Cargo source mapping](../clipboards/rust-target-clipboard.md#repository-update-pass-4--a4-cargo-source-mapping) is added to the same rust-target clipboard, with current README/context/plans-index carries. The exact27-path/nine-station manifest is unchanged; prior execution and source-absence receipts remain historical.

Source identity: **SHA-256 `9d7048e1ecb50ae5ed95dc64fe504cf968a4a9a7c2cc9c903e48ae38d163c0a5`**, **1,097,071 bytes**, **21,712 LF-delimited lines**. The title and `build-std` section establish this as the requested Cargo book; the supplied conversion has decoding/glyph loss, so raw bytes and LF locators are retained. No version, publication date or current implementation behavior is inferred from the filename.

The bounded reading sources comma-separated crate-list selection and defaults at8748–8752, nightly Cargo/rustc and `rust-src` prerequisites at8732–8734/8758–8760, plus general lockfile and `--locked` behavior. It does not establish the wasm64 transitive crate closure, mandatory `compiler_builtins` spelling/selection, build-std sysroot lockfile representation, path-only G1, exact `rust-src` contents, configured-validator behavior or artifact reproducibility. No Cargo command, source import, fixture, dependency, build or R1/R11/R12 decision was made. Fourteen supplied attachments are now available.

Independent source review passed: exact identity and all cited LF ranges checked; pre-A4 clipboard bytes are recovered by removing only the newest banner/addendum. Review corrected `--locked` wording to distinguish a missing lockfile or resolution requiring its change from arbitrary prior file edits. Earlier mapping, A1 and absence receipts remain intact. Runtime/control source and fixtures are unchanged from the independently reviewed74/75/15 execution results.

**Pre-publication validation: PASS.** Exactly27 files retain the nine-station scope. All526 protected non-claim paths, existing modes and all14 supplied attachments are unchanged; the post-handoff delta is confined to seven source/current-carry files already in that manifest. All581 relative link targets and40 new/changed anchors resolve. Whitespace checks pass; the repository checker exits0 with the same72 advisories before these new commits enter its history window. Nine publication claims are held by Codex on335429c; other claims are untouched. No executable repair changed after its reviewed test receipt.

Publication is organized as nine station commits, each carrying `Agent: Codex · 95fe3444c11b · <station>`, with a fast-forward update of main. Shell push credentials are unavailable; the connected GitHub integration creates the same scoped trees, checked against locally computed Git tree identities. Final publication validation compares every committed blob/mode against the reviewed worktree before moving main, then verifies the fetched tree and releases claims. Release identity remains ixp2; publishing source does not promote LATEST or verify a client.
