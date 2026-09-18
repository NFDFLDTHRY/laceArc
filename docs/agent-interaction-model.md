# Agent interaction model — the elephant clock

`[PROPOSAL]` — not law. `docs/agent-control.md` C09: a control change must be
visible as a control change, and its own result cannot authorise it. This file
proposes how **stewards mesh with each other**. Only the human accepts it.

**Grounding** (C01). Existing clock read from `docs/philosophy-map.md` lines
147-250 at commit `cfdaa24`: `VISUALLY_OBSERVED`. The collision in §2 is
`OBSERVED` — it happened in this repository and is in the history. Physical
cord: `NOT_PERFORMED`. Human acceptance: `ABSENT`.

**Scope.** This governs agents writing *about* Lace. It is steward governance
(C06). It is not Core, not an entry type, and not Lace's concurrency design —
see §7, which is the hardest rule in this file.

---

## 1. Why this file exists

`docs/agent-control.md` C07 already governs one agent: one active task, one
branch, a designated editor. It does not say what happens when **several agents
are already inside the repository at once**, which is the actual condition here.

The repository already contains a clock. `docs/philosophy-map.md` builds a going
train — mainspring, case gear H, phase wheel C, escapement W, tape, dial — and
gives the escapement a law: **0 or 1 tick per attempt**, where a `drop` is a
legal advance and a `grind` is power without mesh.

That escapement governs *the tape*. Nothing governs *the hands that write the
documentation*. This file applies the same escapement one layer up.

### Vocabulary already taken

| Term | Already means | So a toucher is not called this |
|---|---|---|
| `HANDS` / `DIAL` | the projection, Graphics B and C | — |
| `touch` | higher-dimensional participation (B8) | — |
| `drop` / `grind` / `locked` | escapement W states | reused here, deliberately |

An agent at work is a **feeler at a station**. Never a hand; the dial owns that
word.

---

## 2. The failure this is built from

Not hypothetical. On 18 September two agents wrote `docs/philosophy-map.md`
simultaneously. One branched at `42cc4fb`, never re-checked the base, and
published four commits while `main` advanced twelve. The other produced 686 lines
on the same subject. The first version was dropped (this branch) because it would
have clobbered better work.

In clock terms: **two feelers dropped on one shaft in one tick.** That is a
grind, and the law already names it — *"grind = power without mesh (not a tick)"*.
The mechanism to prevent it existed. It had simply never been pointed at us.

---

## 3. The mechanics of the metaphor

The blind men and the elephant is usually told as a parable about humility. That
is the weak reading and it is useless as a protocol. The mechanical reading is
exact, and every clause below is a rule:

1. **Every feeler is right where it is.** No reading is false at its station.
   The man holding the trunk is not mistaken about the trunk.
2. **The lie is never the touch. It is the quantifier.** "Trunk" is true. "The
   elephant *is* a snake" is the failure. Scope inflation, not observation.
3. **Disagreement is shape, not dispute.** Two readings that differ have measured
   curvature between two stations. Averaging them destroys the only information
   they carry.
4. **A touch cannot be inherited.** You may inherit a *station* — "left foreleg,
   knee height" — and go feel it yourself. You may not inherit the conclusion.
5. **Untouched is not empty.** Where no hand has been is unknown, never absent.
6. **The elephant must not move.** If you push it to confirm a reading, your next
   reading measures your own push.
7. **Coverage grows; the object is never solved.** More feelers give more
   surface, never consensus. There is no tick on which the elephant is finished.

Rule 6 is the one with a body count in this repository. Every failure in
`docs/history-recovered-2026-09-18.md` is the same failure: an invented recursion
guard, a "local fidelity mirror" substituted for the authoritative file, an
external lookup bypassing traversal, breadth-first closure standing in for
continuing behaviour. In each case machinery was altered, the altered machine was
measured, and the result was attributed to Lace. **That is pushing the elephant
and reporting the push as its shape.**

---

## 3b. Three failure modes the archive names

`Lace_Memory_Recovery_Pass_2_2026-09-18.md` (second pass, another agent's report;
C06 data, not authority) documents three ways feelers fail that §3 does not
cover. None was invented here. All three are recorded in this project's own
history, and all three are failures *of interaction*, not of observation.

