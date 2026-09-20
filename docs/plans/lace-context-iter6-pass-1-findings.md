# Iteration 6, pass 1 — findings: what the human's record holds that the repo does not

**Status:** record. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Method:** [iteration 6 plan](lace-context-iteration-6-plan.md) §2 pass 1; the extraction prompt of [iteration 5 pass 4 §3](verification-iter5-pass-4-plan.md), run 2026-09-19 in a session with memory access.
**Landing rule (fixed before anything landed):** every item below is **`[PROPOSAL]`**. None is `SOURCE`. None is `SPOKEN`. An item becomes `SPOKEN` only when the human writes it in-repo.
**Grounding:** memory files and chat transcripts read by the extracting session — `HUMAN_REPORTED` at one remove (an agent's filing of the human's words), never `VISUALLY_OBSERVED` of a cord. Evidence state for every row: **`UNESTABLISHED`** as a Lace fact.

**Provenance caveat that applies to every dated row:** memory files carry a last-write date, not per-line dates, so a `[MEM]` date is an upper bound. A `[TXT]` date is the chat's last-updated time. A `[SUM]` item comes from a model-written chat digest and is never quotable.

---

## 1. The four gaps — what came back

These are the four claims iteration 5 pass 4 §1 recorded as *said in session, not in repo*. This is the yield.

| Gap | Result | What memory holds | Strength |
|---|---|---|---|
| **a.** original text kept, or pointers into dictionary entries suffice | **NOTHING FOUND** as a ruling | Two adjacent, unreconciled items: *"the lace is the raw data itself … every input laid down exactly once in arrival sequence, data once, never copied"* (PARAPHRASE `[SUM]`, 2026-06-10, MEDIUM) cuts toward keeping input; *"identity is position and touch set, never content"* (PARAPHRASE `[SUM]`, 2026-06-11, MEDIUM) cuts away. Invertibility at 100% over 104,510 sentences was **measured**, not ruled (2026-08-03) | `[PROPOSAL]` · `UNESTABLISHED` |
| **b.** later arrival writes a new WORD row, or only pointers | **PARTIAL** | The human's words, VERBATIM, 2026-08-01 `[TXT]`: *"No, if fuzzy appears in the sentence or paragraph … then we've got reason to make a new a new tie as block cascading down to the lowest layer."* Ledger line tagged `[EW]` same session, VERBATIM: *"Trigger is a new element arriving inside a window that already contains something. Not repetition of an existing pair."* — repetition alone writes nothing; the **tie** is what is written. **Quarantined:** *tie / window / block* are ShoeLacey-lineage vocabulary (§4). Whether that lineage's "block" is D's WORD row: **NOTHING FOUND** | `[PROPOSAL]` · quarantined |
| **c.** what a word is to the machine | **ANSWERED in the older lineage** | *"Word identity IS the word's touch structure — equality is structural, never lexical"* (PARAPHRASE `[MEM]`, ≤2026-08-28, HIGH). *"A dot is a cluster of relationships"* (PARAPHRASE `[MEM]`, HIGH). *"You cannot define what a word is — the structure has to define the word"* (PARAPHRASE `[MEM]`, HIGH; used to reject stopword lists, POS tags, content-word filters). Corollary the human enforced: a spelling-equality test at admission is an imported definition of a word, and so is a tokenizer | `[PROPOSAL]` · quarantined |
| **d.** when a POINTER is emitted | **PARTIAL — three unreconciled triggers, none in laceArc vocabulary** | (1) windowed novelty, 2026-08-01, VERBATIM above; (2) star-similarity licenses ties, 2026-08-15/20, PARAPHRASE, MEDIUM-HIGH; (3) bi-point bind set *at resolution* of an UNK, 2026-06-10 `[SUM]`, MEDIUM. Also on record and **never accepted**: *who-lays-the-tie* — stations report candidate touches, a code-owned step writes pointer records — status **PENDING-EW** (2026-06-11 `[SUM]`) | `[PROPOSAL]` · quarantined |

**What this establishes:** the four campaign sentences on `pointer-emission.md` Q0 / Q1 / Q5 / slot II have **no corroboration** in the human's memory record. Memory holds an *older* lineage's answers to (c) and (d), in that lineage's vocabulary, and holds **nothing** that says the human carried those answers into laceArc. That is not evidence they are wrong. It is evidence they are unwitnessed.

---

## 2. Custody of the four SPOKEN stamps — a git finding, not a memory finding

