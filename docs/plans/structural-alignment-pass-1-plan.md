# Structural alignment — pass 1 plan: what binds every actor, and what only asks

**Status:** **`PLAN`. Not executed.** **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Campaign:** *structural alignment* — the human's ask, 2026-09-19 22:42 PT, verbatim: *"structurally guaranteeing project alignment for any AI agent I point at the repo. I am the untrusted vector and AI agents are not far behind unless they prove their work's place in the project with evidence."* **Pinned:** `e2e8155` + branch `lace-context-iteration-6` tip (43 commits). **Editor:** Claude Fable 5.1; one hand; declared. **Inherits:** [the reduction receipt](reduction-receipt.md) · [the context pass](../prompts/context-pass.md).

## 0. The premise, applied to itself

The human declares himself an untrusted vector. This plan takes him at his word — **including for this instruction.** His sentence enters as `HUMAN_REPORTED`; it becomes an in-repo fact only when he commits it or lands the bundle that carries it. Nothing here treats a chat sentence as a ruling (C02). The same holds for every agent: nothing an agent says about its own work counts; only what a mechanism can check does.

**Memory-informed shape (every line `[PROPOSAL]`; provenance: the human's memory record, read 2026-09-19).** The human has built this guarantee before, in other projects, four times in the same shape: a *proposal → validation → publish* containment architecture (`adaptive-mlir-verification`, Aug 2026); **REFORGE v4** — fail-closed, forged documents as the single source of truth, mechanical traceability to requirement IDs, and **one unambiguous compliance criterion** (`pnpm check:hologram` exits 0) (Conversational Game Engine); a **GEN → VERIFY → RUST** pipeline where *no inference, no harmonization; conflicts are registered, not resolved; a FAIL verdict is a valid output; multi-pass verification before anything is authoritative* (INV_AGENT_MIND); and the **Court** — *Claude as untrusted proposer; a ruling requires traceable OBS; three verdicts* (cognitive frameworks). laceArc already believes all of this **in prose** (C02, C10, the speak-sheet, *halt and demand one pointable thing*). What it lacks is the mechanism. This campaign is that architecture, instanced on this repository: **forged documents = the Hands + the law; the one criterion = a check that exits 0; publish = `main`; every actor, the human included, is a proposer.**

## 1. Measured at the pin, before proposing anything

| Control | Where | What it binds today | Enforcement (C10) | Evidence |
|---|---|---|---|---|
| AGENTS.md · CLAUDE.md · the context pass · agent-control C01–C12 | prose | actors who read it | `NOT_CHECKED` | prose binds nothing (iteration 2 pass 5) |
| the task / receipt forms (template §1–§4) | prose | actors who fill them | `NOT_CHECKED` | *"the template's form has been filled zero times"* (iteration 2 pass 4); **0 of the last 200 commit bodies carry an `EVIDENCE STATE` line** |
| `check-docs.sh` (graphics · no `src/` · no PDF · links · absence claims · law copies · orphans · doors · unsigned count) | `.claude/hooks/` | the working tree, **when run** | `ADVISORY` — the session-start wrapper returns success regardless | hooks run only inside Claude Code; **2 hook files**, no CI |
| `coord.sh` claim / release / force-free | `docs/coord/` | nothing — *"zero authorization checks; any agent may call it with any reason string"* | `ADVISORY` | iteration 5 pass 2 §1 |
| the law station | `law.station` | nothing — no allow-list; an anonymous campaign edited the gate file | `NOT_CHECKED` | OPEN #13 |
| CI workflow | `.github/` | — | **absent** | 0 tracked files under `.github/`; kit README: *"contains no CI workflow"* |
| CODEOWNERS | `.github/` or root | — | **absent** | 0 files |
| branch protection on `main` | GitHub settings | unknown from the tree | `UNKNOWN` | not visible in a clone; **the human must state it** |
| acceptance of `pointer-emission.md` | a sentence, in-repo | the gate | `NOT_CHECKED` — no hash, no signature; `PRESENT_FOR_EXACT_REVISION` is unverifiable by machine | template §2 |
| `SPOKEN` tokens | markdown | — | — | **109 occurrences in 28 files; 86 outside `pointer-emission.md`** — the token has no locator convention |
| `HELD` plans | headers | — | — | **128** files say a pass is held; nothing distinguishes *held* from *abandoned* |
| the agent challenge cases (downstream audit F-cases) | `docs/kit/downstream-audit.md` | — | `NOT_RUN` — *"never run against a population of models"* | kit README |
| actor trailer | commit bodies | — | `ADVISORY` (new) | 121 of the last 200 unsigned |

**Harness coverage — the finding that shapes everything below.** The only controls that execute at all are `.claude/hooks/*`, and they execute **only inside Claude Code**. Grok Bot, Codex, Astra, ChatGPT, DeepSeek and the human's own git client run **none of them**. Therefore today **zero mechanisms bind every actor.** The single place every actor's work must pass is the repository host itself — a push to `main`, or a pull request into it. A structural guarantee that does not live there is a guarantee for one vendor's harness.

## 2. One question

**Which minimal set of mechanisms, living where every actor's work must pass, makes non-aligned work unable to reach `main` regardless of who submitted it — the human included — and what residue cannot be made mechanical and must be named as such?**

## 3. Thesis, stated so it can lose

**Four mechanisms suffice for everything that can be mechanical, and the residue is small and nameable:**

| | Mechanism | Binds | Replaces prose in |
|---|---|---|---|
| **M-a** | **One required status check on `main`**: `check-docs.sh` exit 0, run by the host on every push and pull request — with its hard checks extended (no `src/` without a valid acceptance hash; actor trailer present; a receipt block with an `EVIDENCE STATE` line on any commit touching `docs/plans/**` or law files; every `SPOKEN` token carries a commit locator) — and **branch protection that includes administrators** | every actor, the human included | C09, C10, C12 |
| **M-b** | **CODEOWNERS** on `AGENTS.md`, `docs/pointer-emission.md`, `docs/law-why-these-documents.md`, `docs/systems-manifest.md`, `docs/graphics/**`: a change merges only with the human's review | the law station, mechanically | F3; OPEN #13 |
| **M-c** | **Acceptance by hash**: acceptance of the emission rule is a file (or signed tag) the human commits carrying the SHA-256 of the accepted `pointer-emission.md`; the check permits `src/` **only if** that hash equals the current file's. Change the file, and acceptance lapses by itself | the gate — `PRESENT_FOR_EXACT_REVISION` becomes a computation | C03 |
| **M-d** | **The D1 replay and the binary facts as required checks once a `.wasm` exists**: empty import section, exact export set, byte-identical D1 | Core, when it exists | G2 · G3 · G4 |

**Residue that stays human or two-handed, named now:** whether an agent actually opened the PNGs (a claim, not a check); whether a σ is *faithful* rather than merely IN-REGION (judgment; two independent auditors); whether the human's in-repo acceptance is sincere (no mechanism; the hash makes it *exact*, not *wise*). The thesis does not claim to close these.

**Falsifier:** a demonstrated route by which non-aligned work reaches `main` past M-a…M-d — an admin push with protection off; a receipt whose fields are present and whose content is false; a `SPOKEN` locator pointing at a commit that does not say it. Each one found is either closed by tightening a check or **named as residue in the receipt**; if the residue turns out large, the guarantee is partial and the receipt says *partial*, not *structural*.

**Standing obstacle, stated:** iteration 2's E-rulings chose *no gate* on measured evidence. This campaign does not overturn them; pass 5 puts them back in front of the human with M-a…M-d beside them, because he has now asked for a guarantee that prose cannot give.

## 4. The work

| | Step | Reads | Writes |
|---|---|---|---|
| **1a** | Confirm the absences (`.github/`, CODEOWNERS) and the counts (SPOKEN, HELD, receipts) at the pin | the tree | §1, verified |
| **1b** | Every control, its enforcement state, and **which harness runs it** — a harness × control matrix for the known actors (Claude Code · Grok Bot · Codex · Astra · DeepSeek · the human's client) | census; kit | the matrix |
| **1c** | Draw the containment in the human's own vocabulary: proposal (any actor, any harness) → validation (the host runs the one criterion) → publish (`main`) — and mark which arrows exist today | memory record; REFORGE / Court shape | an ASCII of the pipeline, present vs proposed |
| **1d** | Specify the four mechanisms as **checks**, each with: what it reads · the exact pass condition · what it cannot see · a counterexample it would miss | check-docs; template; C10 | a check specification table |
| **1e** | The residue list, with why each item is not mechanical | — | §3's residue, expanded |
| **1f** | The board for passes 2–6 (§5) | — | — |

## 5. Passes 2–6, scoped now, each planned in its own file when reached

| Pass | Question | Product |
|---|---|---|
| **2** | Can the extended hard checks be written and shown to fire? — prototyped in `check-docs.sh` as **advisory** lines (no gate without a ruling), each demonstrated against a fixture commit that should fail | the checks, advisory; a table of fixture → verdict |
| **3** | Acceptance by hash: the file format, the computation, the lapse rule; and the SPOKEN-locator convention | a specification; nothing accepted |
| **4** | **The agents, tested.** Run the downstream audit's challenge cases and one canary (E7 STEP 4 on the adjacent-pair rule, which must be REFUTED at row 0004) against each model the human points at the repo — DeepSeek, Grok, Codex, Astra, Claude — with the context pass supplied; record pass / fail per case per model | a per-model evidence matrix — *aligning the repo with individual agent capabilities*, by evidence rather than by reputation |
| **5** | **Rulings** — the human: branch protection including administrators; the required check; CODEOWNERS and its list; acceptance by hash; the E-rulings reopened; who may write the acceptance file | the brief; nothing taken |
| **6** | Receipt — and the honest word: *structural* or *partial* | — |

## 6. May write / must not

**May write:** `docs/plans/structural-alignment-pass-1-findings.md`; a README row; this status line. Station maps.
**Must not:** add a workflow under `.github/`, a CODEOWNERS file, a branch-protection setting, or any hard check — each is a ruling (pass 5); edit the law, the emission file, `coord.sh`, or the existing checks' exit semantics; treat the convening sentence as more than `HUMAN_REPORTED`; treat any actor's self-report — including this editor's — as evidence.

## 7. Expected vs actual

| | |
|---|---|
| **Expected** | zero mechanisms bind every actor today; the harness matrix has one row (Claude Code) with any check at all; four mechanisms cover every control listed in §1 except the residue; the residue is three items |
| **Actual** | `NOT_TESTED` |
| **Physical** | `NOT_PERFORMED` |
| **Human acceptance** | `ABSENT` — a plan |

## 8. Stop

The harness × control matrix is complete for the known actors; the four mechanisms are specified as checks with pass conditions and named blind spots; the residue is listed with reasons; the pipeline is drawn present-vs-proposed. Then stop. Pass 2 gets its own plan.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

The lace does not care who ties it. A knot either holds or it does not, and someone other than the tier pulls on it. Emission remains `[GAP]`.
