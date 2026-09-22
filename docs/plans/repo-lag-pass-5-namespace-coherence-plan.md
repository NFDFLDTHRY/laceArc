# Repo lag cleanup — Pass 5 namespace + coherence reconciliation plan

**Status:** PLAN — human approved in conversation by “Proceed with pass 5.”  
**Station:** maps.  
**Execution base:** `03a2d3c27eb204e1ccbcc2407b5d55b7c33b1e2e` (maps claim at post-Pass-4 baseline).  
**No new theory. No Core change. No target selection. No acceptance. No implementation.**

## Question

Can the repository's identifier registry and append-only coherence record describe the current Pass-39-era tree without inventing identifiers, losing historical counts, or rewriting old audit evidence?

## Scope

Primary maps-owned surfaces:

- `docs/namespace-register.md`
- `docs/coherence-audit-log.md`
- this plan, findings and `docs/plans/README.md`

Foreign-station remainder:
- `docs/coord/stations/README.md` remains coord-owned handoff only.

## Hard measurement gate

Before changing `docs/namespace-register.md`, reproduce its current claimed measurement using its own stated rule:

- 49 registered family rows;
- 371 distinct literal tokens;
- 125 tokens owned by two or more rows;
- collision ownership distribution: 80 with 2 owners, 25 with 3, 8 with 4, 7 with 5, 5 with 6;
- 578 row-token memberships.

If the old arithmetic does not reproduce, stop namespace mutation and record the measuring-instrument failure before adding any family.

## Existing counting law

Preserve the current rule:

- only `Range` cells contribute namespace tokens;
- inclusive numeric ranges expand only when endpoints share a complete prefix;
- zero-padding, prefix, case and prime marks are literal;
- deduplicate within each family row;
- count ownership across family rows;
- projection-title stamps retain their explicit extraction exception;
- incidental prose, equation variables and one-off abbreviations do not become families by regex alone.

## Candidate post-2026-09-20 families to verify

Candidates, not pre-approved rows:

- math sections: `S0`–`S12`;
- read/observability identifiers: `RD-1`, `OBS-1`, `EP-1`, `SEE-L`, `SEE-G`, `SEE-Q`, `SEE-H`, `SEE-CF`, `SEE-U`;
- realization/evidence: `T0`–`T6`, `HOST-1`, `ACCEL-1`, `ML-1`, `COPY-1`, `GAP-HOST`, `GAP-CARRIER`, `GAP-APP`;
- graphics-fidelity theorems: `AUTH-1`, `PATH-1`;
- retention interface: `RM-A`, `RM-B`, `RM-C`;
- manifest mechanism identifiers: `L-M01`–`L-M21`, `L-GAP-RM`;
- manifest contracts: `SM-C01`–`SM-C21`, `SM-GAP-RM`;
- non-Core integrations: `SM-X-BEH`, `SM-X-RES`, `SM-X-PLAT`, `SM-X-L3`;
- implementation-envelope families such as `RQ1`–`RQ10`, carrier `K1`–`K7`, `CWS` / `PWS` only if execution confirms they satisfy the register's family threshold.

Execution must also sweep later defining documents for additional stable families not listed here.

## Inclusion test

Register a candidate only when its defining source establishes it as a stable family/member/theorem/gate/section/evidence identifier and cross-shelf citation or collision routing materially benefits from registration.

Reject:
- equation variables;
- ordinary subsection decimals;
- transient loop variables;
- incidental prose abbreviations;
- one-off notation;
- regex-only hits with no source-defined identifier role.

## Existing family repair

Re-read all existing 49 family rows against their defining sources. In particular, the current `Partial model section | S0–S8` row must be reconciled against `math-execution-model.md` now containing S0–S12.

Do not rename baked/runtime identifiers merely to reduce collisions.

## Recompute

After the accepted-family table is built:

1. recompute family-row count;
2. distinct literal-token count;
3. row-token memberships;
4. ownership per token;
5. collision-token count and ownership distribution;
6. regenerate collision-routing table from the new census.

New headline values are execution outputs, not plan assumptions.

## History

Preserve prior namespace measurements as dated reports. The old 49/371/125/578 result becomes historical once a new verified current measurement lands; it is not erased.