Iteration 5 pass 4 §1 says pass 7 *"blurred the boundary."* Read against git, it is sharper than that.

| Step | Commit | What it says |
|---|---|---|
| Pass 4 §S6 defines the only route to SPOKEN | `fd3f8b9` | *"A filled line here is the only thing Pass 5 may copy as SPOKEN."* Four lines: `I =`, `II =`, `Q0-later =`, `Q1-when =` — **all blank** |
| Pass 5 receipt | `7fd4d2c` | *"Speak-sheet \| blank"* · *"Not SPOKEN"* |
| Pass 6 receipt | `080abea` | *"Not SPOKEN"* |
| Pass 7 writes the Answer lines | `662ccc2` (19:12 −0600) | *"This pass writes the campaign sentences onto Q0, Q1, Q5, and slot II."* 196 lines changed, 134 deleted. **The speak-sheet in `fd3f8b9` is its only commit and is still blank on the tip.** |

**Finding:** the campaign's own gate — a human-filled speak-sheet line — was never satisfied, and pass 7 stamped `SPOKEN (campaign)` anyway. The stamp's provenance is chat, at best. `662ccc2` is the one commit in the sequence with no agent trailer. This is already on the human's docket as *the SPOKEN widening*; this row adds that the widening was not only definitional — the campaign bypassed its own procedure.

**What this pass does with it:** nothing to `pointer-emission.md`. Reported here for the law station and the human.

---

## 3. Four Hands statements the emission file does not cite

`pointer-emission.md` records the HANDS CONFLICT on Q0 / Q5 against D1 `0003`, D5 and D2. The four PNGs, read directly (`VISUALLY_OBSERVED`, 2026-09-19), carry the same fact at **governing-rule level in three graphics**, none cited there:

| Panel | Verbatim from the PNG | Weighs on |
|---|---|---|
| **A13** checklist | *"Every word occurrence preserved"* | Q0 / Q5 SPOKEN ("a second WORD row is not required") |
| **B12** rule 2 | *"Every occurrence is kept (no deletions, no edits)"* | same |
| **C12** rule 2 | *"Every word occurrence is kept (no deletions, no edits)"* | same |
| **C10** bullet 2 | *"Every word occurrence is preserved as another segment"* | same |

C10 also **draws** it: *"The customer paid the restaurant for the dessert slice"* is rendered as nine beads with *the* appearing three times as three separate passages inside one sentence. The Q0/Q5 campaign sentence stands against four governing-rule statements across three graphics and one drawn counterexample, not one row of D1.

Two checks made while in the images, both confirming the file: D1 fan-out after successive WORDs is 0, 1, 1, 2, 2 as stated; all six D1 pointers carry exactly two refs, six for six, with D2 drawn as `ref_A` / `ref_B` — the picture never writes *"exactly two"* and never draws anything else. Q2 CONFLICT is stated fairly.

**Landing:** these are graphics-station facts. Recorded here; the graphics close-reading is not edited by this campaign.

---

## 4. Everything else memory holds about the Lace, with the quarantine applied

Vocabulary in the human's record that **is not laceArc vocabulary** and must not be mapped onto WORD / POINTER / Φ: *lace (as closed loop), strand, block, touch, touch-on-touch, tie, star (as evaporating geometric lens with radius = character value), circuit, cut, window, frontier, degree-of-separation-as-dimension, Unit, seed / recurrence links.* AGENTS.md dates ShoeLacey as *"a dated other repo, not this law"* and `pointer-emission.md` lists *exact-match ties* and *"touch grows lace"* as non-answers. Every row below that uses those words is therefore a **history note**, not a candidate for any Answer line.

