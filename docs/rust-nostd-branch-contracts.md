# CLIPBOARD — laceArc no_std branch contracts

**Status: PLAN / PROPOSAL. Seven prose cards. No implementation acceptance.**

Repository destination: `docs/rust-nostd-branch-contracts.md`.
Prior product: [rust-nostd-crate-map.md](rust-nostd-crate-map.md).
Source baseline: `NFDFLDTHRY/laceArc` main at
[`f995e4429ffc202be06dc6230423f3288edbb620`](https://github.com/NFDFLDTHRY/laceArc/tree/f995e4429ffc202be06dc6230423f3288edbb620)
(18 September 2026).

```text
+--------------------------------------------------------------------+
| CANONICAL SOURCE                     ONE REQUIRED OUTCOME          |
| Graphics A-D + manifest + law         seven prose branch contracts  |
+--------------------+------------------------------+----------------+
                     |                              |
                     +---------------+--------------+
                                     |
                                     v
                      KEEP tree / KEEP serial births
                                     |
                                     v
                    state ownership + excluded states
                                     |
                        emission remains [GAP]
                                     |
                                     v
                    challenge against shoe and source
                                     |
                                     v
                       this document, then STOP
+--------------------------------------------------------------------+
| Map is not permission. Type is not emission. One branch, one task.  |
| No source, Cargo manifests, branch directories, commits, or pushes. |
+--------------------------------------------------------------------+
```

## PAGE A — Relation to the prior map

Keep the seven doors and their order unchanged:

| Birth | Door | One-task sentence | Hands citation |
|---|---|---|---|
| 1 | `strand/` | Maintain the append-only 1D log of entries. | Pieces 1 and 6; A1, B1, C1, D1 |
| 2 | `word/` | Describe the WORD section for one word occurrence. | Piece 4; D1–D2, D5 |
| 3 | `pointer/` | Describe the POINTER section layout and its type constraints. | Piece 5; D1–D3, D6 |
| 4 | `route/` | Continue by appending a section onto the strand. | Pieces 2 and 8; B5, B12, C12, D footer |
| 5 | `view_star/` | Read stars from the retained word occurrences and recorded participation. | Pieces 7, 9 and 15; A12, B3–B4, B9, D4–D5 |
| 6 | `view_proj/` | Present the strand as a read-only 1D, 2D or 3D shadow. | Pieces 10, 12 and 13; B6, B11, C2–C8, C10–C11, D4 |
| 7 | `core/` | Orchestrate only the proven first-party doors. | Piece 2; B12, C12, D footer; Implementation Law |

The sentences refine the existing tasks without changing their ownership.
The seven doors are proof and implementation boundaries over **one Lace**.
They are not seven independently stored systems. The manifest's irreducible
Core still holds; Piece 1 and Piece 6 are the same physical object.

No `arrival/`, `array/`, `emit_pointer/`, `utils/`, or other convenience door
is added. Arrival stays a surface with no store. `alloc/` is not an eighth
planned birth. No door is renamed. A future rename must pass the
shoe-readable intuition test and update both this file and the prior map
before it can be proposed for use.

### Source and law receipt

| Field | Observed scope |
|---|---|
| Assigned task | Deepen the crate map into seven prose contracts; one document only. |
| Repository state | Current main read at the full commit above; target contracts file absent at that revision. |
| Local Git state | No existing Git checkout in the task workspace. Shell Git access failed; current main and source blobs were read through the GitHub connection. No successful local fetch/fast-forward is claimed. |
| Source identity | The required text-file blob identities match the inspected main tree. |
| Graphics | A, B, C and D visually inspected from their canonical repository bytes. |
| Physical evidence | `NOT_PERFORMED`: no claim that the agent held or tested a physical cord. Shoe statements below are source-grounded review conditions. |
| Allowed product | This Markdown document, for the repository destination above. |
| Implementation status | `BLOCKED`: the current pointer-emission document explicitly says DRAFT, not accepted, emission `[GAP]`. |
| Human acceptance | `ABSENT` for the current draft according to its own status; this task grants prose drafting only. |
| Proof status | `UNESTABLISHED` for every future branch. Contract prose is not an implemented type boundary or a proof. |
| Review roles | One agent performs propose, attack and resolve; no independent review is claimed. |

Read sources at this baseline:

- [Graphics index](graphics/README.md) and the four PNGs: [A](graphics/from-words-to-worlds.png), [B](graphics/mechanisms-in-3d.png), [C](graphics/n-dimensional-relationships.png), [D](graphics/data-structure-1d-array.png).
- [Systems manifest](systems-manifest.md), Pieces 1–15, interface-coherence check, composition, seams and open questions.
- [AGENTS.md](../AGENTS.md), [staking](staking-the-workspace.md), [Implementation Law](law-why-these-documents.md), and [CONTRIBUTING.md](../CONTRIBUTING.md).
- [Reason model](reason-model-map.md), RM1–RM10, X2/X4, rejected imports and open questions.
- [Crate map](rust-nostd-crate-map.md), Pages A–X; [pointer-emission draft](pointer-emission.md), especially its status and sections 1–5.
- [Agent controls](agent-control.md) and [task/proof/handoff forms](agent-task-template.md).

The adjacent PDFs and philosophical texts are not additional authorities
for a WORD, POINTER or append rule. This pass uses their already-recorded
anti-import boundaries; it does not reopen the five-stake mapping.

### Source differences that remain visible

1. **Missing requested outline.** `docs/pointer-emission-prompt.md` is absent
   from the inspected main tree. Page H points to that required destination
   without pretending the file exists or authoring it in this task.
2. **Target-kind conflict.** The current `pointer-emission.md` section 4 asks
   whether POINTER-to-POINTER targeting is general or merely illustrative.
   Graphic D3 says later entries can reference words or other pointers;
   D6 and the key properties explicitly permit pointers to reference
   pointers. Manifest Piece 5 and AGENTS.md also state this. The pointer
   card preserves that graphic-supported permission. It does not turn
   permission into a target-selection, timing or arity rule. The draft's
   contrary uncertainty remains a `[CONFLICT]` to reconcile in its own task.
3. **View-store conflict.** Manifest Piece 13's implementation paragraph
   permits graph databases, embedding spaces and definition tables as
   disposable views. The staking law forbids those stores; Graphic D4
   says the 3D view is not stored in the main data structure. These
   contracts authorize only read-only views, with no such tables or
   databases. Calling a forbidden store a cache does not admit it.
4. **Gate wording differs.** The law document's introduction mentions file
   existence, while its Implementation Law block requires human acceptance.
   AGENTS.md and CONTRIBUTING.md also require acceptance. The full gate
   applies. Existence, a commit, a plan, and a checked box do not open it.

## PAGE B — How to read the seven cards

The type names below are **prose proposals**, not Rust declarations or
approved binary layouts. Public-surface lists contain names only. No
signature, constructor or helper is specified that emits a POINTER.

An operation is unrepresentable only if the future admitted type surface
cannot express it. A comment saying "do not mutate" beside writable access
does not meet that condition. Read-only access must not conceal a mutable
alias, callback, global write path, destructor effect or allocator side door.
This is a proof obligation, not a claim that documentation enforces it.

All cards share these boundaries:

- Only Graphic D's WORD and POINTER are admitted section kinds. An Entry
  wrapper, index handle or view is not a third row kind.
- No hidden I/O, allocation, external dependency or second authoritative
  representation. Proof notes are steward documents, not Lace rows.
- Each future proof states its input domain, allowed effects, invariant,
  postconditions, resource assumptions, failure scope and composition
  premises. Compiler/target trust and any unsafe operation must be explicit.
- The concrete finite-storage provision, index width, restart/durability,
  interruption behavior and concurrent arrival ordering are not selected
  here. If a branch's claimed theorem needs one, the unresolved premise
  blocks that claim. `no_std` alone proves none of them.
- Exhaustion cannot justify wraparound, deletion, reuse, truncation,
  silent input loss or pretending an append succeeded. Exact failure
  signaling and input custody remain to be contracted; no queue is added.

The source's unlimited continuation is not a claim of infinite physical
memory. Every future finite implementation must state its supported domain
and refuse to claim behavior beyond it without changing old Lace.

## PAGE C — strand/ (first birth)

### branch: strand/

**birth order:** #1, only after the global acceptance gate.

**one-task sentence:** Maintain the append-only 1D log of entries.

**Hands cite:** Pieces 1 and 6; A1, B1, C1, D1–D2 and D's key properties;
reason-model RM1. Piece 1 is Piece 6, not a separate `array/` store.

#### Owns (types / invariants — prose, not code)

- **Section** names one logical unit of the cord: WORD content or POINTER
  content. It is not a sentence, document, batch, star or second log.
- **Entry** names that Section at its permanent Index in the one strand.
  Entry and Section are two descriptions of the same retained unit, not
  two copies. Index is an address in this history, not an intern identifier.
- **Index** denotes an already-retained position. Public users do not mint
  retained positions from arbitrary integers or repurpose an old address.
  A display number alone is not evidence that a position exists.
- **Frontier** denotes the next extension boundary, distinct from an
  existing Index. Only append authority may extend that boundary. No
  old position can be reopened through a Frontier value.
- **Read view** exposes retained entries without mutable access to them.
  **Append authority** can add a new entry only at the frontier; it exposes
  no mutable reference to the retained prefix or its backing storage.
- Indices are forever: extending the strand preserves every prior
  index-to-section association. No reuse, renumbering, vacuum, compaction
  that changes history, or numeric wraparound into an earlier position.
- The two ends are views onto one cord: the retained-history end and the
  advancing frontier end. Reading from either end does not reverse or
  rewrite recorded order. This supplies no prepend operation, second
  write frontier, second store, circular buffer or joined-end splice.
- At this first birth the storage contract treats section content as
  immutable; it must not depend on implementations in not-yet-born
  `word/` or `pointer/`. Later layout composition must preserve this
  boundary and restrict admitted Lace content to the two source kinds.

#### Must not own

- Word identity, word segmentation, POINTER timing/arity/target selection,
  star construction, sentence containers, projection geometry, or meaning.
- A spare strand, mutable continuation slot, replay mirror or storage
  compactor. No placeholder row may later be filled with a reference.

#### Public surface (names only — no signatures that emit)

- allowed ops: `append_section`, `entry_at`, `indices`, `start_view`, `frontier_view`.
- absent ops (unrepresentable): `entry_mut`, `overwrite`, `delete`, `splice`,
  `prepend`, `truncate`, `reset`, `vacuum`, `reuse_index`, `emit_pointer`.

`append_section` names storage extension under the accepted contract. It
neither chooses a section kind nor makes arbitrary bytes an authorized
POINTER. It is no permission to append before the gate.

#### May call (first-party only)

- None. No dependency on later births, including their type layouts.

#### Forbidden states (must be unrepresentable)

- A retained Index naming different content after extension; two entries
  sharing a reused address; a missing middle entry; a mutable alias to an
  old entry; a Frontier that writes inside the prefix; two backing stores
  standing for the two ends; a row reserved for later mutation.

#### Proof shape (what “proven” means before next birth)

- State the input domain as one valid retained strand plus an admissible
  immutable section and sufficient declared resources. Show a successful
  extension adds exactly that section at one fresh frontier position and
  leaves every earlier index/content pair unchanged.
- Establish the empty case (A1), then preservation under each permitted
  extension. Include retained payload stability, not merely stable index
  numbers. Prove indices cannot wrap or be forged into write authority.
- Show both end views read the same retained entries and cannot change
  them. Show every public access path lacks a prefix-write operation.
- State failure and resource premises; on an unsuccessful operation no
  rewritten prefix or false success may be exposed. Interruption and
  durable-storage claims need their own stated evidence, not assumption.
- Show the abstraction from actual storage to Entry/Section preserves
  the one strand. A raw-byte escape hatch or a future cyclic dependency
  does not discharge this obligation. Proof status: `UNESTABLISHED`.

#### no_std / alloc

- `#![no_std]` required: yes.
- alloc: absent. No hidden heap, `std` fallback, or implicit allocation
  through tests/helpers. A future proven first-party `alloc/` branch is
  outside this birth sequence and would require an explicit revised plan.

#### Emission contact

- **none.** The storage door accepts only an independently authorized
  section. When a POINTER is written stays `[GAP]`; storage retention does
  not establish an emission rule.

## PAGE D — word/ and pointer/ (type discipline)

### branch: word/

**birth order:** #2, only after `strand/` is proven for its one task.

**one-task sentence:** Describe the WORD section for one word occurrence.

**Hands cite:** Piece 4; D1–D2, D5; A5, A12; reason-model RM2, X2 and X4.

#### Owns (types / invariants — prose, not code)

- **Word section** describes the retained WORD value, the variable shown
  by Graphic D. Its value is immutable. It carries no stored definition,
  sense, star handle, vocabulary identifier or repetition counter.
- Occurrence identity is the containing Entry's permanent position. Two
  occurrences with equal values remain two entries at distinct indices;
  `word/` does not allocate a second identity namespace.
- **Value equality** reads the WORD value, the only equality key shown
  by Piece 4. D1's PIE at 0000 and PIE at 0003 supply the repeated-value
  example. Equality of value does not make their entries interchangeable.
- Case, stemming, homographs, Unicode normalization, punctuation and
  word boundaries remain `[GAP]` where the graphics give no rule. This
  card does not choose lowercase, bytewise identity, a tokenizer or a
  canonical spelling. The value representation must preserve what arrives.

#### Must not own

- Strand storage, index assignment, tokenization, intern tables, star
  membership storage, pointer participation or document parsing.

#### Public surface (names only — no signatures that emit)

- allowed ops: `value`, `value_equal`.
- absent ops (unrepresentable): `intern`, `normalize`, `stem`, `mask`,
  `replace_value`, `increment_count`, `set_definition`, `emit_pointer`.

`value_equal` names comparison at the supplied WORD-value boundary. Its
unsettled identity premises must be resolved before it can classify
unresolved pairs such as PIE/pie; it is not a default normalization rule.

#### May call (first-party only)

- None. It describes content, not storage, and does not append.

#### Forbidden states (must be unrepresentable)

- One row plus a count replacing two occurrences; a vocabulary ID
  substituted for an occurrence; a mutable value; equal spellings forcing
  equal indices; a canonicalizer silently fusing or splitting stars.

#### Proof shape (what “proven” means before next birth)

- Prove value preservation over the stated input/representation domain.
  Show comparison cannot alter a value, allocate an identity table or
  mutate the strand. Separately state the accepted equality premises.
- Use D1's 0000/0003 as the counterexample to intern collapse: equal
  preserved value, distinct occurrence addresses, both retained. This
  example illustrates the invariant; it is not the proof itself.
- Discharge representation/resource and equality obligations without
  inventing segmentation or case policy. Proof status: `UNESTABLISHED`.

#### no_std / alloc

- `#![no_std]` required: yes.
- alloc: absent; no string interner or allocating normalization library.

#### Emission contact

- **none.** Value equality never triggers POINTER creation. Exact-match
  ties and repeated words do not close the emission `[GAP]`.

### branch: pointer/

**birth order:** #3, only after `word/` is proven for its one task.

**one-task sentence:** Describe the POINTER section layout and its type constraints.

**Hands cite:** Piece 5; D1–D3, D6 and key properties; reason-model RM4.

#### Owns (types / invariants — prose, not code)

- **Pointer section** names a section of the same strand which refers
  to earlier existing entries on that strand. It is retained at its own
  entry index and can itself be referenced later.
- **Earlier reference** is a constraint, not a raw integer blessed as a
  reference. For a POINTER entry at j, every target must already exist
  on that line and have index less than j. Self, forward, missing and
  external targets cannot inhabit the admitted reference state.
- WORD and POINTER are permitted target kinds (D3/D6). This is permission
  about kind, not a choice of targets or an obligation to emit anything.
- Graphic D2 shows `ref_A` and `ref_B` as an example. No fixed pair,
  unary layout, optional slot, variable-length target collection or
  default empty reference list is selected. Arity remains `[GAP]`.
- **Slot assignment is a separate open question from arity.** If a two-slot
  layout is ever selected, nothing in the Hands says which reference occupies
  which slot. Across D1's six pointers the order is not chronological — two
  ascend, four descend — and in all six `ref_A` is the subject of the panel's
  own gloss, which the array cannot compute. Selecting a slot convention
  ("A is the new arrival") would contradict rows 0002 and 0006. `[GAP]`.
- The concrete encoding and mechanism for carrying evidence of
  existing/same-line/earlier status remain unstated. They must be proven
  at later composition; this card invents no admission procedure or
  public builder from unchecked indices.

#### Must not own

- Append authority, an emission scheduler, target discovery, star matching,
  arrival decisions, a POINTER factory, a reference side table or a rule
  for turning adjacency/touch/grab into a new section.

#### Public surface (names only — no signatures that emit)

- allowed ops: `references` (read an already-admitted POINTER's references).
- absent ops (unrepresentable): `emit_pointer`, `append_pointer`,
  `participate`, `touch`, `grab`, `choose_targets`, `from_unchecked_indices`,
  `fill_reference_later`, `retarget`.

#### May call (first-party only)

- None. This preserves the prior map's layout-only leaf. The same-line
  law is a composition requirement; it does not secretly add a runtime
  dependency on `strand/` or move an append decision into `pointer/`.

#### Forbidden states (must be unrepresentable)

- Self/forward/dangling/external targets admitted as valid; an existing
  POINTER retargeted in place; an unfinished slot patched later; an
  external edge object standing for the POINTER; arity fixed by example;
  a "read" that creates a row or chooses when one should be created;
  a multi-slot layout whose slots carry no stated filling rule, so that a
  semantically reversed POINTER is type-valid.

#### Proof shape (what “proven” means before next birth)

- Once the necessary independent contract is accepted, show that every
  inhabited admitted reference satisfies existing, same-line and earlier
  constraints, and that no public escape hatch forges that status.
- Show both graphic-supported target kinds remain expressible. An
  opaque type with no lawful inhabitants is not proof of a working task.
- Show retained references cannot change and layout inspection cannot
  append. Identify exact upstream evidence needed to connect this
  layout to strand indices without changing the dependency map.
- Layout sufficiency cannot be proved by guessing arity or treating a
  candidate index as an emitted row. All needed layout/admission premises
  remain blockers until settled. Proof status: `UNESTABLISHED`.

#### no_std / alloc

- `#![no_std]` required: yes.
- alloc: absent. Do not solve open arity by selecting a heap collection.

#### Emission contact

- **type-only.** Backward reference is a type law. When appended is
  `[GAP]`. No future `pointer/` README may answer timing, target selection
  or arity on the strength of this card. No emit signature or stub.

## PAGE E — route/, views and core/

### branch: route/

**birth order:** #4, only after `pointer/` is proven for its one task.

**one-task sentence:** Continue by appending a section onto the strand.

**Hands cite:** Pieces 2 and 8; B5, B12, C12, D footer; reason-model RM3/RM7.

#### Owns (types / invariants — prose, not code)

- **Continue** names the one forward extension step through the proven
  strand door. It keeps the retained prefix and received occurrence order.
  It does not own a second representation of the route; the route is the log.
- Its admitted input must already satisfy the applicable accepted WORD
  or POINTER contract. Permission to append a section does not confer
  permission to decide that an arriving word requires a POINTER.
- Append authority stays distinct from the read-only handles given to
  views. Section layout does not carry that authority.

#### Must not own

- A hidden emit helper, target/arity policy, intern table, parser,
  scheduler, route graph, document batch object or continuation slot.

#### Public surface (names only — no signatures that emit)

- allowed ops: `Continue`.
- absent ops (unrepresentable): `emit_pointer`, `participate`, `grab`,
  `connect_adjacent`, `build_graph`, `sort_arrivals`, `close_document`,
  `repair_history`.

#### May call (first-party only)

- `strand/`: the proven append door.
- `word/`: WORD layout/value surface only.
- `pointer/`: POINTER layout/read surface only; no emission callee exists.

#### Forbidden states (must be unrepresentable)

- Continue rewriting a prior index, reordering supplied arrivals, merging
  equal occurrences, appending a guessed POINTER, bypassing reference
  admissibility, or updating a route table instead of the strand.

#### Proof shape (what “proven” means before next birth)

- Given an independently admitted section, prove Continue refines exactly
  one section extension through `strand/`, with no additional stored
  effects, hidden append, lost occurrence or reordered input.
- Compose the three earlier branch contracts at their exact proved
  revisions. Keep their resource and failure preconditions visible.
- This conditional storage step does not prove a complete arrival-to-Lace
  mechanism. Its missing emission decision cannot be smuggled into an
  input constructor or caller. Proof status: `UNESTABLISHED`.

#### no_std / alloc

- `#![no_std]` required: yes.
- alloc: absent; no internal work queue or accumulating route buffer.

#### Emission contact

- **`[GAP]` at section admission.** Continue is not a decision about
  which section to append or when a POINTER should exist. This plan
  assigns that missing rule to no helper or branch.

### branch: view_star/

**birth order:** #5, only after `route/` is proven for its one task.

**one-task sentence:** Read stars from the retained word occurrences and recorded participation.

**Hands cite:** Pieces 7, 9 and 15; A5, A8, A12; B3–B4, B9; D4–D5;
reason-model RM2/RM8/RM10.

#### Owns (types / invariants — prose, not code)

- **Star view** is a read-only inspection of retained passages. It is
  not a Star record, node, stored identity handle or membership table.
- Equal WORD values may be read together under the stated word-identity
  premises while every occurrence index and pass remains distinct.
  Reading recorded participation does not infer unrecorded pointers.
- Dictionary wiring and star-internal traffic remain ways to inspect
  the same strand. No definition payload is attached to a word.
- The input carries only read capability; no append owner can be
  recovered from it. No persistent cache substitutes for the strand.

#### Must not own

- Star storage, a word-to-star index, sense classification, a lexicon,
  write access, case/stem policy, or a query/traversal algorithm not
  supplied by an accepted source contract.

#### Public surface (names only — no signatures that emit)

- allowed ops: `star_view`, `occurrences`, `recorded_participation`.
- absent ops (unrepresentable): `create_star`, `upsert_star`, `merge_passes`,
  `split_sense`, `set_definition`, `append`, `emit_pointer`.

#### May call (first-party only)

- `strand/`, read-only. No `route/` call and no new dependency on `word/`.
  The read surface exposes retained WORD values; this branch cannot
  invent a second equality rule or duplicate a normalization procedure.

#### Forbidden states (must be unrepresentable)

- A Star table, a read handle with write authority, equal-value passages
  collapsed into one occurrence, a gloss replacing a route, or newly
  inferred participation presented as a recorded reference.

#### Proof shape (what “proven” means before next birth)

- Show reading leaves every retained entry unchanged and every reported
  occurrence/reference is grounded in that same strand.
- Show all eligible retained occurrences in the declared view domain
  remain distinct. Establish soundness and coverage, not merely a pretty
  result. Discarding the view loses no authoritative Lace fact.
- State unresolved identity and read/traversal premises. No BFS closure,
  invented chain expansion or cached graph discharges them. Proof status:
  `UNESTABLISHED`.

#### no_std / alloc

- `#![no_std]` required: yes.
- alloc: absent; no stored Star table or hidden collecting cache.

#### Emission contact

- **none.** A read of recorded participation neither selects nor writes
  new participation. Repetition does not become an emit trigger.

### branch: view_proj/

**birth order:** #6, only after `view_star/` is proven for its one task.

**one-task sentence:** Present the strand as a read-only 1D, 2D or 3D shadow.

**Hands cite:** Pieces 10, 12 and 13; B6, B11; C2–C8, C10–C11; D4;
reason-model RM5/RM9/RM10.

#### Owns (types / invariants — prose, not code)

- **Projection view** selects how the one recorded strand is seen. 1D
  exposes sequence; 2D flattens it; 3D visualizes formation. None is a
  second store or an editable replacement for Graphic D.
- Source indices remain distinguishable from visual positions and
  labels. No coordinate, displayed edge or camera state is an append
  instruction. Showing a crossing does not establish a POINTER row.
- Route-family labels and dimensions are view conventions only. Document
  feed is observed in retained order; a DOCUMENT entry is not invented.
- Only read capability reaches this branch. Projection loss must not
  become a claim that the underlying passages were merged or absent.

#### Must not own

- Graph/embedding/coordinate databases, per-dimension storage, document
  containers, a drawing-to-strand write adapter, or shadow-clock machinery.

#### Public surface (names only — no signatures that emit)

- allowed ops: `view_1d`, `view_2d`, `view_3d`.
- absent ops (unrepresentable): `write_back`, `edit_entry`, `add_edge`,
  `merge_star`, `sync_projection_to_strand`, `append`, `emit_pointer`.

#### May call (first-party only)

- `strand/`, read-only.
- `view_star/`, read-only. No call to `route/` or any append door.

#### Forbidden states (must be unrepresentable)

- A projection holding append authority; a pixel/edge editing an Entry;
  a 3D mesh becoming retained Lace; a projection claiming recovery of
  unrecorded topology; a dimension turning into a row or separate store.

#### Proof shape (what “proven” means before next birth)

- Prove every view operation is non-writing across all exposed paths.
  Trace displayed facts to recorded indices or explicitly identified
  view conventions; distinguish geometry choices from source facts.
- Show changing/discarding the projection changes no authoritative entry
  and that the retained source still distinguishes all original passes.
  A lossy picture is not a round-trip proof or proof of topology.
- State projection-domain, layout/resource and dependency premises;
  do not claim those are fixed by the drawings. Proof status: `UNESTABLISHED`.

#### no_std / alloc

- `#![no_std]` required: yes.
- alloc: absent. No imported graphics engine, heap mesh or `std` renderer.

#### Emission contact

- **none.** The write entrypoint is absent and cannot be recovered from
  a view value. Displayed participation never authorizes an append.

### branch: core/

**birth order:** #7, last, only after all callees and prior births are proven.

**one-task sentence:** Orchestrate only the proven first-party doors.

**Hands cite:** Piece 2; B12, C12, D footer; manifest composition and
irreducible-Core boundary; AGENTS.md Implementation Law.

#### Owns (types / invariants — prose, not code)

- **Core composition** connects the already-proven doors to one strand.
  It adds no row, store, identity rule or business operation.
- It separates the Continue path from the read-only view paths and
  preserves each callee's preconditions and capability limits.
- Every first-party callee is tied to an exact proved revision. A moving
  branch name, compiling workspace or "first-party" label is not proof.

#### Must not own

- Storage, WORD/POINTER layout, star lookup, projection logic, allocator,
  parsing, scheduling, target selection or invented emission policy.
- HCC-A/Cup/Water internals, `trainA` teeth, the A/B/C HTML shadow gearing,
  or a model/agent framework as runtime machinery. Layer III stays Shadow.

#### Public surface (names only — no signatures that emit)

- allowed ops: `Continue`, `star_view`, `view_1d`, `view_2d`, `view_3d`
  (delegation only).
- absent ops (unrepresentable): `raw_append`, `emit_pointer`, `intern`,
  `set_meaning`, `repair_lace`, `allocate_star_table`, `run_trainA`.

#### May call (first-party only)

- `route/`, `view_star/`, `view_proj/`, at their proved revisions only.
  No direct bypass into `strand/`, `word/` or `pointer/` is added to the
  prior map. Transitive dependencies remain their owners' responsibility.

#### Forbidden states (must be unrepresentable)

- An unproved callee presented as admitted, a view handed append
  authority, two Lace owners/stores composed as one, a hidden helper
  duplicating branch business, or Shadow gear behavior deciding rows.

#### Proof shape (what “proven” means before completion)

- Show each call establishes the callee's exact preconditions and
  preserves its postconditions, resource bounds and failure guarantees.
  Show orchestration adds no store, hidden operation or capability leak.
- Account for the one append history across all calls. Admission of
  sections must trace to independently accepted source prose; thin
  orchestration cannot manufacture a missing emission owner or rule.
- No claim of complete working Lace while an applicable premise is
  `[GAP]`. Composition and trust review remain required even if every
  leaf is proved. Proof status: `UNESTABLISHED`.

#### no_std / alloc

- `#![no_std]` required: yes.
- alloc: absent throughout the effective dependency closure; no `std`
  feature, test-mode exception or generated helper may introduce it.

#### Emission contact

- **`[GAP]` remains outside this plan's answers.** Core may not fill it
  as glue. Delegating Continue does not supply when/arity/adjacency.

## PAGE F — Virtual workspace and permitted dependency edges

```text
COMMENT-PLAN ONLY. THESE FUTURE FILES/DIRECTORIES ARE NOT CREATED.

laceArc/
|-- docs/                         existing source of record
|   |-- rust-nostd-crate-map.md    prior PLAN
|   `-- rust-nostd-branch-contracts.md
|
`-- [AFTER ACCEPTANCE; SERIAL BIRTHS ONLY]
    |-- strand/                   #1  Cargo.toml + src/ (future)
    |-- word/                     #2  Cargo.toml + src/ (future)
    |-- pointer/                  #3  Cargo.toml + src/ (future)
    |-- route/                    #4  Cargo.toml + src/ (future)
    |-- view_star/                #5  Cargo.toml + src/ (future)
    |-- view_proj/                #6  Cargo.toml + src/ (future)
    `-- core/                     #7  Cargo.toml + src/ (future)

The bracketed parent is a comment, not a directory name.
The complete drawing does not authorize creating all seven at once.
```

Path dependencies only between **our proved first-party crates**. Zero
crates.io dependencies, foreign Git dependencies or foreign submodules.
No Cargo manifest, workspace root, lockfile or source tree is authored here.

| Caller | Allowed direct first-party callees | Boundary |
|---|---|---|
| `strand/` | none | Only retained log / append boundary |
| `word/` | none | Layout/value only |
| `pointer/` | none | Layout/type law only |
| `route/` | `strand/`, `word/`, `pointer/` | Continue; no emit helper |
| `view_star/` | `strand/` | Read-only |
| `view_proj/` | `strand/`, `view_star/` | Read-only |
| `core/` | `route/`, `view_star/`, `view_proj/` | Thin orchestration |

These are the prior map's edges. No `utils/` is inserted to resolve an
inconvenient seam. Section/layout composition, reference evidence and
word-value exposure must be proved within these boundaries. If a proposed
representation needs another dependency or task, return to both plans;
do not smuggle the change into a README or signature.

## PAGE G — Prove before the next birth

```text
REQUIRED OUTLINE: docs/pointer-emission-prompt.md
        currently ABSENT; this task does not create it
                            |
                            v
POINTER CONTRACT: docs/pointer-emission.md
        currently DRAFT / not accepted / emission [GAP]
                            |
              exact content accepted by human?
                   NO: stay in docs/review
                   YES: check scope and all needed premises
                            |
                     first birth eligible
                            |
                            v
  strand -> PROVE -> word -> PROVE -> pointer -> PROVE
                                                  |
                                                  v
   core <- PROVE <- view_proj <- PROVE <- view_star <- PROVE <- route

Every arrow is a FUTURE gate, not a completed step.
No branch directories, scaffold branches or parallel branch PRs now.
```

"One branch, one task" is literal. The task must be mathematically stated
and proven before the next branch exists. The two views are successive
births, not a parallel pair. Proof review can examine the same task; it
cannot create another unproved implementation branch.

For **every** birth, all of the following must be satisfied before the
next is permitted. These boxes are intentionally unchecked:

- [ ] The one-task sentence is unchanged, and the implementation does only that task.
- [ ] Forbidden states are named and blocked by the actual type/capability story, not comments or conventions.
- [ ] The input domain, invariant, successful/unsuccessful postconditions and abstraction to the accepted prose are explicit.
- [ ] A proof addresses all permitted operations and their composition; examples, tests and model agreement are identified separately.
- [ ] Index/capacity bounds, stack use, failure scope, I/O, unsafe operations and compiler/target assumptions are stated and discharged for the claimed scope.
- [ ] `#![no_std]` applies to the entire effective build; there is no silent `alloc`, `std`, or test/helper exception.
- [ ] Zero crates.io or other external dependencies; all required first-party callees have exact proved revisions.
- [ ] Shoe test: the operation is doable to the lace while retaining every old pass; actual physical evidence is identified without claiming an unperformed test.
- [ ] Emission remains `[GAP]` in this plan: no branch invents it, supplies an emit stub, or treats type validity as permission to emit.
- [ ] The independent implementation gate is genuinely open for the exact work: accepted pointer prose and every premise needed by this birth are present. If emission needed by implementation is still unresolved, this box cannot pass.
- [ ] No extra store, intern collapse, projection write path, permanent prohibition breach or hidden second task appears.
- [ ] The human's requirement for a written proof note in `docs/`, if imposed before the next birth, has been met and the human has allowed that transition. Record the requirement and its source; do not manufacture a blanket acceptance.

The human **may require a written proof note in `docs/` before allowing the
next branch**. This is a gate rule, not such a note and not a claim that
the human has already imposed a particular note format. A proof note must
identify the task, theorem, premises, exact reviewed revision, evidence,
resource/trust scope, reviewer objections and remaining obligations.

All seven cards presently have proof status `UNESTABLISHED`. No birth is
eligible. Resolving emission later requires a fresh review against its
exact accepted prose; it does not retroactively make this plan an answer
or a grant of permission.

## PAGE H — Open gaps; no answers supplied

| Open item | Source boundary | Status in this plan |
|---|---|---|
| When a POINTER is appended | Piece 5 Boundary; draft question 1; D's mix of rows | `[GAP]` |
| POINTER arity | D2's ref_A/ref_B example; draft question 2 | `[GAP]`; no unary, pair or variable-length default |
| Which reference occupies `ref_A` rather than `ref_B`, if arity is ever two | D1's six pointers; `docs/graphics-close-reading.md` §2 | `[GAP]`; order is not chronological and the array cannot compute a subject |
| Whether adjacent WORD rows are already a relation | Pieces 3, 5 and 8; draft question 3 | `[GAP]`; neither yes nor no is inferred |
| Word identity, case, stem, homograph and segmentation | Pieces 3–4; A6–A7; reason-map open questions | `[GAP]`; no normalization or tokenizer choice |
| Target selection and the evidence admitting earlier same-line references | Manifest interface-coherence check; draft sections 1/4 | `[GAP]`; backward-only law does not choose an algorithm |
| Whether repeated passage requires POINTER as well as WORD | Draft question 5; A5/B3/D5 | `[GAP]`; no equality-triggered emission |
| Read/traversal semantics, geometric encoding and axis labels | Pieces 12–15 and manifest open questions | `[GAP]`; no invented walker or coordinate store |
| Finite resources, layout composition, failure/durability and concurrent arrival ordering | Future proof obligations; manifest open questions | Unsettled premises; no allocator, persistence or concurrency scheme selected |

Required outline destination:
`docs/pointer-emission-prompt.md` — written here as a path, deliberately not
as a link, because the target does not resolve and a dangling link fails
`.claude/hooks/check-docs.sh`.
**It is absent at the inspected revision.** The user requires that outline
before any planned branch directory becomes real. Pointing to its path
does not satisfy that requirement. Its absence is not permission to put
answers in these contracts.

The separate acceptance gate is
[`docs/pointer-emission.md`](pointer-emission.md), which currently exists
as an unanswered, unaccepted draft. An outline is not the contract;
existence is not acceptance; acceptance cannot be inferred from a commit.
No answers to these questions are drafted here.

## PAGE X — Cross-cut and bounded review

| Temptation | Hands deadbolt |
|---|---|
| Start coding `strand/` because storage looks settled | Required outline, exact accepted pointer contract and all applicable premises before the first birth |
| "Just signatures" for emission | An emit signature still invents a door; absent |
| Treat a POINTER type as a participation decision | Type law constrains a row; when/arity/selection remain `[GAP]` |
| Prove safety with an unusable empty type | Legal source behavior must remain representable; no vacuous graduation |
| Parallel branch PRs or empty scaffolds | Serial: state and prove the one task before another branch exists |
| Two ends imply two stores or two writers | Two views of one retained strand; one frontier extension contract |
| Intern repeated values or normalize identities | Every occurrence survives at its own index; Xiao deadbolt |
| Call a Star/graph table a disposable cache | No such table admitted; views have no authoritative state or write door |
| Add `utils/` to hide a coupling | Forbidden; return to the task boundary |
| Map `trainA` teeth into `strand/` | Shadow A/B/C HTML remains Layer III, outside these Core doors |
| Declare `no_std` sufficient proof | Inspect actual imports, resources, effects and trust assumptions |
| Mark the file accepted because it is complete | PLAN only; the human's exact acceptance is a separate fact |

### Propose / attack / resolve (one agent, not independent review)

**Propose:** Preserve the crate map's seven names and dependency edges;
state retention and read/write boundaries as prose type obligations.

**Attack:** Try to smuggle in a mutable payload alias, a wrapped/reused
index, a second end-store, a vocabulary ID, a fixed `ref_A/ref_B` schema,
an unchecked pointer constructor, a cached Star table, a view write, or
an emission decision hidden in Continue/core glue. Also test the plan
against the missing outline, the unaccepted draft and the source conflicts.

**Resolve:** Each attempted operation is explicitly excluded by the
owning card. No concrete Rust design has been supplied or proved, so
future enforceability remains `UNESTABLISHED`. The type-composition,
resource and source gaps remain visible. The review establishes a bounded
documentation product, not a working machine or mathematical proof.

**Observed verification:** Document inspection found seven cards in the
required order, each with the required fields, a Hands citation, a proof
shape, `no_std` and absent allocation. Pages A–H and X are present. The
authored documentation directory contains only this file; no planned
branch directory, Rust file or Cargo manifest was created. A final main
tree read returned the same baseline and unchanged controlling source
blobs. No compiler, runtime, physical-cord or mathematical-proof execution
was performed; structural document checks do not establish those results.

**Handoff:** One authored product, `docs/rust-nostd-branch-contracts.md`.
Prior map, law, graphics and pointer draft are unchanged. No Rust source,
Cargo files, planned branch directories, code/type definitions, commit,
push, branch birth or acceptance record is part of this task.

**Next narrow question:** What exact source-grounded pointer-emission
outline should be placed at the missing required path? This question
does not authorize another file or an implementation branch in this pass.

**STOP.** Commit only if the human asks. Shoe lace in hands, or no.