### Root, stated by the author

`no_containers.md` (D06) argues that words carry no semantic payload between
minds, and that **"understanding depends on overlap between separately developed
structures."**

That is the elephant, stated formally and by the author, and it is a better root
for this file than the parable. Each feeler develops its own structure. Overlap
is the only thing that crosses. It is also the same claim the clock already makes
— objects do not have relationships; formations do.

### F1 — False mesh. An acknowledgement is not a mesh.

The second pass records that D02 warns even **`EW`, `RULING` and `LOCKED` can
preserve apparent assent while the parties imagine different behavior**, and that
D01 says **silence is not assent**.

In clock terms this is the one state §5 lacks a name for: not `locked`, not
`drop`, not `grind`, but **gears that appear engaged and turn at different
rates**. In elephant terms: two feelers both report "leg" and mean different legs.
The words overlap; the structures do not.

- Agreement is not a reading. It has no station and is therefore not `OBS`.
- A label — approved, accepted, locked, resolved — is evidence that an answer was
  given, never that the same behaviour was imagined. C12 already says this of
  acknowledgement; the archive shows it happening.
- Test for mesh by asking the other feeler to state the *consequence* they expect,
  not to confirm the claim. Divergent consequences under identical words is a
  `DELTA`, and it is the most valuable kind, because it was invisible.

The second pass applies this caution to itself. So does this file.

### F2 — Familiar-adjacent capture. Reporting the shape you expected.

D06 describes a communication failure in which **a reader responds to a familiar
adjacent claim while missing the proposed inversion**. D01 records an instance: a
model **retained the familiar relabeling argument while dropping the rest**.

This is the most dangerous failure in the set, because it produces a *fluent,
confident, well-formed* reading that is about the wrong object. It is rule 6
inverted: rather than moving the elephant, the feeler leaves it alone and reports
the animal they already knew.

- Every unknown object has a familiar neighbour. The neighbour is always easier to
  describe.
- Signal: the reading would have been producible without touching. If your report
  survives deleting the station, you reported the neighbour.
- Signal: the novel claim in a source is an *inversion* of a common one, and the
  report preserves the common one.
- This is the same failure as rule 2 at a different altitude. There the quantifier
  inflates; here the object substitutes.

### F3 — Ordinal drift. An anchor that is only a number is not an anchor.

The second pass found that D01 cites `axioms.html` card numbers as load-bearing
references, that the recovered deck contains no card-number identifiers, and that
subjects at those ordinals do not match. Its conclusion: **"a bare card number
cannot reliably identify a rule"**, and **"title, actual text and version are
needed."**

**This repository is exposed to exactly that failure now.** `D1`, `B8`, `C6`,
`Piece 5` are labels the manifest and these files assign. They are not printed in
the graphics. Panel provenance is itself unresolved — see
`docs/graphics-close-reading.md` §7. If the graphics are ever re-rendered or
re-ordered, every citation in this repository drifts precisely as D01's did, and
silently.

- An anchor carries title, quoted text, and version — not an ordinal alone.
- `docs/graphics-close-reading.md` transcribes D1's eleven rows verbatim rather
  than citing the panel by number. That is the practice this failure mode
  requires, and it was luck, not design.
- **[GAP]** Whether the four graphics should carry stable in-image identifiers is
  a question for the mainspring. This file does not propose changing them.

## 4. The mapping

| Metaphor | This repository | Existing term |
|---|---|---|
| a station | commit + file, or graphic + panel | C01 "name the graphic and panel" |
| a reading | a pointable claim | `OBS` |
| "the elephant is a rope" | conclusion with no anchor | `INVALID` |
| two readings differ | recorded, both kept | `DELTA` / `[CONFLICT]` |
| untouched region | nobody has been there | `UNK` / `[GAP]` |
| one feeler advances a shaft | a legal write | `drop` |
| two feelers, one shaft, one tick | the §2 collision | `grind` |
| nothing pointable yet | cannot cross | `locked` / banks |
| the human | the only source of acceptance | mainspring |
| moving the elephant | altering the object to fit a reading | forbidden, C09 |

---

## 5. The escapement, applied to feelers

