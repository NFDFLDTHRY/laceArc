# Relationship evidence questions — pass 1

**Supersession notice, 2026-09-20:** The [human correction in live law](../law-why-these-documents.md#conceptual-reference-documents) classifies HCC-A, The Coffee Cup, and Where the Water Is Loud / Dual Proofing Systems as conceptual reference documents. The retained packet's “holder machinery” classification is superseded; it supplies no required runtime component or legal-append condition. The historical samples, questions, read-scope limits, and exclusion of those concepts as WORD/POINTER sections are preserved.

**Stage:** documentation / evidence questions. **Sampling and bounded text inspection:** performed. **Mapper response / independent adjudication:** NOT_RUN. This is not a global ASCII pass, recovery pass 8, or a reopening of quiet-door #5. It does not amend the manifest or accept pointer emission.

**Requested task:** The human asked to claim a door for load-bearing evidence questions, with two random points in repository history as a test. This task takes the `history` station for this question packet, not `maps` for diagram editing. The scheduled global-manifest tracking task remains read-only and is not changed here.

```text
PINNED HISTORICAL SOURCES            ONE REQUIRED OUTCOME
A: definition-route passage          explain the relationship,
B: retained-touch passage            with evidence for each link
             |                                  |
             +----------------+-----------------+
                              |
                              v
                  SMALLEST PERMITTED STEP
             ask for the actual composition route
             through WORD / star / definition / touch
                              |
                   missing premise? NAME IT
                   do not replace it with a guess
                              |
                              v
                COUNTEREXAMPLE / OBSERVATION
            does an occurrence-only explanation hide
               participation the source retains?
                              |
                              v
                  EVIDENCE + BOUNDED VERDICT
       source-supported / inference / conflict / not established
```

## One question

Can the global diagram explain how a definition route through ordinary word-stars participates in later word occurrences and retained touches, with a source for every link and an exact boundary between established structure and still-unspecified construction?

A diagram verdict or a list of component names does not answer this question. An existing, sufficiently explicit route elsewhere in the companion can answer it; a new drawing is not required merely to satisfy this packet.

## Sampling receipt

**Repository:** `NFDFLDTHRY/laceArc`. **Frozen pre-task main:** `4de5fc106b128cad009a16abe4dc2ea875c79112` (2026-09-19T15:25:35Z). **Editor:** `Astra-evidence`. Claim commit: `695f62da452e4de18f1c9621bb5dd12209bfd90e`.

The revision draw was fixed before inspecting the selected passages. Sampling unit is a repository snapshot, not a claim-changing commit and not a random sentence. The word/definition/touch passages are deliberately selected within those snapshots to match the human's question. Do not call the passages themselves randomly selected.

**Frame:** GitHub's commit listing reachable from the frozen main, excluding its first entry (the anchor itself). This does not sample unmerged branches, unreachable commits, another repository, or every original source quoted in the recovered history.

**Reproducible draw:** Python `random.Random` seeded with the literal string `laceArc/relationship-evidence/pass-1/4de5fc106b128cad009a16abe4dc2ea875c79112`; sample 20 distinct integers from `range(2,4097)`, in returned order. Interpret each as a 1-based page of the pinned commits endpoint with `per_page=1`. Retain the first two existing commits. Do not resample based on their contents.

Draw prefix: `2038, 488, 1249, 3815, 1438, 1979, 329`.

The [page-4097 boundary check](https://api.github.com/repos/NFDFLDTHRY/laceArc/commits?sha=4de5fc106b128cad009a16abe4dc2ea875c79112&per_page=1&page=4097) returned an empty list. Pages 2038 and 1249 also returned empty lists. After the page-1249 result, candidates 3815, 1438, and 1979 were excluded as beyond that known empty boundary, without claiming additional reads. Pages 488 and 329 returned the retained pair. This is a reproducible pseudorandom spot check, not a completeness proof or a measure of repository-wide correctness.

| Anchor | Sampled revision and date (UTC) | Passage used for the question |
|---|---|---|
| A | [`f3b554c2cff033d3033a5d05f15224bcbd612a36`](https://github.com/NFDFLDTHRY/laceArc/commit/f3b554c2cff033d3033a5d05f15224bcbd612a36), 2026-09-19T02:53:55Z; page 488 | [`docs/systems-manifest.md`, Piece 9, lines 166–180](https://github.com/NFDFLDTHRY/laceArc/blob/f3b554c2cff033d3033a5d05f15224bcbd612a36/docs/systems-manifest.md#L166-L180), with Pieces 7–8 as context |
| B | [`856e91d1b7faa0ec62ea2ff2bcc5b95f98acc3aa`](https://github.com/NFDFLDTHRY/laceArc/commit/856e91d1b7faa0ec62ea2ff2bcc5b95f98acc3aa), 2026-09-19T05:00:44Z; page 329 | [`docs/systems-manifest.md`, Piece 11, within lines 198–216](https://github.com/NFDFLDTHRY/laceArc/blob/856e91d1b7faa0ec62ea2ff2bcc5b95f98acc3aa/docs/systems-manifest.md#L198-L216), with Pieces 7–10 as context |

The selected commits concern a viewer pin and station routing, respectively. They locate snapshots; their commit messages do not establish the word/definition/touch relationship.

**Dependence discovered, not discarded:** Both snapshots return manifest blob `ca8b7d7bc4a93eea81510693424d450d66c6851a` and ASCII companion blob `c1f53093d7a2a4d83f3d9e8db2ea1f728ccce440`. These are two historical positions containing the same underlying documents, not independent corroboration or evidence of a semantic change between A and B. The pair is retained rather than replaced with a more convenient result.

## Pointable observations

**A — definition route.** Piece 9 says a definition is a route through other word-stars, that definition stars are ordinary word-stars, and that later documents reuse the same stars through new routes. Piece 8 couples document sequence to dictionary wiring rather than a separate layer. These are observations of the pinned manifest's text, not an independently verified emission algorithm.

**B — persistent participation.** Piece 11 says new wire threads existing structure, that the touch remains, and that it can participate in later formations. Piece 7's implementation-implications sentence includes WORD occurrences **plus POINTER chains that thread them** in the indexical star view. The same text exists at A. Neither snapshot specifies an automatic recursive definition-expansion operator.

**The local ASCII pressure point.** At both A and B, the Pass-5 `Star mechanism` panel says `view: star(V) = those passes` and `write: the WORD rows only`. An adjacent panel separately shows POINTER-to-POINTER participation. These observations support a question about whether the coupling is legible; they do not prove the whole companion lacks an answer elsewhere.

**Current comparison pin.** At pre-task main `4de5fc106b128cad009a16abe4dc2ea875c79112`, the manifest still has blob `ca8b7d7bc4a93eea81510693424d450d66c6851a`. The companion has changed to blob `2628df45e644f56b27e03c4af4460e89b47f905d`, records global passes 1–25, and retains the local Pass-5 wording in the inspected [lines 405–500](https://github.com/NFDFLDTHRY/laceArc/blob/4de5fc106b128cad009a16abe4dc2ea875c79112/docs/systems-manifest-ascii.md#L405-L500). This packet has not re-audited every later section. Refresh the comparison pin before proposing a correction.

## Questions to the mapper

The following Q numbers are local to this packet. For each answer, give a pinned path and passage, the claim it supports, any inference needed, the corresponding diagram location, and the first unsupported step, if any. A bare `[GAP]` or `DIAGRAM SOUND` is not an answer.

### Q1 — What connects the two historical passages?

Starting from A's definition route and ending at B's retained touch, exhibit the composition through the relevant parts of Pieces 7, 8, 9, 10, 11, and 15. Which relationships are directly stated, which follow only by composing stated premises, and which are not established? Shared vocabulary alone is insufficient. The absence of a warranted relationship is an admissible result.

### Q2 — Where do the definition words' own definitions participate?

A says definition stars are ordinary word-stars. Current law separately says a word is defined by words which are defined by words. What does that establish when additional definition text is fed into the same Lace? Where is this relationship visible in the diagram? Distinguish retained routes through reused stars from an invented automatic dictionary lookup, recursive expansion routine, or transitive-closure algorithm. Do not turn recurrence into a splice of the strand's ends.

### Q3 — Does the star explanation preserve participation, or only membership?

Piece 7 includes POINTER chains threading the WORD occurrences. Does the Pass-5 star panel, together with an explicitly pointable companion route, preserve that obligation? Test the explanation against a read-only view that lists the recorded WORD occurrences while hiding their recorded POINTER participation. Would the explanation wrongly declare both views equally complete? This is a view-omission counterexample, not a proposal to delete or rewrite Lace rows.

### Q4 — Precisely which part is still open?

Separate the relationship already described from the construction premises needed to append particular POINTER sections: timing, target selection, arity, reference-slot assignment, or adjacency semantics, as actually supported by the relevant sources. For each claimed open, identify the exact missing premise. Do not use the unresolved emission contract to erase a source-stated relationship. Conversely, do not use that relationship to announce that emission has been accepted. The current draft still explicitly says unaccepted.

### Q5 — Can the current diagram answer without a new mechanism?

Point to the existing diagram locations that compose the answer. If they are insufficient, identify the smallest missing coupling or ambiguous caption and what evidence a correction would preserve. Do not add a new dictionary engine, Star table, stored definition, holder-to-Core write, or new entry type. This packet asks for evidence and a bounded proposed correction; it does not authorize this editor to change the global diagram.

These are relationships among source claims about Lace. The sampled Git commits are not themselves WORD/POINTER entries in an implemented Lace, and this exercise does not establish a runtime relationship between those commits.

## Propose / attack / resolve receipt

**Propose:** The source already describes definition-route reuse and retained touch participation; a representation should be able to explain their composition.

**Attack:** Two sampled snapshots share the same document blobs. The adjacent ASCII participation panel or a later section may already answer the coupling question. A suggestive structural account does not determine all emitted rows. No fresh visual examination of Graphics A–D was performed here.

**Resolve:** Bounded text inspection establishes that the upstream relationship language is present at both historical pins and at the current comparison pin. It supports issuing these questions. Whether the entire current companion adequately exhibits the coupling is **not adjudicated here**. No global gap, human-acceptance gate, or proof obligation is declared closed. These three review roles were performed by the same agent, not independent reviewers.

## Scope, grounding, and operational receipt

**Read basis:** AGENTS; coordination README and the inspected coord.sh routing/claim logic; history index; kit entrypoint, task template and relevant control sections; relevant live-law passages; manifest Pieces 7–15 at A and Pieces 7–12 at B; the historical Pass-5 ASCII panels; current companion header/spine and Pass-5 panels; current pointer-emission draft. Partial-file reads do not establish full-document inspection.

**Graphics actually viewed:** A NOT_VIEWED; B NOT_VIEWED; C NOT_VIEWED; D NOT_VIEWED. Panel identifiers in this packet come from manifest citations. **Physical evidence:** NOT_PERFORMED. **Evidence state:** OBSERVED for the returned text, metadata, and duplicate-blob comparisons only; independent structural verification NOT_RUN. Graphics-dependent conclusions remain unresolved pending direct inspection.

**Authority:** The four canonical graphics remain source of record. The manifest is derived and can be wrong. History does not amend current law. HCC-A / Coffee Cup / Water are holder machinery, not WORD/POINTER sections. Definitions, touches, views, and repository-navigation material do not become interchangeable because they share words.

**Permissions and changed scope:** This human-requested evidence task permits its question document, a history-index link, and this agent's claim/release metadata. No Core, global companion, upstream manifest, pointer draft, canonical graphic, other agent's plan, or automation is edited.

**Coordination limitation:** Direct Git clone failed with `Could not resolve host: github.com`. Connector reads succeeded. The station claim used the connector's SHA-checked update of the observed FREE history.station; subsequent read confirmed Astra-evidence held it. Routing to history follows the existing `docs/history/**` rule. `git pull`, `coord.sh claim/check/gate`, and repository shell checks were **NOT_RUN**; connector checks must not be reported as those commands passing. No hook-enforcement or runtime-test claim is made.

**Stop condition:** Publish this packet and its index link, verify the committed files, then release the station. Sampling/inspection is complete within the stated scope; answers from the mapper and independent adjudication remain NOT_RUN. Any subsequent diagram correction requires a fresh read, its own authorized scope, and ownership of the applicable station.