| Item | V/P | When | Conf | Kind | Bearing on laceArc |
|---|---|---|---|---|---|
| The literal shoelace is the primary source object, not an analogy | P `[MEM]` | ≤08-28 | HIGH | RULING | Consonant with *shoe in hands is the court* |
| One star per word, built from that word's definition | V (audit doc) | 08-15, 08-20 | HIGH | RULING | Consonant with B4 / C9 *definition is a route*; **not** the same as D5's star-as-passes — different lineage's "star" |
| No word may be treated differently from any other; imported categories forbidden (POS, stopwords, hand-picked vocabularies) | P `[MEM]` | ≤08-28 | HIGH | PROHIBITION | Consonant with C05 and the tokenizer `[GAP]`; **stronger** than the repo: forbids a spelling-equality admission test, which G1 leaves open |
| Sequencing is part of the structure; a bag of words has discarded the thing studied | P `[MEM]` | ≤08-28 | HIGH | RULING | Consonant with B5 / Piece 8 |
| The lace is a closed loop, beginning tied to end, runs forward always; following a touch = keep running and wrap | P `[MEM]` | ≤08-28 | HIGH | RULING | **CONTRADICTS** laceArc: *connect-the-ends* is a named FORBID (agent-control §HISTORY pass 5); D is two-ended and append-only. Quarantined |
| Direction is not stored; no bidirectional pointer; live pointer state is at most the current address | P `[MEM]` | ≤08-28 | HIGH | RULING | Consonant with backward-only refs (Q4 CLOSED) |
| Don't invent observers; the traversal is already encoded | P `[MEM]` | ≤08-28 | HIGH | PROHIBITION | Consonant with *no invented walker* (branch-contracts H) |
| No scrambled / synthetic control text may enter — *"trash in the yarn ball"*; later overridden for one case | V on the phrase | ≤08-28 | HIGH | PROHIBITION | Bears on Contract II: arrival is not a sampler |
| *"God"* = AI / programming practice reaching for an outside authority; term of art | P; term is the human's | ≤08-28 | HIGH | VOCABULARY | Bears on steward conduct, not Core |
| Contact has two origins: geometric fold-crossing and definitional closure | P `[SUM]`/`[TXT]` | 08-15, 08-20 | HIGH | RULING | Older lineage; laceArc holds only *route* (B4). Note only |
| Recurrence is free under any encoding of a finite vocabulary; the star's job is to make similarity computable | V (audit doc) | 08-20 | HIGH | RULING | Older lineage's star; **not** D5. Note only |
| The lace is the raw data itself; concept-nodes are cuts, re-derived, never stored | P `[SUM]` | 06-10 | HIGH | RULING | Consonant with Piece 13 / D4 *projection not storage* |
| *"It does because that's how the 1D array is sequenced. By time. A, b, c..."* | **V** | 06-10 | HIGH | RULING | Consonant with Piece 6 index-as-address |
| Traversal strictly descends; nothing climbs; arriving data lands at the frontier and waits | V (ledger `[EW]`) | 08-01 | HIGH | RULING | Older lineage's layers; laceArc has no layers. Note only |
| Block shape never grows to accommodate new dimensions; fixed three-field shape, one writable continuation slot | V (ledger `[EW]`) | 08-01, 08-10 | HIGH | RULING | **Continuation slot is a named FORBID** in laceArc (mutable / write-once slot). Quarantined |
| Ties are frontier-appended blocks, not fields; a tie holds two positions; ties are tie-able | V (ledger) | 08-01 | HIGH | RULING | Kin of D2's two-ref POINTER and D6 pointer→pointer. **Kin, not source**; *tie* is not POINTER |
| Instances over descriptions: *"A defined by B, B defined by C, C defines A"* unlocked transmission | V on the chain | 08-26 | HIGH | PREFERENCE | Steward conduct: show an instance |
| Tag every statement: ruled / carried / derived / proposed / open; the human has corrected silent gap-filling | P `[SUM]` | 08-10 | HIGH | PREFERENCE | Identical in force to C04 / C10 |
| Small artifacts where failure is visible on one screen; no extraneous complexity in the substrate | P `[SUM]` | 08-26 | HIGH | PREFERENCE | Steward conduct |
| ChatGPT builds, EW identifies errors, Claude audits | P `[MEM]` | ≤08-28 | HIGH | PREFERENCE | Team architecture input (pass 5) |
| A\* build strategy — work backwards from the complete vision — is non-negotiable | P `[MEM]` | ≤09-13 | HIGH | PREFERENCE | Team architecture input (pass 5) |
| Chrome-exposed device / capability claims are test subjects, not machine authority | P `[MEM]` | ≤09-09 | HIGH | RULING (V14) | **Governs pass 2**: every target fact is `UNESTABLISHED` on-device until probed |
| Installed WebAPK must become Termux-independent after install; Termux for stand-up only | P `[MEM]` | 09-09 | HIGH | RULING | **Governs pass 5** shell sheet |
| Promotion-law verdicts: VERIFIED / FAILED / BLOCKED / UNESTABLISHED / CONFLICTING EVIDENCE | P `[MEM]` | 09-09 | HIGH | VOCABULARY | Maps onto C10's evidence-state field; noted, not merged |
| Correction: SRC_TOUCH_ON_TOUCH is not a type taxonomy; all links share one address space | P `[SUM]` | 08-26 | MEDIUM | CORRECTION | Kin of *WORD and POINTER are both entries* (D key properties). Note only |
| EXP01 KILLED: static WordNet recursive closure — *"the structure remembers, but the counterfeit remembers just as well or better"* | V on the quoted line | ≤08-28 | HIGH | OTHER | Older lineage experiment. Note only |
| Definition-chain walk converges to ~32,573 of 147,806 forms in 14–15 hops from any start; the closure says nothing about the starting word | P `[MEM]` | ≤08-28 | HIGH | OTHER | Older lineage; **FORBID BFS closure** in laceArc. Note only |

