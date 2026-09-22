# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 6 access / working-set map

**Status:** EXECUTED PASS-6 ARTIFACT.
**Execution base:** 9c1e02ac0ad38dd9708a8c38dcd3a82c801ed5c4.
**Authority:** maps-level derivation from the current mechanism registry, mathematical execution model, branch contracts and Pass-5 requirements. Not Core. Not an implementation design.

## 1. Result

**CORRECTNESS WORKING SET PARAMETRIC.**

No current mechanism proves that the entire retained Lace history must be simultaneously resident in Wasm memory.

Several mechanisms require access to arbitrary earlier history. That is an addressability/replay obligation, not a whole-residence obligation.

The strongest current Core-side classes are PREFIX-SCAN and GLOBAL-DERIVED. Both can be satisfied by replay/window machinery in principle. Exact resident bytes remain parametric because encoding, WORD payload bounds, supported sample/window sizes and implementation algorithms are not selected.

## 2. Access classes

Pass 6 uses the plan's classes:

- TAIL-LOCAL
- POINT-READ
- FINITE-SET
- RANGE/WINDOW
- PREFIX-SCAN
- GLOBAL-DERIVED
- WHOLE-RESIDENT

WHOLE-RESIDENT requires a proof. None was found.

## 3. Mechanism audit

| Mechanism | Minimum access class | Correctness working set, CWS | Performance working set, PWS | Whole history resident? |
|---|---|---|---|---|
| WORD arrival | TAIL-LOCAL | arriving value + one append buffer + frontier/capacity facts | OPEN | no |
| seen/unseen + root recovery | PREFIX-SCAN is sufficient in principle; resident index is optional | query WORD identity + one decoded prior row at a time + first-match/root candidate; exact bytes depend on E and G1 identity | OPEN; resident map/index may accelerate but is derived | no |
| RootTouch | TAIL-LOCAL + FINITE-SET(2) | new occurrence position + root position + Join append buffer; point read only if existence proof requires carrier lookup | OPEN | no |
| binary Join | FINITE-SET(2) | two validated earlier positions + frontier/line identity + append buffer | OPEN | no |
| L-M19 finite grounding | FINITE-SET(k), streamable construction | selected sample representation is parametric in k; repeated Join itself needs prior grounded point + next operand + append buffer | OPEN | no; finite does not mean small |
| L-M20 position×scale sampling | GLOBAL-DERIVED + PREFIX-SCAN and/or RANGE/WINDOW | parametric in active anchor/window/scale state; current model permits local reconstruction and does not require global materialization | OPEN | not proved |
| L-M21 star/search | GLOBAL-DERIVED + POINT/FINITE/RANGE reads | disposable frontier/path/SearchHandle state plus carrier reads; size depends on explicit search frontier/window | OPEN | not proved |
| RM-A retain-when | EXCLUDED | no accepted RM-A state may be counted | n/a | n/a |

## 4. WORD identity / root recovery

Current math defines Seen and Root as reads over WORD occurrences, with G1 token/value identity still OPEN.

A correctness implementation does not need an authoritative root table.

A prefix scan can:

1. hold the arriving/query WORD value;
2. read one prior row;
3. test whether it is a WORD and value-equal under the accepted future G1 policy;
4. preserve the first matching Index as the root candidate;
5. continue or stop according to the proven scan rule.

That demonstrates that whole-prefix **residence** is not semantically required for root recovery.

It does not prove this is fast enough.

A resident hash/index/tree is therefore a PWS candidate, not semantic state. If lost, replay must recover the same Lace truth.

## 5. RootTouch and Join

For a new POINTER row at frontier j, current law requires both operands to refer to earlier same-line rows.

Once the operand positions are lawfully supplied, correctness needs only finite evidence:

~~~
0 <= a < j
0 <= b < j
same authoritative Lace line
~~~

If carrier handles are opaque and already prove existence/same-line identity, full operand rows need not be resident. If raw external positions are admitted later, POINT-READ validation may be required.

Either way the obligation is finite-set addressability, not full-history residency.

## 6. L-M19 finite grounding

For a selected ordered sample S of cardinality k, the mathematical model constructs repeated binary Join.

A conservative input-held bound is:

~~~
CWS_ground_input <= k * B_Index + O(1 row/index state)
~~~

The Join ladder itself can consume the sample sequentially:

~~~
(accumulator_grounded_point, next_operand)
    -> one new Join
    -> next accumulator
~~~

so the construction step need not hold all historical Lace rows resident.

This pass does not assume the selected sample can always be streamed. If the lawful sample producer materializes all k positions, that input custody is O(k). k remains a parameter. "Finite" is not "small."

## 7. L-M20 sampling

The current mathematical model explicitly says the position×scale surface is derived and may be reconstructed locally around an anchor rather than globally materialized.

Therefore:

- authoritative input requirement: readable/replayable immutable Lace prefix;
- resident requirement: active decoded rows/windows plus active scale/anchor state under the chosen algorithm;
- global sampling table: forbidden as authoritative state;
- exact CWS byte bound: OPEN / algorithm-and-envelope parameter;
- whole-history residency: not established.

A candidate windowed implementation may maintain overlapping rolling windows or replay ranges. Pass 6 does not choose one.

The important result is only:

~~~
needs history access
    !=
needs history resident
~~~

## 8. L-M21 star/search

SearchHandle is defined as disposable replay metadata. The current search model preserves explicit frontiers and path witnesses and rejects flat closure as the default result model.

Correctness therefore requires:

- an immutable prefix identity through which replay is defined;
- addressable/replayable WORD/POINTER history;
- the explicit frontier/path state currently being expanded.

It does not require a durable reverse-pointer database, Star table, graph database, or whole-history resident mirror.

Search CWS remains parametric in the explicit frontier/window/path budget chosen for a query. No accepted universal bound exists.

## 9. RM-A fence

RM-A remains MISSING-A.

Pass 6 therefore excludes from accepted CWS:

- learned retention weights;
- hidden semantic scores;
- candidate persistence maps;
- scheduler state that decides what deserves retention;
- any other unaccepted retain predicate.

Memory cannot be "sized" by inventing the missing semantics.

## 10. Correctness vs performance

No current governing source establishes a numeric Core latency, throughput, startup/recovery, energy, or thermal service level.

The recorded production distribution goal includes a no-required-reconnect/offline property after install, but that is a connectivity/lifetime property, not a numeric execution-speed budget, and its production-host interpretation remains unresolved in the kit record.

Therefore:

~~~
PWS = OPEN
~~~

for every mechanism in this pass.

A faster resident index, cache, larger window, GPU projection, or precomputed frontier may later be justified by measured performance requirements. Until then it cannot be promoted into semantic state or used to select a compile target.

## 11. Working-set verdict

- Root/seen recovery: bounded simultaneous state under a prefix-scan strategy, encoding-dependent.
- RootTouch: finite-set.
- Join: finite-set.
- finite grounding: k-parametric input, constant per Join step.
- sampling: window/scale-parametric.
- search: frontier/window-parametric.
- RM-A: excluded.
- numeric PWS: OPEN.

**Working-set verdict: CORRECTNESS WORKING SET PARAMETRIC.**
**WHOLE-HISTORY RESIDENCE: NOT REQUIRED BY CURRENT EVIDENCE.**
