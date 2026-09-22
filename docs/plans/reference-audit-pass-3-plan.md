# Reference audit — pass 3 plan: court-root reference wording (law station)

**Status:** PLAN · not executed.  
**Station:** law (execution). This plan file is maps-owned.  
**Board:** [reference-audit-iteration-plan.md](reference-audit-iteration-plan.md) · findings RA-R01, RA-R02, RA-R03, RA-R04, RA-G09 (law half) · ruling RA-H02.  
**Pinned:** `21652f463b3178075cc9d4568847502766c0304a`.  
**Editor (declared):** whoever holds `law`. A law-station claim confers none of the human's reserved decisions.  
**Emission:** untouched. The live law's fenced block and its unresolved sentence pair (RA-H01) are not edited here.

## Question (one act)

Can the court root — `references.md`, `README.md`, `docs/README.md`, one sentence in `systems-manifest.md` — say what the graphics shelf now shows and what the current gate is, in at most five sentences and one delimiter row, without duplicating the shelf and without a word that reads as acceptance?

## Measured before proposing

| Surface · line | Says | Should say | Why |
|---|---|---|---|
| `docs/references.md:146` | *"Pointer emission remains a `[GAP]` until written in `docs/pointer-emission.md` from the four graphics, not from these volumes …"* | the draft exists and is reconciled; the current Core-adjacent open is RM-A retain-when; the five volumes and the three behavioral-goal sources still do not supply it | stale broad wording missed by repo-lag Pass 2's audit |
| `README.md:97` | `AGENTS.md` = *"Standing orders for any Grok / Grok Bot / Grok Build session in this tree."* | standing orders for every local and cloud agent; Claude Code loads them through `CLAUDE.md` | contradicts `CLAUDE.md` and `AGENTS.md`'s own first line |
| `docs/README.md` court table | three rows: PNGs · manifest · D1 close reading | a fourth row for the Graphic D companion once pass 1 lands; one clause that panel numerals are printed and letters are assigned | the court's own index should route to the fourth companion |
| `docs/systems-manifest.md` *Source corpus* block | four bullets naming the PNGs and attachments | one added sentence: *panel numerals are printed on each graphic; the A/B/C/D letter is this manifest's* | the manifest is where labels are said to come from |
| `docs/pointer-emission.md:13–14` | `| Rule | Still | Not |` over `|---|---|` | `|---|---|---|` | format only; **only if RA-H02 says yes** |

Verified unchanged and not to be edited: `AGENTS.md`, `CLAUDE.md`, `CONTRIBUTING.md`, `docs/law-why-these-documents.md`, `docs/staking-the-workspace.md`, `LICENSE`, `.gitignore`.

## Thesis / falsifier

**Thesis.** Four sentences and one row fix every law-owned misstatement the audit found; nothing else at the root needs words.

**Falsifier.** A fifth surface at the root is found stale during execution and is repaired silently instead of being added to this plan's table in the open; or any edit changes the gate's meaning (acceptance, RM-A, target); or the live law is touched.

## Steps

1. Pull ff-only · `which` each file → `law` · `claim law "<Identity>"` with an expected hold.
2. Wait for pass 1 to be on `main` (or on the campaign branch, if the human runs the campaign there) before adding the `docs/README.md` companion row; if pass 1 was refused (RA-H05), add only the numerals clause.
3. `references.md`: replace the line-146 sentence with current wording; keep the paragraph's refusal (*discard it for Core and keep it as reading notes*) intact.
4. `README.md:97`: reword the row.
5. `docs/README.md`: the row and the clause.
6. `systems-manifest.md`: one sentence in the *Source corpus* block; no Piece, contract or open-question text changes.
7. `pointer-emission.md`: the delimiter row, only with RA-H02 = yes; record the human's sentence and its locator in the findings.
8. Blob-verify the untouched law surfaces (list their blob SHAs before and after, as repo-lag Pass 2 did) · gate · `check-docs` · commit · release · findings file.

## May write / must not

**May write (law):** `docs/references.md` · `README.md` · `docs/README.md` · `docs/systems-manifest.md` (one sentence) · `docs/pointer-emission.md` (delimiter only, conditional).  
**Must not:** edit the live law or the frozen stake · touch `AGENTS.md` / `CLAUDE.md` / `CONTRIBUTING.md` · change any Piece, SM-C contract, open question or Answer/Stamp line · write *accepted*, *SPOKEN*, or a retention rule · repair kit, hologram, maps or coord files from the law station.

## Expected vs actual

| | Expected | Actual |
|---|---|---|
| Law files changed | 4 (5 with RA-H02) | NOT_TESTED |
| Law surfaces blob-identical | `AGENTS.md`, `CLAUDE.md`, `CONTRIBUTING.md`, live law, frozen stake | NOT_TESTED |
| Stale sentences remaining at the root | 0 | NOT_TESTED |
| Gate wording changed | 0 | NOT_TESTED |
| Human acceptance | ABSENT | — |

## Stop

Stop when the root sentences are committed under one law claim and released. Hologram is pass 4 and needs its own claim.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Correcting the label on the box the lace came in changes nothing about the lace. RM-A remains `[GAP]`.
