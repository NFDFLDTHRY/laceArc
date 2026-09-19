# Verification iteration 2, pass 3 — the register, tested against its own rule

**Status:** `[PLAN]`. Execution NOT_RUN. **Station:** maps — this plan, and [the register](../namespace-register.md) itself.
**Emission:** `[GAP]`. No `src/`.
**Iteration:** [iteration 2](verification-iteration-2-plan.md), pass 3 of six. Passes 1 and 2 EXECUTED.

## 0. The question changed when it was measured

The iteration plan set pass 3 as: *"close the 42, or rule them out of scope against a stated threshold rather than case by case."*

**There is no threshold that can do it, and measuring is what showed that.**

## 1. The measurement

### Registered families bottom out at six files. The excluded ones reach 124.

For every family the register claims, the widest file-spread of any of its tokens:

| Family | Widest token |
|---|---|
| Reason model | **6 files** |
| Downstream finding | 7 |
| Water spec | 17 |
| Atomic constraint | 22 |
| … | … |
| Graphic panel · Rowlands section · C5 planes | **97 files** |

And the tokens the register explicitly declines to claim:

| Token | Files |
|---|---|
| **`T2`** | **124** |
| **`T1`** | **124** |
| `T4` · `T3` · `T5` | 117 · 116 · 111 |
| `T6` · `T0` · `T7` | 66 · 47 · 40 |

**`T1` and `T2` are the most widespread identifiers in the repository, and they are the ones the register rules out of scope.** No file-spread threshold can both include Reason model at 6 and exclude `T` at 124.

### So the stated rule is not the rule being applied

The register says: *"Identifiers that are never cited across files need no entry."* That is a **spread** rule, and the register's own contents refute it.

The rule actually applied is about **ambiguity across shelves** — whether a reader on one shelf could take a token for another shelf's. **Pass 3's job is to state that rule and re-derive membership from it**, not to hunt a threshold that cannot exist.

### The exclusion paragraph carries two errors

> "`T1`–`T5` appear in **50 files** and mean a **ticket number inside one pass plan** in most of them, and **rope tension** — `T2 ≤ κ T1` — in the Kauffman clipboard. Locally scoped, locally unambiguous."

1. **50 files. Measured now: 124.** The count is stale by a factor of two and a half.
2. **It names two different meanings and then calls them unambiguous** — a ticket number and a rope tension — in one sentence. Under the ambiguity rule the register actually applies, `T1`–`T5` are the strongest candidates in the tree, not the clearest exclusions.

## 2. My own probe's artifacts, followed through

Pass 1 reported 42 unclaimed tokens and immediately caught one of its own: **`L0` is not an identifier**, it is the variable in the Kauffman bracket. Following that through changes more of the 42:

| Token | Bare | Prefixed | Reading |
|---|---|---|---|
| `G9` | 6 | **136** as `P-G9` | almost always prefixed; likely not a bare family |
| `W9` | 27 | 29 as `FM-W9` | **both ways** |
| `X7` | 64 | 15 as `FM-X7` | mostly bare |
| `K8` | 17 | 3 | bare — Kauffman's K-series |
| `F7` | 18 | **0** | bare |

**Membership cannot be decided by regex.** That is the same conclusion iteration 1's pass 3 reached about the modal/assertive split, arrived at independently, and it sets the method: **pass 3 reads each candidate family in place.** A count of bare occurrences is evidence, not a verdict.

## 3. What pass 3 does

1. **State the real rule** in the register, replacing the spread rule with the ambiguity rule the document already applies.
2. **Re-derive membership** against it, reading each candidate family rather than grepping:
   - `K7`–`K9` — Kauffman's series against the atomic constraints `K1`–`K6`. **A confirmed collision, adjacent range, same letter.**
   - `T0`–`T9` — ticket numbers against rope tension. The register's own paragraph supplies both meanings.
   - `X7`–`X9` — against gear audit keys `X1`–`X6` and the crate-map page `X`.
   - `G8`–`G9` — against atomic gaps `G1`–`G7`.
   - `F7` — against water `F1`–`F5` and downstream `F01`–`F12`.
   - `W1`–`W9` — the WASM failure modes. Bare or always `FM-`-prefixed is the question.
   - `D01`–`D10`, `P02` — history IDs. Zero-padded, which the register already calls load-bearing.
   - `Q1`–`Q12` — manifest open questions, already mentioned in the register but never claimed.
3. **Correct the two errors** in the Out-of-scope paragraph: the stale 50, and the self-contradiction.
4. **Record what is excluded and why**, so the next pass can test the rule instead of re-litigating each token.

## 4. Pass 3 may act, and that is a real difference from pass 2

Pass 2 found four broken checks and **applied nothing**, because `check-docs.sh` is kit and the fix is an open human ruling (D3).

**The register is maps, and its inclusion rule is not a human ruling** — it is `[PROPOSAL]` status by its own header, written by this station, and the errors are factual. Pass 3 edits it.

**The line it does not cross:** stating a rule and re-deriving membership is this station's work; **renaming a token is not.** The register's own first principle stands — *"Nothing is renamed to fix this, and nothing should be."*

## 5. What pass 3 must not do

- **Not rename anything.** The gear keys are string literals and a documented 1:1 audit depends on them.
- **Not invent a range the source does not have.** If a family's upper bound is unstated, the register says so.
- **Not claim a family from a regex count.** §2.
- **Not re-litigate `T` by taste.** Apply the stated rule and let it decide, including against the register's own prior judgment.
- **Not fill `[GAP]`.** A complete register still says nothing about pointer emission.

## 6. Accept pass 3 when

The register states the inclusion rule it actually applies; every one of the 42 is either claimed, excluded with a reason, or shown to be a probe artifact; the Out-of-scope paragraph's stale count and self-contradiction are corrected; and the headline counts are **re-derived from the table** rather than incremented by hand, as passes 2b and 2c established.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A register that excludes the two most common names in the repository, on the grounds that they are unambiguous, in a sentence that gives two meanings for them — that is not a filing problem. **It is a rule that was never the rule.** Pass 3 writes down the one that has been operating. Emission remains `[GAP]`.
