# Iteration 6, pass 5 — the crate shape: from `strand/` to an installed WebAPK

**Status:** `[PLAN]` · `[PROPOSAL]`. **No `src/`. No `Cargo.toml`. No type. No emit stub.** **Station:** maps. **Emission:** `[GAP]`.
**Method:** [iteration 6 plan](lace-context-iteration-6-plan.md) §2 pass 5. Retains [the crate tree](rust-nostd-crate-map.md) and [the seven birth cards](rust-nostd-branch-contracts.md) unchanged. Adds only the sheets that sit between `core/` and an installed Chrome Android app, in the [template's §5 form](../kit/agent-task-template.md). Every unsettled premise is a **ruling R1–R8** in §7 — prepared, not taken. The gate is the gate.
**Coherence:** every door and sheet is tied to a manifest Piece, an algebra element, the [environment's](lace-context-iter6-pass-4-environment.md) fences it must uphold, the reference shelves it must respect, and the [target facts](lace-context-iter6-pass-2-findings.md) it depends on (§4). That table is the *globally consistent* claim, and it is checkable.

**The honest sentence first.** This shape, followed by a team, produces the app **after** two things that are not the team's to supply: the human's acceptance of an emission rule that passes [E6](lace-context-iter6-pass-4-environment.md), and rulings R1–R6. Before those, the team can build everything in §6 — the shell, the probes, the clipboards, a candidate σ — and nothing in Core. That is the law, not a shortfall of the plan.

---

## 1. The shape, one picture

```
                         PIXEL 9a · CHROME ≥ 133 · INSTALLED WEBAPK (rawcdn.githack + full SHA)
  ┌──────────────────────────────────────────────────────────────────────────────────────────┐
  │  LAYER III — SHELL  (HTML · service worker · manifest · WebGPU canvas)        not Core   │
  │                                                                                          │
  │   hopper: one arrival per submit, bytes as typed ──┐            ┌── canvas ◄── π bytes   │
  │   (the human is the punch-card; the shell cuts     │            │   (view_1d/2d/3d out)   │
  │    nothing, keeps nothing)                         │            │                         │
  └────────────────────────────────────────────────────┼────────────┼─────────────────────────┘
                                                       │ Contract II│ Contract III
  ═══════════════════ HOST BOUNDARY (sheet H) ═════════╪════════════╪═════════════════════════
     exports: continue · star_view · view_1d · view_2d · view_3d · memory      imports: NONE
     the embedder can read and write all exported memory — TRUST R5, not a wasm guarantee
  ═════════════════════════════════════════════════════╪════════════╪═════════════════════════
                                                       ▼            ▲
  ┌──────────────────────────────────────────────────────────────────────────────────────────┐
  │  CORE MODULE  ·  Rust #![no_std]  →  wasm64-unknown-unknown   (sealed; Tier 3; nightly)  │
  │                                                                                          │
  │        core/ ──► route/ ──► strand/ ◄── view_star/ ◄── view_proj/                       │
  │                    │  │                                                                  │
  │                    ▼  ▼                                                                  │
  │                 word/ pointer/          (seven doors; serial births; unchanged)          │
  │                                                                                          │
  │  ╔══════════════════════════════════════════════════════════════════════════════════╗    │
  │  ║  GATE: none of these may exist until docs/pointer-emission.md is accepted        ║    │
  │  ║        in-repo, in words, and the accepted rule passes environment E6.           ║    │
  │  ╚══════════════════════════════════════════════════════════════════════════════════╝    │
  │                                                                                          │
  │   the region (sheet R): one contiguous byte range in linear memory that CARRIES L       │
  │   ── carried in ≠ is (F-Carry) ── never moves, never shrinks ── capacity per R4 ──       │
  └──────────────────────────────────────────────────────────────────────────────────────────┘
                                                       │
                                  CARRIER (sheet C) — where L survives a reload — RULING R3
                                  volatile │ OPFS append-only log │ other   (not chosen here)
```

Reading order is the law's: shoe → graphics → manifest → the two rust plans → this sheet.

---

## 2. What is retained, verbatim in intent

The seven doors, their one-task sentences, their birth order `strand → word → pointer → route → view_star → view_proj → core`, their nine dependency edges, their forbidden states, and every `UNESTABLISHED` proof status — **unchanged**. This document does not rename, reorder, merge, or add a door among the seven. Read them there; they are not reproduced here.

Two things the cards say that this document builds on rather than around:

- *"The concrete finite-storage provision, index width, restart/durability, interruption behavior and concurrent arrival ordering are not selected here. If a branch's claimed theorem needs one, the unresolved premise blocks that claim."* — Every one of those is an R-item below.
- *"`alloc/` is not an eighth planned birth. … A future proven first-party `alloc/` branch is outside this birth sequence and would require an explicit revised plan."* — §7 R4 is that explicit revised plan, offered as a ruling with a no-alloc alternative.

---

## 3. The sheets added (template §5 form; prose, not code)

### Sheet T — target

| Item | Supplied |
|---|---|
| One task | Name the compile target and its toolchain requirements so every door's *Trust* row can point here |
| Authority | `wasm64-unknown-unknown` **sealed by human correction** ([wasm-spec-3 banner](../clipboards/wasm-spec-3-clipboard.md)); facts [T1–T8](lace-context-iter6-pass-2-findings.md) |
| Inputs | none — this is a sheet, not a door |
| Effects | none |
| Postcondition | every door's build states: pinned nightly `rustc`, `-Zbuild-std=core` from `rust-src`, `panic = "abort"`, no `std`, no `alloc` (unless R4a), target-feature set per the probe results |
| Invariant | the target is invisible to σ (E8) — it bounds growth, never the rule |
| Refinement | none — a compile target realises nothing by itself |
| Resources | linear memory ≤ 16 GB (T7, to confirm via A3); on-device maximum = **P-64b result**, `NOT_RUN` |
| Failure model | LLVM bug on a Tier-3 target (T3): a build that fails is evidence, not a Lace fact; a build that succeeds is not a proof |
| Proof | none owed; a target has no theorem |
| Composition | consumed by every door's Trust row; by sheet H (index width); by sheet R (page size 64 KiB, `memory.grow` semantics per Spec 3.0 §4 — cite the clipboard, do not restate) |
| Validation | probes P-64a, P-64b, P-64c on the Pixel 9a, evidence SHA-hashed |
| **Trust** | **R1**: `rustc` + `rust-src` (`core`, `compiler_builtins`) on a pinned nightly is the trust boundary. Not a crates.io dependency; not "a crate did it for you." Stated, not accepted |
| Completion | when A1/A2/A3 are attached and P-64a/b/c have run; until then this sheet is `[BLOCKED]` on evidence, not on law |

### Sheet R — region (the carrier of L inside the module)

| Item | Supplied |
|---|---|
| One task | Provide one contiguous byte range in linear memory that carries `L`, that never moves and never shrinks |
| Authority | Piece 6 *"persistence is a single append-only log"*; strand/ card *"sufficient declared resources"*; **F-Carry** ([companion Pass 26](../systems-manifest-ascii.md)): *carried in ≠ is* |
| Inputs | a declared capacity (R4); nothing else |
| Effects | **R4a**: may grow the range by `memory.grow`, monotonically, never relocating. **R4b**: none — capacity is fixed at instantiation by the host; the range never changes |
| Postcondition | `strand/` sees a range `[base, base+cap)` with `cap` monotone non-decreasing; bytes already written are never moved |
| Invariant | `base` is constant for the module's life; no other door writes inside the range except through `strand/`'s append authority |
| Refinement | the range is the *carrier* of the abstract sequence `L`; the abstraction map is `strand/`'s, not this sheet's |
| Resources | cap ≤ target ceiling (sheet T); exhaustion is **refusal with no change** — never wrap, never reuse, never truncate (strand/ card) |
| Failure model | `memory.grow` returning −1 (R4a) leaves the range as it was; the append that needed it is refused; the arriving value's custody returns to the shell (Contract II) — **who holds a refused arrival is R4's second half** |
| Proof | R4a: monotone growth, prefix-stability, refusal-leaves-unchanged. R4b: nothing — a fixed range has no theorem beyond its declaration |
| Composition | R4a is **birth #0**, before `strand/`, and is the law's *"first-party branch whose ONE task is alloc"*; R4b is no birth at all |
| Validation | P-64b gives the ceiling the declaration may not exceed |
| Trust | sheet T; Spec 3.0 memory semantics (clipboard) |
| Completion | when R4 is ruled |

**Why this sheet is not a second store.** A region is where bytes are; `L` is what the bytes mean under `strand/`'s abstraction. One region, one `L`. The G-III-4 fence forbids saying *linear memory is L*; this sheet says *a range of it carries L*. If any later document says the first thing, the fence bites (F-Carry).

### Sheet H — host boundary (Contracts II and III made physical)

| Item | Supplied |
|---|---|
| One task | State what crosses between the shell and the module, in which direction, and what may never cross |
| Authority | manifest Contract II *"bytes/words in, appends out … only if it cannot refuse, rewrite, or interpret"*; Contract III *"read-only projection"*; crosswalk P-T8 *host embed = PROPOSAL-only, FORBID fill-GAP* |
| Inputs (host → module) | one arrival: a byte range in a **hopper** sub-range plus its length; then a call to `continue`. Nothing else enters. No configuration, no schedule parameter, no boundary marker (F-B) |
| Outputs (module → host) | results of `star_view`, `view_1d`, `view_2d`, `view_3d` written into a **view** sub-range, plus a length. Read-only by contract. Nothing the host reads there is authoritative (Piece 13) |
| Imports into the module | **none.** No host function is callable from Core. This is what makes F-S3 true by construction rather than by discipline |
| Exports from the module | `continue`, `star_view`, `view_1d`, `view_2d`, `view_3d` — exactly the `core/` card's delegation surface — and `memory` |
| Invariant | the host writes only inside the hopper; the strand range is never written by the host; every module write to the view range is a projection of `L` at that moment |
| **Trust (R5)** | WebAssembly gives an embedder unrestricted read and write of exported memory. **The invariant above is a stated trust assumption about the shell's JS, not a property wasm enforces.** Either accept that as R5's trust row, or require a copy-in/copy-out ABI with no `memory` export — which still trusts the embedder, only with a smaller surface. Stated, not accepted |
| Failure model | a refused `continue` (capacity, sheet R) returns a code; the arrival stays in the hopper; the shell decides (R4 second half). No partial append is ever visible |
| Proof | that every exported function is one of the `core/` card's allowed ops; that no export reaches `route/`'s `Continue` except through `core/`; that the view range is written only by view doors |
| Composition | born with `core/` (birth #7) as its exported surface; not a crate; a sheet |
| Validation | P-INST (install + instantiate); a host-side test that writes garbage into the view range and shows `L` unchanged |
| Completion | when R5 is ruled and `core/` is born |

### Sheet C — carrier (where L survives a reload)

| Item | Supplied |
|---|---|
| One task | Say where `L` lives when the page is not open |
| Authority | Piece 6 *"persistence is a single append-only log … indices are forever"*; Piece 1 *"history only grows"*; the Hands are otherwise **silent** on physical residence |
| The options — **R3**, not chosen | **(i) volatile**: `L` lives only in the region; a reload is A1 — the empty strand. Law-clean. The app forgets every session. **(ii) durable log**: an append-only byte log (candidate: OPFS `SyncAccessHandle` in a Worker — T14) receives every appended section, write-through, in order; on open, the module's region is loaded from it. The log is the authoritative carrier; the region is a loaded copy. **(iii) other** — the human's |
| Invariant under (ii) | for every index `i` below the log's length, region byte-range for `i` = log byte-range for `i`; the log never shrinks; a section is durable before the shell acknowledges the arrival |
| **The tension, named** | under (ii) the bytes are written to the log by the shell (Layer III), because Core has no imports and cannot do I/O. The law says projections never write `L`. Persisting bytes Core produced is not projection and is not writing `L` — but it is Layer III holding the authoritative copy of Core's history. The strand/ card's forbidden state *"two backing stores standing for the two ends"* is about splitting the strand between two stores, not about one strand replicated; but nothing in the Hands says so. **This is why it is a ruling.** |
| Failure model | (ii) a crash between region-append and log-append must leave the log a strict prefix of the region, never the reverse, and the shell must replay or refuse on next open; the exact protocol is owed by whoever births the carrier and is `UNESTABLISHED` |
| Proof | (ii) prefix-equality invariant; durability-before-ack; replay-on-open reconstructs the same `L` byte for byte |
| Composition | (ii) needs sheet H's view range or a dedicated **log** sub-range the shell may read but never write; needs A5 attached |
| Validation | P-CAR |
| Trust | OPFS durability guarantees per A5 (WHATWG File System) — a spec claim until attached, a device fact only after P-CAR |
| Completion | when R3 is ruled |

### Sheet S — shell (Layer III; may be built now)

| Item | Supplied |
|---|---|
| One task | Be the installed WebAPK that hosts the module, presents the hopper, draws the projection, and — under R3(ii) — keeps the log |
| Authority | [`githack-pwa-deploy.md`](../kit/githack-pwa-deploy.md) (LAW for Layer III HTML; install **proven** 2026-09-18); the human's 2026-09-09 rule *"installed WebAPK must be Termux-independent after install"* (pass 1 §4, `[PROPOSAL]`); manifest Contract II/III |
| Inputs | keystrokes; the module's exports |
| Effects | writes only the hopper (and the log under R3(ii)); draws; installs; caches for offline via the service worker |
| **Arrival law (`[PROPOSAL]`)** | **one arrival per submit, bytes as typed.** The shell cuts nothing: no whitespace split, no case-fold, no trim, no Unicode normalisation. The human is the punch-card; each submit is one value `v`. This is the only reading of B6/C10 *"raw sequence, no interpretation"* that adds no tokenizer, and it leaves G1 exactly as open as the Hands leave it — the shell does not decide `PIE = pie`; it delivers both as arrived |
| Must not | keep documents, a vocabulary, a parse, a sentence buffer, a "recent words" list, an undo stack; write the strand range; call anything but the exports |
| Projection | `view_3d` bytes → WebGPU vertex buffer → draw. The WebGPU path on the 9a needs Advanced Protection off and flags (T11) — that affects the picture only, never `L` |
| Deploy | per the install law: `rawcdn.githack.com` + 40-char SHA + path; `docs/clock/LATEST.json` names the SHA; never `main`, never Pages |
| Failure model | offline: the SW serves the cached app; the module runs; under R3(i) the strand starts empty every open, under R3(ii) it is replayed from the log |
| Proof | none owed — Layer III. **Validation** is P-INST and the existing proven tick |
| Trust | Chrome's WebAPK install path (T16, proven); the device's capability claims are test subjects (V14) |
| Completion | can complete **before the gate**, hosting the D1 specimen as data ([lace-projection-brief](lace-projection-brief.md)); hosts Core only after births 1–7 |

### Sheet E — section encoding (`[BLOCKED]`, listed so nobody guesses it)

The cards choose no encoding. This sheet does not either. It lists what an encoding must decide and what each decision is blocked on:

| Decision | Blocked on |
|---|---|
| WORD value bytes: length-prefixed, **as arrived**, no decode | nothing — but the *identity* of two values stays G1; the encoding stores bytes, it does not compare them |
| POINTER ref count `k`: fixed 2 (D2 drawing) or carried per row | **Q2 CONFLICT** — an encoding that fixes `k = 2` has taken Q2; one that carries `k` has selected *"variable-length target collection,"* which the pointer/ card declines. **Either choice is a ruling (R6)** |
| slot order if `k = 2` | manifest open #9 |
| index width | the ceiling (P-64b) and the row size decide whether 32-bit indices suffice; wasm64 addresses are 64-bit regardless (R6) |
| entry framing (kind tag, lengths) | R6 |

---

## 4. Coherence table — the globally consistent claim

Each row: what the part is tied to. If any cell is empty the part is unmoored; none is.

| Part | Manifest Piece | Algebra (S) | Fences it must uphold (E3) | Shelves it must respect | Target facts it depends on |
|---|---|---|---|---|---|
| `strand/` | 1, 6 | S1.2 `L`; K1 prefix freeze | F-H1, F-H2 (as validity), F-A1 | Kauffman / Rowlands FORBID rewrite; Xiao–Zhu FORBID intern | sheet R capacity; T7 ceiling |
| `word/` | 4 | S1.3 `(WORD, v)` | F-S1 (no table), F-G (silent) | Xiao–Zhu FORBID `[MASK]` / intern / embed | none |
| `pointer/` | 5 | S1.3 `(POINTER, r..)`; Q4 | F-H2 | Kauffman *grab ≠ POINTER* | R6 index width |
| `route/` | 2, 8 | S2 `Arrive`; S4.3 `Continue` | F-H1, F-A1; **σ absent** — route appends only what is independently admitted | — | none |
| `view_star/` | 7, 9, 15 | S3.1 `Star(v)` | F-S1 (no Star table) | Petersen–Zech FORBID star = neuron | none |
| `view_proj/` | 10, 12, 13 | S3.4 `π` | no write-back (S6 `[X]` 6) | WebGPU / WGSL shelves: Device / Queue / Buffer ≠ store | T11/T12 for the picture only |
| `core/` | 2 | S5 Contract I composition | F-S3 (no imports), F-S4 | AgentScope: holder diagnoses the steward, not the lace | sheet H |
| sheet T | — | — | E8 (invisible to σ) | wasm-spec-3 KEEP-read-as-target | T1–T8 |
| sheet R | 6 | S1.2 concatenation-only growth | F-Carry | G-III-4 fence *mem ≠ L* | P-64b |
| sheet H | Contract II, III | S2 (arrival into `Arrive`); S3.4 | F-S3 by construction; F-B (no boundary crosses) | crosswalk P-T8 host ≠ fill-GAP | R5 |
| sheet C | 6 *"single append-only log"* | S1.2 (indices forever) | F-H1 across restarts | — | T14, A5 |
| sheet S | 3, 13 | — | F-A1 (arrival law), F-G (cuts nothing) | AgentScope KEEP failure taxonomy for the *steward* | T16, T10, T11 |
| **σ (the rule)** | 5 · open #2 | **S4.2 Φ-schedule = `[GAP]`** | **all thirteen; E6** | all nine FORBID rows | none — E8 |

---

## 5. Birth order, extended (serial; every arrow a future gate)

```
   rulings R1–R6 ─────────► attachments A1–A6 ─────────► probes P-64a/b/c · P-CAR · P-INST
        │                                                          │
        │   (all of the above may run NOW; none is Core)           │
        ▼                                                          ▼
   a candidate σ written per E6, run per E7, IN-REGION ──► the human accepts pointer-emission.md IN-REPO
                                                                     │
                                                          ═══════════╪═══════════  THE GATE
                                                                     ▼
   [R4a only]  #0 region/ ──PROVE──► #1 strand/ ──PROVE──► #2 word/ ──PROVE──► #3 pointer/
                                                                                    │
   #7 core/ + sheet H ◄──PROVE── #6 view_proj/ ◄──PROVE── #5 view_star/ ◄──PROVE── #4 route/
        │
        ▼
   sheet C carrier (R3) ──► shell S hosts the module ──► P-INST passes inside the WebAPK ──► the app
```

No parallel branch fan-out. No scaffold. Each `PROVE` is a written proof note in `docs/` if the human requires one (branch-contracts G), at an exact reviewed commit.

---

## 6. What the team can do before the gate — and who

Roles are the human's own pattern (pass 1 §4: *"ChatGPT builds, EW identifies errors, Claude audits"*), mapped onto the control prompt's C07 (propose / attack / resolve) and the station protocol. **Three roles, not three agents of one vendor; any agent can hold any role on a given task, and one agent holding two must say so.**

| Role | Does | Station protocol |
|---|---|---|
| **Builder** (designated editor) | one task, one change set, at a pinned base; returns the artifact and its receipt | `pull --ff-only → which → claim → edit → gate → commit → release`; one station per commit |
| **Human** | identifies errors; takes rulings R1–R8; accepts or refuses; attaches references | never delegated |
| **Auditor** | re-runs E7 STEP 4 independently on any candidate σ; runs the adjudication form (§3 of the template) against the builder's receipt; never repairs the candidate in the explanation | read-only on the builder's station |

| Work now | Role | Station | Needs |
|---|---|---|---|
| Attach A1–A6; write each clipboard prompt; stake each clipboard | Human attaches · Builder writes | prompts → clipboards | the files |
| Probes P-64a/b/c, P-CAR, P-INST as Layer III pages; run on the 9a; SHA the evidence | Builder builds · Human runs | renderer / kit | nothing |
| Shell S hosting the D1 specimen (lace-projection-brief) with the hopper wired to a stub that **refuses** every arrival (there is no Core to accept it) | Builder | renderer | install law |
| A candidate σ, written per E6, run per E7 with the eleven rows shown | anyone · Auditor re-runs STEP 4 | maps | E6 |
| Rulings R1–R8 | Human | law | this sheet |
| **Core births** | — | — | **the gate** |

---

## 7. Rulings brief — prepared by the agent, not taken

| R | Question | Options laid out | What each costs | Blocks |
|---|---|---|---|---|
| **R1** | Is `rustc` + `rust-src` (`core`, `compiler_builtins`) on a pinned nightly inside *"zero external dependencies"*? | yes as the stated trust boundary / no | *no* means the target is unreachable: Tier 3 ships no `core` (T2) | every build |
| **R2** | Reaffirm `wasm64` with [the cost table](lace-context-iter6-pass-2-findings.md) in view, or dual-target during probes? | reaffirm / dual-target for probes only / re-rule | wasm64: nightly, 16 GB, bounds tax, on-device `UNESTABLISHED`; wasm32: stable, 4 GB, no tax | sheet T, R6 |
| **R3** | Where does `L` live when the page is closed? | (i) volatile / (ii) durable append-only log written by the shell / (iii) other | (i) forgets each session; (ii) Layer III holds the authoritative bytes — tension named in sheet C | sheet C, P-CAR |
| **R4** | Capacity: a first-party `region/` birth #0 that grows by `memory.grow`, or host-declared fixed capacity with refusal on exhaustion? **And:** who holds a refused arrival? | (a) `region/` #0 / (b) fixed + refuse; custody: shell keeps it / shell drops it and says so / other | (a) one more birth and proof; (b) a hard ceiling per install | sheet R, `strand/` resources row |
| **R5** | Accept *"the shell never writes the strand range"* as a stated trust assumption (wasm cannot enforce it), or require a copy ABI with no `memory` export? | trust row / copy ABI | copy ABI: smaller surface, still trusts the embedder, one more proof per export | sheet H |
| **R6** | Encoding: fixed `k = 2` (takes Q2) or per-row `k` (selects variable-length, which the card declined)? Index width? | see sheet E | either choice on `k` is a Q2 decision the Hands do not make | `pointer/`, `strand/` |
| **R7** | **The gate itself** — a σ that passes E6, accepted in-repo in words | — | — | births 1–7 |
| **R8** | Confirm the three-role mapping; name the designated editor for the first pre-gate task (probes) and, later, for birth #1 | — | — | §6 |

**The agent takes none of these.** If the human answers R1–R6 in-repo, in words, each answer is `SPOKEN` by the register's definition and this sheet is revised to cite it. R7 is acceptance and is not a ruling on this sheet.

---

## 8. Propose / attack / resolve — one agent, not independent review

**Propose:** keep the seven doors; add T, R, H, C, S, E as sheets; extend the birth order with an optional #0; move every unsettled premise into R1–R8.

**Attack:** (1) *Sheet R is a second store.* — It is a byte range; `L` is the abstraction; F-Carry. Survives, with the fence quoted. (2) *Sheet C(ii) has Layer III writing Core's history.* — Named as the tension in the sheet; it is why R3 exists. **Not resolved here; correctly refused resolution.** (3) *Sheet S's arrival law decides tokenization.* — It decides *not* to tokenize; each submit is one value; G1 is untouched. Survives. (4) *`memory` export lets the host forge a POINTER.* — Yes; that is R5, and no wasm feature removes it. Survives as a stated trust row. (5) *The shape is unbuildable because the gate is closed.* — True and intended; §6 lists what is buildable now, and it is not nothing. (6) *The thesis (iteration plan §1) said the non-composing places are each a ruling; is that so?* — R1–R6 are six; none is an agent default; **the thesis holds at pass 5 and the falsifier did not fire.** (7) *R6's `k` cannot be deferred forever; an encoding must exist to build `strand/`.* — Correct: birth #1 is blocked on R6 as well as R7. Stated in §5.

**Resolve:** the shape composes; six rulings and one acceptance stand between it and the first birth; nothing was invented to close them.

## 9. Steward receipt

| Field | Value |
|---|---|
| Product | `docs/plans/lace-context-iter6-pass-5-crate-proposal.md` |
| Doors added / renamed / reordered | 0 / 0 / 0 |
| Sheets added | T, R, H, C, S, E |
| Rulings prepared | R1–R8 |
| Rulings taken | **0** |
| Emission | `[GAP]` — R7 |
| `src/`, Cargo, types, stubs | none |
| Evidence state of the shape | `UNESTABLISHED` as a machine; `OBSERVED` as a composition of cited documents |
| Review | one agent |

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

You can lay out the bench, the vice, and the order of the cuts, and you can say which cuts wait for the owner. Emission remains `[GAP]`.