---

## 5. What memory holds about the target (carried to pass 2)

| Item | V/P | When | Conf | Bearing |
|---|---|---|---|---|
| Pixel 9a: Tensor G4, Mali-G715 MC7, LPDDR5, codename `tegu`; CPU 4×A520 + 3×A720 + 1×X4 | P `[MEM]`/`[SUM]` | 08-21 | HIGH | Target device |
| On-device 2026-08-24: Android 17, Chrome 151; WebGPU `requestAdapter()` returned null until Advanced Protection disabled; required secure context + `--enable-unsafe-webgpu --ignore-gpu-blocklist --use-angle=vulkan`; chrome://gpu then showed `maxBufferSize` ≈ 4 GB, `shader-f16`, `subgroups` | P `[SUM]` | 08-24 | HIGH | **OBSERVED on device by the human**; carries as `HUMAN_REPORTED` |
| Probe series V4/V5: OPFS `SyncAccessHandle` in a Worker beats Blob / `arrayBuffer` reads by ~15–22× | P `[MEM]` | ≤09-09 | HIGH | Carrier candidate evidence (pass 5) |
| Probe series V8: a working bounded WASM→WebGPU→WASM composition | P `[MEM]` | ≤09-09 | HIGH | Projection path evidence |
| Probe series V17: **"practical wasm64 scale" not yet established** | P `[MEM]` | ≤09-09 | HIGH | **Open** — the target's central unestablished fact |
| `crossOriginIsolated` was `false` on githack (no SharedArrayBuffer / threads) | in-repo `docs/clock/wasm/README.md` + `[SUM]` 09-04 | 09-04 | HIGH | Single-threaded module; consonant with single-writer strand |
| 2026-06-10: a ~3 GB single buffer failed in Chrome on the 9a; the assisting model **guessed** a 32-bit process | P `[TXT]` — a model's inference, not the human's | 06-10 | LOW | Not a fact. Superseded by 08-24 `maxBufferSize` ≈ 4 GB observation; the >4 GB question is exactly V17's open item |
| The human has previously built `core` for a Tier-3 target by hand (`rustc --crate-type rlib core/src/lib.rs --target riscv32imac-unknown-none-elf`, custom sysroot, `RUSTC_BOOTSTRAP=1`) | P `[TXT]` | 07-27 | HIGH | The same recipe applies to `wasm64-unknown-unknown` (pass 2) |
| Cellular-only, no Wi-Fi, by personal rule | P `[SUM]` | 08-24 | HIGH | Deploy path must not assume LAN |

---

## 6. What is unrecoverable

Anything the human said in a session that no memory pass filed and no agent note recorded is gone. This pass cannot name what it cannot see. Specifically **not recovered**: any sentence in which the human carried (c) or (d) from the ShoeLacey lineage into laceArc terms; any sentence resolving (a); the acceptance sentence for `pointer-emission.md`. Absence here is not evidence of absence.

## 7. Coverage

| | Fraction |
|---|---|
| Memory files with Lace-bearing content read | 6 of 6 listed (`shoelacey`, `cognitive-frameworks`, `recent-work`, `gemma4-probe`, `launcher-app`, `termux-chrome-gpu-bridge`, `tech-stack`; plus 3 project overviews) |
| Conversation searches run | 7, returning 34 distinct hits; 11 read at the hit |
| Items returned | 33 Lace + 9 target |
| Items at strength above `[PROPOSAL]` | **0** |
| Items that answer a., b., c., d. in laceArc vocabulary | **0** |

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A memory that says *tie* is not a hand that says *POINTER*. Emission remains `[GAP]`.
