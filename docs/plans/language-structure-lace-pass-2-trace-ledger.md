# Language structure / interaction loop — Pass 2 interaction trace ledger

Status: EXECUTED PASS-2 TRACE LEDGER.
Parent analysis: language-structure-lace-pass-2-boundary-algebra.md.
Authority: Lab artifact only. No Core / law / manifest acceptance.

## 0. Mechanical trace model used

An ephemeral in-session checker used the current closed mechanics only:

- exact artificial token equality for bounded G1;
- Arrive appends one WORD;
- if value was seen, append RootTouch Join(new occurrence, root);
- no generic RM-A Join;
- event-span grounding, when explicitly tested, uses the current finite ordered Join ladder.

The ephemeral checker was not committed. The exact input traces and row outputs are recorded here so the result does not depend on an unseen script.

Notation:

W(x) = WORD x.
P(a,b) = POINTER Join(a,b).

## S1 — same words, different segmentation

External truth A:

IN [a b]
OUT [c d]

External truth B:

IN [a]
OUT [b c d]

### Current machinery only

Both flatten to:

a b c d

Both produce:

0000 W(a)
0001 W(b)
0002 W(c)
0003 W(d)

Result:
- payload order recoverable;
- segmentation not recoverable;
- role not recoverable.

BE-1 witness: PASS.

### BE-B event-span grounding

Trace A candidate rows:

0000 W(a)
0001 W(b)
0002 P(0000,0001)   payload representative for [a b]
0003 W(c)
0004 W(d)
0005 P(0003,0004)   payload representative for [c d]

Trace B candidate rows:

0000 W(a)
0001 W(b)
0002 W(c)
0003 W(d)
0004 P(0001,0002)
0005 P(0004,0003)   payload representative for [b c d]

Result:
- segmentation changes topology under this candidate;
- direction still absent;
- event meaning of those POINTERs still depends on the candidate protocol.

Disposition:
BE-B distinguishes this multiword segmentation but does not solve role or event typing.

## S2 — same payload, opposite roles

World A:

IN [yes]
OUT [yes]

World B:

OUT [yes]
IN [yes]

### Current machinery

Both:

0000 W(yes)
0001 W(yes)
0002 P(0001,0000)   RootTouch

### BE-B

Each act has length one.

Theorem G n = 1 returns the WORD itself, so no event-span wrapper is appended.

Both worlds therefore remain identical.

Result:
- role cannot come from lexical value;
- bare span grounding does not mark one-word events;
- BE-B fails as a complete boundary encoding.

BE-3 witness: PASS.

### BE-H implication

If dedicated role anchors existed, a fresh wrapper could be:

P(0000, A_IN)
P(0001, A_OUT)

or role-swapped.

That would distinguish the worlds, but anchor identity and wrapper authority are new premises.

## S3 — repeated words across a boundary

External truth:

IN [a b a]
OUT [a b]

### Current machinery

Word-row addresses are:

first IN:
a -> 0000
b -> 0001
a -> 0002
RootTouch -> 0003 = P(0002,0000)

OUT:
a -> 0004
RootTouch -> 0005 = P(0004,0000)
b -> 0006
RootTouch -> 0007 = P(0006,0001)

Current final rows:

0000 W(a)
0001 W(b)
0002 W(a)
0003 P(0002,0000)
0004 W(a)
0005 P(0004,0000)
0006 W(b)
0007 P(0006,0001)

Result:
- repeated values reuse roots;
- every occurrence remains distinct;
- no boundary fact follows from root membership.

### BE-B event-span grounding

After first act:
0004 P(0000,0001)
0005 P(0004,0002)

The first event representative is 0005.

After second act and its RootTouches:
0010 P(0006,0008)

The second event representative is 0010.

Full candidate rows:

0000 W(a)
0001 W(b)
0002 W(a)
0003 P(0002,0000)
0004 P(0000,0001)
0005 P(0004,0002)
0006 W(a)
0007 P(0006,0000)
0008 W(b)
0009 P(0008,0001)
0010 P(0006,0008)

Result:
- external span can be grounded without collapsing repeated occurrence identity;
- the ground point covers selected WORD occurrences;
- role still absent;
- candidate adds topology not currently authorized by boundary law.

## S4 — local candidate selected, send fails

Device-local truth:

candidates = [x, y, z]
selected = y
send attempt = failed
external commit = false

Required Lace effect under current law:

none due to candidate generation or selection.

If y were appended as an actual output event before external commitment, Lace would record something that did not happen under the human's actual-output hypothesis.

Result:
SELECTED_OUT != COMMITTED_OUT.

BE-4 counterexample: PASS.

## S5 — rendered projection only

External test fact:

a projection/view is rendered.
No conversational response crossing is declared.

Current law:

PROJECT leaves all state unchanged.
B11 / C11 forbid projection write-back.

Required result:
no event append solely because a view was rendered.

Any boundary candidate that records S5 as conversational output violates B-I5.

Control result: PASS.

## S6 — one input, two committed outputs

External truth:

IN [a b]
OUT1 [c]
OUT2 [d e]

### Current payload-only rows

