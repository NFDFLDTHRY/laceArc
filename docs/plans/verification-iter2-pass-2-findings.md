# Verification iteration 2, pass 2 — findings

**Status:** record. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Method:** [the pass 2 plan](verification-iter2-pass-2-plan.md). **Pinned at `6dd1263`.**
**Nothing was planted in the authoritative checkout.** Every case ran in a disposable copy.

---

## 0. The harness, and the delta explained

`git archive HEAD` into scratch, `git init`, one commit tagged `base`, run the hook. Reset between cases is **`git reset --hard base && git clean -qfdx`**.

**The 40-against-39 delta the plan refused to trust: there was none.** Measured at one pin, live and copy both report 309 files and 40 advisories. The earlier difference was a commit landing between the two runs. **Churn, read as an instrument property** — which is the mistake this iteration is about, made by this iteration, on itself.

## 1. The harness failed twice before it worked, in the way the pass is about

**Recorded because hiding it would make this record the thing it is auditing.**

**First driver: the reset did not reset.** It used `git checkout -- .`, which restores tracked files and leaves **staged new files in place**. Case 1 deleted a canonical PNG and it stayed deleted; every later case ran against a tree where four documents had broken links to it. **Case 4's "false positive" in that run was pollution from case 1**, and would have been published as a finding.

**First driver: the patterns matched both outcomes.** `grep -E 'no src/'` matches the *success* line "no src/ (Core stays unwritten…)". Four of ten results were decided by a pattern that fires whether the check passes or fails. **A test harness that cannot tell a pass message from a fail message**, written to audit checks that cannot tell a mention from a use.

Fixed by matching each check's **own ✅ line** and by hard-resetting to a tag. Both errors are the third failure mode from pass 1 — implemented, running, returning a result, and wrong.

**Third, while writing this record:** the heredoc that wrote it was unquoted, so the shell evaluated a backticked word in the prose as a command and deleted it. `mislead` became nothing. Caught by re-reading the file rather than by any check — **no check in the eight would have seen it**, and the sentence would have shipped with a hole in it. Three tooling failures in one pass, none of them in the thing being audited.

## 2. Twelve cases

| # | Case planted | Expected | Actual | |
|---|---|---|---|---|
| 1 | a canonical PNG removed | FAIL | FAIL | ok |
| 2 | `src/lib.rs` tracked | FAIL | FAIL | ok |
| 3 | a `.pdf` tracked | FAIL | FAIL | ok |
| **4** | **dead link inside a fence** | PASS | **FAIL** | **false positive** |
| 4i | same link outside the fence | FAIL | FAIL | ok |
| **5** | **absence claim inside a quotation** | PASS | **FAIL** | **false positive** |
| 5i | same claim unquoted | FAIL | FAIL | ok |
| **6** | **file linked only inside a fence** | orphan | **not an orphan** | **false negative** |
| 6i | same file linked outside | not an orphan | not an orphan | ok |
| 7 | one word of a law copy altered | FAIL | FAIL | ok |
| **8** | **shelf file linked only inside a fence** | door short | **door covers it** | **false negative** |
| 8i | same file linked outside | door covers | door covers | ok |

**Four of eight checks fail their own label. Pass 1 predicted exactly these four — 4, 5, 6 and 8 — from reading the source.** Every inverse behaves correctly, which settles that the defect is fence and quotation blindness rather than some other breakage.

Case 6 was measured by orphan-count delta, since the hook prints a grouped summary rather than a list: baseline **35**, file linked only inside a fence **35** — it should have been 36. The fenced mention rescued it.

### The two that matter are the silent ones

Checks 4 and 5 **over**-report. They are noisy, someone notices, and the record shows five documents reworded to appease them.

Checks 6 and 8 **under**-report, and their output looks exactly like success:

- **A file can be made to look reachable by mentioning its path inside a code fence.**
- **A door can be made to look covered the same way.**

Nobody has done this on purpose. But the door and orphan advisories are the two the human is being asked to rule on as gates in [iteration 1's D1 and D2](verification-iter1-pass-5-plan.md), **and both can be satisfied by a mention rather than a link.** That is now measured rather than suspected, and it bears directly on those rulings.

## 3. Patches written, not applied

Checks 4, 5, 6 and 8 all extract from prose with a regex and none strips fenced or backticked spans. Check 7 already does this — it walks `\`\`\`` boundaries to find the law block — so **the fix is a pattern the file already contains**, applied to four more places.

**Not applied here.** Closing the check-5 gap is [**D3**](verification-iter1-pass-5-plan.md), an open human ruling, and checks 4, 6 and 8 now have the same shape of finding and belong in the same ruling. **Pass 2 refuses to take a decision it referred upward two passes ago.** A ruling makes this one edit to one kit file.

## 4. 2v — the validator, and why

**F7 reproduces at `6dd1263`.** Reversing every `birth_before` edge — `core` born first, the exact reverse of the plan — returns:

```
PASS: mutA.json ir_version=0.2.0 mode=fixture emission_gate=blocked
summary: doors=7 edges=23 transforms=7 diagnostics=5 pieces=15 seams=3 binds=11
```

**Byte-identical to the golden's own summary line.** The plan and its reverse are indistinguishable in the output.

Pass 1 said the validator "is not missing the code", citing seventeen references to order, edge and cycle. **That was true and misleading, and 2v corrects it.** Reading the assertions: `ir_version` is a known string, `mode` is `fixture`, `source` is an object, `doors` is a list of length 7 carrying required ids. Those seventeen references are **field names the validator reads and echoes, not constraints it enforces.**

**The validator is a schema checker wearing a plan checker's name.** It answers "is this the right shape?" and is named for "is this the right plan?" — and F7's severity of `mislead` is exactly right, since the word "golden" and the word "PASS" both promise the second.

That refines pass 1's third failure mode into something sharper: **not implemented-and-broken, but implemented-at-the-wrong-level and correctly named for the level above it.**

## 5. Coverage

| | |
|---|---|
| Checks with a planted case and its inverse | **8 of 8** |
| Cases run | 12, all in the disposable copy |
| Checks failing their own label | **4** — 4, 5 (over-report), 6, 8 (under-report) |
| Harness fidelity | live and copy identical at one pin; the earlier delta was churn |
| F7 | **reproduced**, and its mechanism named |
| Patches | written in §3, **unapplied**, waiting on D3 |

**Not covered:** the eight `contracts-*.js`, `claim.sh`, `resync.sh`, `session-start.sh` and the Layer III workers. Named in pass 1's inventory; pass 5 holds the coordination pair.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Pass 2 pulled on the knots and four gave way. Then it noticed its own hands were doing the same thing the knots were — a harness that could not tell a pass from a fail, auditing checks that cannot tell a mention from a use. **Both are in the record because a test you had to fix twice is still evidence, and pretending otherwise is the failure.** Emission remains `[GAP]`.