## Coherence log

`docs/coherence-audit-log.md` is append-only.

Do not rewrite A1–A14 or older ticks.

Append one current-tip coherence tick using the modern standing process in `docs/prompts/coherence-audit-prompt.md`. The tick must verify the repaired entry chain:

`README -> AGENTS -> context-pass -> live diagram / kit controls / clock target court -> current law / Pass 39`

and record:

- S9–S12 non-Core;
- HCC/Cup/Water mathematical devices, not implementations;
- Water current UNK/INVALID law;
- RM-A OPEN / MISSING-A;
- G1 OPEN;
- R3 OPEN;
- GAP-HOST OPEN;
- exact H×C×W runtime coupling OPEN;
- TARGET UNDECIDED;
- pointer acceptance ABSENT;
- no `src/`.

The old broad audit-log header wording remains historical shorthand unless repository law explicitly authorizes editing append-only metadata; default is preserve and qualify in the new tick.

Do not fabricate A15/A16 continuation numbering merely to extend the historical A1–A14 campaign.

## Falsifiers

F1 new namespace headline guessed instead of recomputed.  
F2 new families added from regex alone.  
F3 old namespace measurement erased.  
F4 counting rule changed for convenience.  
F5 similar prefixes treated as literal collisions.  
F6 baked identifiers renamed to reduce collisions.  
F7 current identifiers omitted because collisions are ugly.  
F8 S9–S12 treated as Core by registration.  
F9 SM-X families treated as adopted Core contracts.  
F10 RM-A/B/C registration treated as closure.  
F11 T0–T6 confused with target facts/tickets.  
F12 carrier K1–K7 confused with existing K families instead of literal collision accounting.  
F13 one-off notation promoted to family.  
F14 old coherence ticks rewritten.  
F15 A1–A14 artificially continued.  
F16 old emission shorthand reopens current constructor questions.  
F17 new audit tick claims acceptance.  
F18 new audit tick closes RM-A/G1/R3/GAP-HOST.  
F19 coord description repaired from maps.  
F20 hooks/enforcement added.  
F21 `src/` / implementation opened.

## Completion gates

G1 plan persisted before namespace mutation.  
G2 maps held from current main.  
G3 existing 49 rows re-read.  
G4 old 49/371/125/578 measurement reproduced exactly before mutation.  
G5 post-register defining-document sweep complete.  
G6 every new family has pointable defining source.  
G7 every rejected candidate has reason.  
G8 S0–S12 represented correctly.  
G9 L-M / SM-C / SM-X dispositioned.  
G10 RM-A/B/C dispositioned.  
G11 RD/OBS/EP/SEE dispositioned.  
G12 S11 evidence/source-gap families dispositioned.  
G13 Pass-6 envelope/carrier families dispositioned.  
G14 family-row count recomputed.  
G15 distinct-token count recomputed.  
G16 row-token memberships recomputed.  
G17 collision ownership distribution recomputed.  
G18 collision table regenerated.  
G19 historical namespace statistics preserved.  
G20 old audit ticks byte-preserved.  
G21 one current-tip coherence tick appended.  
G22 repaired entrance chain verified.  
G23 current Water/target/Pass-39 state recorded correctly.  
G24 RM-A/G1/R3/GAP-HOST remain open.  
G25 pointer acceptance absent.  
G26 coord README remains handoff-only.  
G27 findings record exact namespace deltas.  
G28 plan/index updated.  
G29 maps released.

## Execution order

1. claim maps;
2. persist this plan;
3. parse existing Families table;
4. reproduce old arithmetic exactly;
5. stop on reproduction failure;
6. sweep current defining documents;
7. build candidate ledger with accept/reject reasons;
8. build revised Families table;
9. recompute namespace statistics;
10. regenerate collision section;
11. preserve historical statistics;
12. audit the current entry chain;
13. append one current coherence tick;
14. verify earlier audit content preserved;
15. rerun namespace/count checks;
16. write findings;
17. mark plan executed;
18. update plans index;
19. release maps.

## Stop

Do not repair `docs/coord/stations/README.md` in this pass.
