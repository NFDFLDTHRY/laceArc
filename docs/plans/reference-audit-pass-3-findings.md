# Reference audit — pass 3 findings: court-root reference wording

**Status:** EXECUTED — CLOSED.  
**Plan:** [reference-audit-pass-3-plan.md](reference-audit-pass-3-plan.md) · board [reference-audit-iteration-plan.md](reference-audit-iteration-plan.md).  
**Proceed:** the human, 2026-09-22: *"proceed with pass 3"*. No sentence on RA-H02 accompanied it; RA-H02 stays **not ruled** and the pointer-draft delimiter stays as it is.  
**Pre-pass baseline:** `dc3a03d2d51b46b7ce8e539a39ef4bf19c67f9a6` (origin/main); stacked on the pass-1 and pass-2 commits on the campaign branch.  
**Law claim:** `e81a9ed` · **law commit:** `1532917` · **law release:** `04182e0`.  
**No gate wording changed. No live law, frozen stake, AGENTS, CLAUDE, CONTRIBUTING or pointer-draft byte changed. RM-A open; acceptance absent; no `src/`.**

## 1. Verdict

**FOUR COURT-ROOT SENTENCES RECONCILED; NOTHING ELSE AT THE ROOT NEEDED WORDS.**

**SIX LAW SURFACES BLOB-IDENTICAL THROUGH THE PASS.**

**RA-H02 LEFT WITH THE HUMAN; THE DRAFT'S DELIMITER ROW UNTOUCHED.**

## 2. Edits, exactly

| Surface | Was | Now |
|---|---|---|
| `docs/references.md` §Rule for readers and bots | *"Pointer emission remains a `[GAP]` until written in `docs/pointer-emission.md` from the four graphics …"* | the draft exists, reconciled, unaccepted; the open is **RM-A retain-when**; not closable from the volumes, the behavioral sources or the catalog; only the graphics, an explicit human ruling and in-repo acceptance move it. The paragraph's refusal (*discard it for Core; keep it as reading notes*) is intact; the old wording is quoted in a dated parenthesis |
| `README.md` AGENTS row | *"Standing orders for any Grok / Grok Bot / Grok Build session in this tree."* | standing orders for every agent, local or cloud; Claude Code loads them through `CLAUDE.md`; read first, then the context pass |
| `docs/README.md` court table | three rows | the graphics row says numerals are printed and letters are ours; one new row links the four ASCII companions with D's contents named; *none replaces its PNG; none fills G2* |
| `docs/systems-manifest.md` *Source corpus* block | four bullets and one sentence | one added paragraph: numerals printed per graphic; the letter prefix in the manifest's citations is the manifest's; printed titles live in the companions. No Piece, contract or open-question text changed |

Stale-sentence sweep after the edit: the old references sentence — 0 hits outside this campaign's own files; the old Grok-only wording — 1 hit, in `plans/lace-context-iter7-pass-1-actors.md`, a dated actors census quoting the README as it was. Left as history.

## 3. Blob receipt

| File | Before | After |
|---|---|---|
| `AGENTS.md` | `1d6dee1f` | `1d6dee1f` |
| `CLAUDE.md` | `66ad1361` | `66ad1361` |
| `CONTRIBUTING.md` | `29a699e1` | `29a699e1` |
| `docs/law-why-these-documents.md` | `acc81990` | `acc81990` |
| `docs/staking-the-workspace.md` | `f9a30e08` | `f9a30e08` |
| `docs/pointer-emission.md` | `ed24bd62` | `ed24bd62` |

The law's unresolved existence-vs-acceptance sentence pair (RA-H01) is untouched and still the human's.

## 4. Checks

- `.claude/hooks/check-docs.sh`: four hard checks pass; links resolve; advisory total 10 (unchanged); orphans 2 (pass 5's).
- `coord.sh gate law` on the four files: OK at base `dc3a03d`.

## 5. Falsifier disposition

| F | Result |
|---|---|
| a fifth stale root surface repaired silently | HELD — none found; the actors-census hit is dated history and is recorded here, not edited |
| an edit changes the gate's meaning | HELD — every new sentence says unaccepted, RM-A open, no `src/` |
| the live law touched | HELD — blob-identical |

## 6. Coverage moved

| Surface | Before | After |
|---|---|---|
| Stale reference sentences at the court root | 2 | **0** |
| Court index rows routing to the ASCII companions | 0 | **1** (four links) |
| Root surfaces stating numerals are printed | 0 | **2** (court index, manifest) |
| Law files changed | — | 4 of the plan's 4 (5th conditional on RA-H02, not ruled) |

## 7. Final receipt

```
REFERENCES §RULE:        CURRENT (RM-A retain-when named; old sentence quoted, dated)
README AGENTS ROW:       EVERY AGENT, not Grok-only
COURT INDEX:             COMPANIONS LINKED · NUMERALS PRINTED
MANIFEST SOURCE CORPUS:  NUMERALS = graphics' · LETTERS = manifest's
LIVE LAW / STAKE / AGENTS / CLAUDE / CONTRIBUTING / POINTER DRAFT:  BLOB-IDENTICAL
RA-H01:                  HUMAN'S, untouched
RA-H02:                  NOT RULED; delimiter untouched
RM-A:                    OPEN / MISSING-A
POINTER ACCEPTANCE:      ABSENT
IMPLEMENTATION:          CLOSED
NEXT:                    pass 4 (hologram) — PLAN; waits on the human's proceed
```

Pass 3 stops here.