```
        MAINSPRING = the human
              |  only source of acceptance; never an agent
              v
   +----------------------------------------+
   |  STATIONS        many feelers, at once  |
   |  each anchored; none authoritative      |
   +--------------------+-------------------+
                        |  readings (OBS), freely parallel
                        v
   +----------------------------------------+
   |  ESCAPEMENT      one shaft, one tick    |
   |  locked = nothing pointable yet         |
   |  drop   = exactly one feeler advances   |
   |  grind  = two advance -> not a tick     |
   +--------------------+-------------------+
                        |  0 or 1 drop
                        v
   +----------------------------------------+
   |  REPOSITORY      the change set lands   |
   +--------------------+-------------------+
                        |
                        v
     re-read by every feeler as a new station
```

**Reading is parallel. Writing is escaped.** Any number of feelers may take
readings of the same region at the same time; that is the point of having several.
Only one may advance a given shaft per tick.

### The shaft rule

- **A shaft is one file**, or one named contract.
- **0 or 1 drop per shaft per tick.** A tick is named by its base commit.
- **Before any drop, verify the shaft has not turned** (C09). If it has, the
  reading is stale: re-read, re-anchor, and take the reading again. A stale
  reading is not wrong — it is a reading of an elephant that has since moved.
- **A drop on a shaft another feeler holds is a grind.** Yield. Convert the
  reading to a bounded proposal against their commit, per C07.

### Claiming a shaft

The repository has no lock, and this proposal does not invent one — that would be
new machinery, and the audit is specifically about agents who invent machinery.
The claim is the ordinary one C07 already implies: **the designated editor of a
change set holds its shafts for that tick.** Everyone else reads, proposes, and
attacks. If you cannot tell whether a shaft is held, it is held.

---

## 6. What a feeler emits per tick

Plugs into `docs/agent-task-template.md` §2 (source and law receipt) and
`docs/agent-control.md` C10. Nothing new is invented here:

| Field | Metaphor | Required |
|---|---|---|
| Station | where the hand was | exact commit, file, graphic + panel |
| Reading | what is felt there | pointable, or marked `UNK` |
| Scope | how far the hand reaches | **never** beyond the station |
| Shaft | what this tick would turn | file(s) the drop touches |
| Base check | has the elephant moved | commit compared before drop |
| Marker | `[GAP]` `[CONFLICT]` `[INFERENCE]` `[PROPOSAL]` | C04 |
| Acceptance | mainspring only | `ABSENT` unless the human accepted |

A reading without a station is `INVALID` — not wrong, *not yet computable*. The
correct response is the repair sentence Water already supplies: pick one thing we
can point at.

---

## 7. What this model must never become

`docs/agent-control.md` C07 states it directly, and it is the reason this file
is dangerous:

> Do not resolve Core's concurrency gap by copying the team's editing arrangement
> into Lace.

This model describes stewards. **Lace's own concurrency remains `[GAP]`** —
manifest open question 5, single-writer suggested but unstated. The shaft rule
above is an editing convention for humans and agents working a repository. It is
not an append protocol, not a lock on the array, and not evidence about how
arrivals order themselves on the strand.

Also forbidden, all following from C05 and C06:

- A feeler, station, or reading becoming a WORD or POINTER entry.
- A "consensus" record. The elephant is not settled by vote; rule 7.
- Averaging two readings into one. Rule 3 — that destroys the shape.
- An agent accepting another agent's work into law. Mainspring only, C02.
- Treating a drop as knowledge of pointer emission — already forbidden by the
  existing clock: *"Escapement drop treated as 'we now know POINTER emission'"*.

---

## 8. Open

**[GAP]** How a shaft claim is published, given that this proposal adds no lock
and no new machinery. Currently it rests on the designated editor named in the
task record.

**[GAP]** What happens when two feelers disagree and both readings are
well-anchored. Rule 3 says record both as a `DELTA`; it does not say who
adjudicates, and C02 says no agent can. The honest answer is that it waits for
the mainspring, which does not scale — but inventing an adjudicator here would be
exactly the machinery the audit warns about.

**[CONFLICT]** None known between this file and `docs/philosophy-map.md`'s clock.
Vocabulary is deliberately shared. If the two ever disagree about what `drop`,
`grind`, or `locked` mean, `philosophy-map.md` is the older use and wins.
