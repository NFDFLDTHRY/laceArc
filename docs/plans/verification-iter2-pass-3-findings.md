# Verification iteration 2, pass 3 — findings

**Status:** record. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Method:** [the pass 3 plan](verification-iter2-pass-3-plan.md). **Applied to** [the register](../namespace-register.md).

---

## The rule was replaced, not patched

The register's stated rule was a **spread** rule: *"identifiers that are never cited across files need no entry."* Its own contents refuted it — narrowest registered family at **6** files, excluded tokens at **124**.

**The rule it actually applies, now written down:**

> **A family needs an entry when a reader on one shelf could take its token for another shelf's.** Spread is not the test. It is what makes a collision expensive, not what makes it one.

## Five families registered, three excluded with a reason, one struck

Each was **read in place**, not grepped — §2 of the plan established that a bare-occurrence count is evidence and not a verdict.

| Family | Range | Decision | Why |
|---|---|---|---|
| **Kauffman clipboard section** | `K1`–`K9` | **registered** | `K8` is "Slide equivalence, Part II §4°". Bare, constraint-shaped, and it runs straight over the atomic map's `K1`–`K6` |
| **Xiao & Zhu clipboard section** | `X1`–`X9` | **registered** | `X3`/`X7` are next-token-as-Core forbids. Collides with gear audit `X1`–`X6` and the crate-map page `X` |
| **Rust second-reading finding** | `F1`–`F11` | **registered** | `F7` is the validator finding this iteration keeps citing. Collides with water `F1`–`F5`, **and padding does not separate them** — both are bare |
| **Manifest open question** | `Q1`–`Q12` | **registered** | The register already mentioned the `Q` convention and never claimed the range |
| **Ticket · tension · task** | `T0`–`T9` | **registered** | **Three meanings**, below |
| WASM clipboard section | `W1`–`W9` | **excluded** | No competing `W` family exists. Widespread and unambiguous — **exactly what the register wrongly claimed of `T`** |
| GPU wave series | `G8`–`G9` | **excluded** | 136 prefixed `M-G9`/`P-G9` against 6 bare. The prefix is the tell |
| History document ID | `D01`–`D10`, `P02` | **excluded** | Zero-padded, and Graphic D stops at `D6`. Both tells agree |
| `L0` | — | **struck** | Not an identifier. The variable in the Kauffman bracket relation |

## `T` had a third meaning nobody had named

The old paragraph gave two — a ticket number inside a pass plan, and rope tension `T2 ≤ κ T1` in the Kauffman clipboard — and concluded "locally unambiguous" in the same sentence.

**Reading found a third:** the `M-T`/`P-T` task series in the wasm and GPU campaigns — `M-T1 / M-T3`, `P-T3 (stack-type / matching)`. Prefixed, so the prefix is the tell, but it is a third owner of the same letter.

**`T1` and `T2` appear in 124 files each — more than any other identifier in the repository — carrying three meanings, and they were the register's flagship exclusion.**

## Two errors corrected rather than quietly dropped

| | Said | Measured at pass 3 |
|---|---|---|
| `T1`–`T5` spread | **50 files** | **124, 124, 116, 117, 111** |
| `T1`–`T5` ambiguity | "locally unambiguous" | **three meanings**, two of them named in that same sentence |

Both are recorded in the register beside the new rule, not deleted. The old paragraph's reasoning is why the rule needed replacing, and erasing it would hide the evidence.

## The tells, now ordered

Pass 3 wrote down the hierarchy the register had been using without stating: **zero-padding**, then **prefix**, then **range disjointness** — with the standing caveat from pass 1 that padding stops telling at ten.

## Headline, re-derived from the table

| | before | after |
|---|---|---|
| Families | 21 | **26** |
| Tokens with 2+ owners | 41 | **60** |
| with 3+ | 19 | 19 |
| with 4+ | 5 | 5 |

**The two-owner count moved 41 → 60** because the five new families sit on letters other families already held — `K`, `X`, `F`, `Q`, `T`. Counted from the table by the same script every time, never incremented by hand.

## What pass 3 did not do

- **Renamed nothing.** The register's first principle stands.
- **Invented no upper bound.** `K1`–`K9`, `X1`–`X9` and `F1`–`F11` are the ranges the sources show; if a campaign extends them the row extends.
- **Did not re-litigate `T` by taste.** The new rule decided it, against the register's own prior judgment, which is what a rule is for.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

The register knew which knots were which. It just had the wrong reason written down for how it knew — and the reason it had written would have excluded the two names the whole tree leans on. **Pass 3 wrote down the reason that was actually operating.** Emission remains `[GAP]`.