0000 W(a)
0001 W(b)
0002 W(c)
0003 W(d)
0004 W(e)

### BE-B event-span candidate

0000 W(a)
0001 W(b)
0002 P(0000,0001)   IN payload representative
0003 W(c)            OUT1 representative is the WORD itself
0004 W(d)
0005 W(e)
0006 P(0004,0005)   OUT2 payload representative

The event representatives are:
IN = 0002
OUT1 = 0003
OUT2 = 0006

BE-F with one universal input-output pair cannot represent both response edges with one row.

At least:
P(OUT1, IN)
P(OUT2, IN)

would be needed for two explicit transaction edges, subject to separate authority.

Result:
one input -> many outputs refutes one-pair universal provenance.

## S7 — several inputs contribute to one output

External truth:

IN1 [a]
IN2 [b c]
OUT [d]

### BE-B event-span candidate

0000 W(a)            IN1 representative
0001 W(b)
0002 W(c)
0003 P(0001,0002)   IN2 representative
0004 W(d)            OUT representative

If OUT has support from both IN1 and IN2, one binary relation can name only one input point.

Options would be:
- two explicit response/support Joins;
- an already-lawful aggregate context point;
- another declared relation structure.

Boundary truth alone does not select the full support set.

Result:
BE-F universal one-pair provenance REFUTED.

## S8 — response later quoted in new input

External truth:

IN [a]
OUT [b c]
IN [b c d]

### Current closed payload mechanics

0000 W(a)
0001 W(b)
0002 W(c)
0003 W(b)
0004 P(0003,0001)   RootTouch b
0005 W(c)
0006 P(0005,0002)   RootTouch c
0007 W(d)

Result:
- later quoted words remain distinct occurrences;
- prior OUT words may serve as roots if they were recorded as ordinary words;
- feedback/re-entry does not require rewriting the earlier response.

### BE-B candidate

0000 W(a)            first IN representative
0001 W(b)
0002 W(c)
0003 P(0001,0002)   OUT payload representative
0004 W(b)
0005 P(0004,0001)
0006 W(c)
0007 P(0006,0002)
0008 W(d)
0009 P(0004,0006)
0010 P(0009,0008)   later IN payload representative

Result:
the existing substrate can preserve repeated response vocabulary and later re-entry while keeping occurrences separate.

Role still requires an explicit boundary protocol.

## S9 — external commit / record gap

External chronology:

1. selected response exists locally;
2. host sends it;
3. external sink commits / user can observe it;
4. before Lace records the act, process fails.

World truth:
COMMITTED_OUT = true.

Lace truth:
response event absent.

This is possible unless external commit and Lace recording are made atomic, or the host retains enough pointable custody to replay the record.

Result:
- exactly-once proof-grade output history is not currently established;
- GAP-HOST is relevant;
- R3 durability is relevant when history completeness must survive failure;
- R4-style custody is needed for committed-but-unrecorded output.

Pass 2 does not choose the recovery protocol.

## Candidate summary over S1-S9

| Candidate | S1 segmentation | S2 role / single word | S3 repeats | S4 fail-send | S5 view | S6/S7 multiplicity | S9 crash gap |
|---|---|---|---|---|---|---|---|
| BE-A plain loopback | FAIL | FAIL | preserves words | PASS if commit-gated | PASS | no provenance | OPEN |
| BE-B span grounding | distinguishes tested multiword segmentation | FAIL | preserves occurrences | PASS if commit-gated | PASS | no provenance | OPEN |
| BE-C role anchors | needs span + anchors | can distinguish | compatible | commit-gated | PASS | no support relation | OPEN |
| BE-D sentinels | can encode by content pollution | can encode | collision risk | commit-gated | PASS | no support relation | OPEN |
| BE-E sidecar | yes externally | yes externally | yes | external | external | arbitrary | sidecar becomes authority |
| BE-F pair relation | assumes event points | inherits roles | compatible | commit-gated | PASS | FAIL as universal one-pair | OPEN |
| BE-G support-retention | not boundary solution | not boundary solution | n/a | device authority breach | n/a | could be plural but unauthorized | OPEN |
| BE-H role-bound wrapper | yes under protocol | yes under protocol | compatible | commit witness required | PASS | support still separate | host/custody OPEN |

## Mechanical receipt

The in-session mechanical checker used only:
- exact string equality for artificial tokens;
- append WORD;
- mandatory RootTouch on seen values;
- repeated Join for explicitly selected spans.

Recorded row-count checks:

| Specimen | current rows | BE-B rows |
|---|---:|---:|
| S1 Trace A | 4 | 6 |
| S1 Trace B | 4 | 6 |
| S2 role worlds | 3 | 3 |
| S3 | 8 | 11 |
| S6 | 5 | 7 |
| S7 | 4 | 5 |
| S8 | 8 | 11 |

The checker was only a trace calculator. No result depends on an invented RM-A rule.

## Ledger verdict

The tests separate three facts that had been easy to blur:

1. words can be recorded;
2. a selected span can be grounded;
3. an external act can be identified as an interaction event.

Current law closes the first.
Current mathematics supplies construction for the second.
The third remains an explicit boundary protocol problem.
