# CLIPBOARD — laceArc gearing visual ↔ code 1:1

**Layer III audit. Nine sheets, A–H and X. The 47 proposed names form a bijection with the registry; the strict implemented visual/prose/code correspondence is BROKEN. POINTER emission remains [GAP].**

Execution of [the gearing audit prompt](../prompts/gearing-code-1to1-prompt.md), against main at **44711d31714d18bd417ae5b9e3fc8bbd260596c0**. This completes the audit document, not the renderer repairs or a future implementation.

**Commit re-anchor:** reconciled with **6fb2dacc4d25460bd000cf43e4700cb9949e6b77** before committing the pending documents. The registry and controlling sources are unchanged. Page F now includes the upstream contact-band priority, gold pair highlighting, and changed camera, with the earlier picker measurements retained under their original revision.

**Publication scope (upstream b7ed9a6):** the renderer was subsequently restyled in 12e4021 and this document moved into docs/clock/. Renderer findings and uses of “current” below refer to the measured revisions 44711d3 and 6fb2dac. The restyled renderer has not been rerun through this audit; its visual and picker results are NOT_TESTED here. The earlier pixel-debt note is retained as a dated observation, not a statement that the restyle is still absent.

**Question:** Does each current gearing contract key have exactly one identified code counterpart, with a traceable prose source and selectable visual representation, without crossing into Lace Core?

Authority remains the [canonical graphics](../graphics/README.md), [systems manifest](../systems-manifest.md), complete [staking law](../staking-the-workspace.md), complete [live law](../law-why-these-documents.md), [standing orders](../../AGENTS.md), and [agent controls](../kit/agent-control.md). For the clock, read the [hologram](shadow-clock-hologram.md) and [walk artifact](shadow-clock-gear-contracts.md). Panel copies cannot overrule that prose.

## PAGE A — WHAT “1:1” MEANS HERE

| Domain | Observed or proposed contents | What the count establishes |
|---|---|---|
| Registry keys K | 47 distinct keys in the eight data files | Contract identity in the current projection. |
| Existing data records | One window.LACE_CONTRACTS[k] record per key | A bijection between keys and keyed payloads, not proof of the described mechanisms. |
| Proposed contract units U | 47 distinct names in Page D | A naming plan only; no such Rust units exist. |
| Existing renderer code | Shared show, pick, geometry, shader, and drawing code | Executable JavaScript already exists. “No code on disk” is false. |
| Visual instances | Registry chips, HUD buttons, time buttons, and canvas geometry | Several controls can select one key. Visual instances are not themselves in one-to-one correspondence with keys. |

The proposed map u takes each key to its Page D name. Its inverse is the final, unchanged identifier in that name. Every key appears once and every full proposed name is distinct. This establishes the **finite naming bijection**, conditional on that table, not implementation or behavior.

The prompt's literal “every gearing-related code unit” also encounters shared renderer functions with no individual key. Their presence cannot silently be excluded to announce a global pass. A future contract must distinguish contract-owning units from rendering infrastructure, or change the implementation to satisfy the literal requirement. The present audit records that scope issue rather than inventing dozens of helper keys.

**KEEP:** one identity and one designated contract owner. **FORBID:** a second owner for the same contract, hidden contract behavior in a helper, or a claim that matching names proves matching effects.

## PAGE B — TWO UNIVERSES AND THE STAMP LEGEND

All Page D units belong to **Layer III Shadow tooling**. None belongs in the seven planned Hands doors in [the Rust crate map](../plans/rust-nostd-crate-map.md). Those doors remain a separate conditional plan; these 47 names neither add 47 crates nor authorize simultaneous branch births.

The crate map and [branch contracts](../plans/rust-nostd-branch-contracts.md) are plans already represented on main; the local crate-map revision is included in this documentation commit. The [pointer-emission draft](../pointer-emission.md) remains unanswered and unaccepted. The [elephant-clock interaction model](agent-interaction-model.md) concerns steward operation and is not another LACE_CONTRACTS key set.

The clock's [boundary-stamp legend](shadow-clock-hologram.md#boundary-stamps) is:

| Stamp | Meaning in the clock |
|---|---|
| [I] | Kin-read of a Core invariant; no implementation permission. |
| [II] | Kin-read of Arrival discipline; no ingest implementation. |
| [III] | Projection/view; no write-back. |
| [H] | HOLDER-only: steward, conversation, or attention. |
| [X] | The specified crossing into Lace mechanisms is forbidden. |
| [GAP] | The source leaves a rule unresolved. |

**Correction:** the former audit's “[H] Hands” label was wrong. The prompt's bare H shorthand for its proposed layer column must not redefine the established [H] stamp. This audit uses III in every unit row and keeps source stamps separate.

An X1 audit unit could represent the prohibition on ledger mutation; it must not perform that mutation on Lace. Likewise A3 names a description of local compilation, not a WORD/POINTER operator. Even an [I] kin stamp does not move a gearing unit into Core.

The [mathematical model](system-mathematical-model.md), §§1 and 5, preserves the separation between Hands and Shadow. Its formulas and completeness claims are not evidence that any proposed unit has been implemented, accepted, or proved.

## PAGE C — SHAFT INVENTORY

| Shaft / data file | Present keys | Count | Missing / extra |
|---|---|---:|---|
| [axle](../gearing/contracts-axle.js) | axle | 1 | none / none |
| [gears](../gearing/contracts-gears.js) | A, B, C, AB, BC, CA | 6 | none / none |
| [trainA](../gearing/contracts-trainA.js) | A1–A9 | 9 | none / none |
| [trainB](../gearing/contracts-trainB.js) | B1–B5 | 5 | none / none |
| [trainC](../gearing/contracts-trainC.js) | C1–C10 | 10 | none / none |
| [cells](../gearing/contracts-cells.js) | t0–t6 | 7 | none / none |
| [escape](../gearing/contracts-escape.js) | E1, E2, R1 | 3 | none / none |
| [audits](../gearing/contracts-audits.js) | X1–X6 | 6 | none / none |
| **Union** | **K** | **47** | **0 / 0** |

Observed with Node v24.19.0: each inspected script evaluates to its assigned keys; all records have nonempty group, chip, title, and body strings; there are no duplicate declarations within or across these files. The renderer loads all eight exactly once through relative script-src elements before the main script.

Forward and reverse load orders produce equal records for all keys. The inspected files assign disjoint properties through the required additive Object.assign form, so order independence follows for these eight files [INFERENCE]. Object.assign would overwrite a duplicate key; it does not enforce uniqueness for future edits.

Chip text is an alias, not identity. Non-identical labels are axle → Axle; A/B/C → Gear A/Gear B/Gear C; AB/BC/CA → A×B/B×C/C×A; t2 → t2*. No t2* registry key exists.

No shaft was claimed or edited for this document-only audit. Claim status showed all eight FREE. The live resync signal was honored by fetching, fast-forwarding, and reading against current main.

## PAGE D — CODE INVENTORY, ONE ROW PER KEY

The shaft column resolves to the existing file in Page C; its exact existing record is window.LACE_CONTRACTS[key]. The proposed names below are retained from the previous plan and expanded individually. **They are prose identifiers, not Rust declarations or files.**

| Key | Existing shaft | Proposed contract unit u(k) | Layer |
|---|---|---|---|
| axle | axle | shadow_clock::axle::axle | III |
| A | gears | shadow_clock::gears::A | III |
| B | gears | shadow_clock::gears::B | III |
| C | gears | shadow_clock::gears::C | III |
| AB | gears | shadow_clock::gears::AB | III |
| BC | gears | shadow_clock::gears::BC | III |
| CA | gears | shadow_clock::gears::CA | III |
| A1 | trainA | shadow_clock::train_a::A1 | III |
| A2 | trainA | shadow_clock::train_a::A2 | III |
| A3 | trainA | shadow_clock::train_a::A3 | III |
| A4 | trainA | shadow_clock::train_a::A4 | III |
| A5 | trainA | shadow_clock::train_a::A5 | III |
| A6 | trainA | shadow_clock::train_a::A6 | III |
| A7 | trainA | shadow_clock::train_a::A7 | III |
| A8 | trainA | shadow_clock::train_a::A8 | III |
| A9 | trainA | shadow_clock::train_a::A9 | III |
| B1 | trainB | shadow_clock::train_b::B1 | III |
| B2 | trainB | shadow_clock::train_b::B2 | III |
| B3 | trainB | shadow_clock::train_b::B3 | III |
| B4 | trainB | shadow_clock::train_b::B4 | III |
| B5 | trainB | shadow_clock::train_b::B5 | III |
| C1 | trainC | shadow_clock::train_c::C1 | III |
| C2 | trainC | shadow_clock::train_c::C2 | III |
| C3 | trainC | shadow_clock::train_c::C3 | III |
| C4 | trainC | shadow_clock::train_c::C4 | III |
| C5 | trainC | shadow_clock::train_c::C5 | III |
| C6 | trainC | shadow_clock::train_c::C6 | III |
| C7 | trainC | shadow_clock::train_c::C7 | III |
| C8 | trainC | shadow_clock::train_c::C8 | III |
| C9 | trainC | shadow_clock::train_c::C9 | III |
| C10 | trainC | shadow_clock::train_c::C10 | III |
| t0 | cells | shadow_clock::cells::t0 | III |
| t1 | cells | shadow_clock::cells::t1 | III |
| t2 | cells | shadow_clock::cells::t2 | III |
| t3 | cells | shadow_clock::cells::t3 | III |
| t4 | cells | shadow_clock::cells::t4 | III |
| t5 | cells | shadow_clock::cells::t5 | III |
| t6 | cells | shadow_clock::cells::t6 | III |
| E1 | escape | shadow_clock::escape::E1 | III |
| E2 | escape | shadow_clock::escape::E2 | III |
| R1 | escape | shadow_clock::escape::R1 | III |
| X1 | audits | shadow_clock::audits::X1 | III |
| X2 | audits | shadow_clock::audits::X2 | III |
| X3 | audits | shadow_clock::audits::X3 | III |
| X4 | audits | shadow_clock::audits::X4 | III |
| X5 | audits | shadow_clock::audits::X5 | III |
| X6 | audits | shadow_clock::audits::X6 | III |

**Implemented proposed units: 0. Hands gearing units: 0.** The existing JS records and shared renderer are present; the future named units are not. No formal type, source tree, Cargo workspace, dependency, or branch is created by this list.

## PAGE E — BIJECTION AUDIT

| Relation | Result | Bounded finding |
|---|---|---|
| K ↔ existing registry records | BIJECTION | 47 keys, 47 payloads; no declaration collision. |
| K ↔ Page D proposed names | BIJECTION, PLAN ONLY | 47 individually listed, distinct names with recoverable keys. |
| K ↔ implemented proposed units | NOT_IMPLEMENTED | All 47 proposed counterparts are absent. Existing JS payloads are not proof of those future units. |
| K ↔ dedicated walk headings | BROKEN as a literal 47:47 relation | 40 MESH/AUDIT headings match 40 body first lines; seven aggregate keys have no dedicated heading. |
| K ↔ independent canvas targets/meshes | BROKEN | Ten target records for seven distinct keys, an axle selection collision, and 40 keys without individual targets; see Page F. |
| Every visual/code object ↔ K | BROKEN under the literal prompt | Shared renderer functions and unkeyed ribbon/individual tooth geometry cannot be counted as 47 separate contract units. |

**Orphan visual, relative to the plan:** none of the 47 keys lacks a proposed name. **Relative to implemented proposed units:** all 47 remain without that implementation. The gate requires this absence; an audit must report it without manufacturing code.

**Orphan code in the naming plan:** none. Shared renderer infrastructure has no key per function; its permitted relationship to contract units needs an explicit scope, not a concealed exception.

**Prose coverage:** A1–A9 map to Walk 1; B1–B5 to Walk 2; C1–C10 to Walk 3; t0–t6 to Walk 4; E1/E2 to Walk 5; R1 to Walk 6; X1–X6 to Walk 7. Each match uses the complete MESH/AUDIT first line, including scale/time where present, rather than assuming that an ordinal is sufficient.

The remaining keys **axle, A, B, C, AB, BC, CA** summarize the hologram's axle, trains, morphisms, and co-presence. They have source support, but not seven corresponding standalone contracts in the walk artifact. A literal three-way 47:47 lock therefore has seven unresolved prose counterparts. Renaming a heading is not enough to create their missing contract grain.

**Count conflict:** Walk 1 contains nine MESH headings and nine A1–A9 records. The walk's summary and mathematical model §§4/6 say ten. The model also lists an aggregate cycle, but that does not supply an additional MESH header or A10 key. Record the discrepancy; do not invent a tenth shaft key.

**Overall result: BROKEN for the prompt's strict implemented correspondence.** The naming plan passes its narrower check. Remaining repairs are assigned to their actual source surfaces below; none is performed by this audit.

## PAGE F — RENDERER ↔ DATA

- **Approved renderer baseline (2026-09-18):** SDF raymarch + orbit/zoom (`db469c3` kin — “drag to orbit · pinch or scroll to zoom”). Plastic `buildGear` and the post-raymarch mesh restyles (`12e4021` / `b6ce0ac`) are rejected. Improve on this shader path; do not drop WGSL raymarch or orbit.

### Steward note — lookref language split (2026-09-18)

- **Scene lookrefs (batch 2)** = primary canvas language: dark lattice floor; glass cubes as **clustering regions** (participation bunched under one view); **wire of light** (cyan/gold) = Hands lace cord threading those regions, two ends, not CTC. Files: `docs/hologram/lookref-lattice-hub-uplink.png`, `lookref-lattice-trail-annotations.jpg`, `lookref-lattice-glyph-arrows.jpg`.
- **ASTRA lookrefs (batch 1)** = page chrome / view instruments only (brackets, scientific labels, optional telemetry from real `LACE_CONTRACTS`). Not Lace runtime; not canvas background.
- **SDF raymarch baseline unchanged** (`db469c3` kin). Plastic `buildGear` and mesh-only restyles remain rejected. Cubes ≠ Graphic D types; wire ≠ second store.


Source: [the renderer](../shadow-clock-gearing.html), especially chipKeys, show, pickTargets, hitAmong, pick, buildLaceRibbon, and frame. It remains read-only for this audit; the designated editor's upstream changes are incorporated here.

| Visual/control group | Keys and present binding | Drift or limit |
|---|---|---|
| Main clustering regions (hologram glass cubes) | A, B, C: registry chips, HUD buttons, pick targets, glass-shell + core highlight | Same three keys; skin is stacked glass **clustering regions** threaded by wire-of-light Hands cord (not plastic teeth; cubes ≠ Graphic D). Pair-region priority can still intercept B/axle at shared center in synthetic checks. Train contracts remain individually unbound (chip OK). |
| Pair interactions (crossing beams) | AB, BC, CA: registry chips, HUD buttons, mesh-priority pick regions, visible cyan/white arc beams with highlight | Beams are drawn as presentation mesh (crossing template). Mesh-priority pick still applies. JS BIND notes in shaft files may still say chip-only — shaft not edited this tick. |
| Axle | axle: registry chip, HUD button, mesh, and declared pick target | Shares B's center; the current picker selects CA there because mesh contact regions have priority. The B/axle body collision also remains; tested below. HUD/chip code still calls show with axle. |
| Train contracts | A1–A9, B1–B5, C1–C10: 24 registry chips | No individual pick targets or matching mesh highlight conditions. |
| Time cells | t0–t6: seven registry chips and seven time-bar buttons | Both controls pass the same key to show. No individual 3D targets; these buttons do not advance a model clock. |
| Escapement / recursion | E1, E2, R1: three registry chips | No individual 3D targets or implemented Lock/Release state machine. The frame angle is driven by animation time, not these contracts. |
| Boundary audits | X1–X6: six registry chips | Descriptions of prohibited crossings; no individual 3D targets. |
| Procedural ribbon | laceMesh from buildLaceRibbon, drawn via bufLace | No contract key, picker, or body. Its curve is generated scene geometry, not a reading of retained Graphic D entries. |

The current declared canvas/HUD key set is **{A, B, C, axle, AB, BC, CA}**, seven distinct keys represented by ten canvas target records. Each pair has two mesh-priority records. The 40 keys without individual canvas targets are exactly the 24 train keys, seven cells, three escape/recursion keys, and six audits. HUD labels remain a screen-fixed rail, wrapping below the canvas on mobile, as introduced in f995e44; they are not projected onto teeth.

The chip loop constructs one button for every registry key. Together with seven HUD and seven time buttons, the source specifies **61 selection controls for 47 identities**. This is repeated access to contracts, not 61 contracts. Browser clickability, occlusion, accessibility, and actual GPU output remain NOT_TESTED here.

### Axle counterexample

At the original 44711d3 audit revision, the picker declared B before axle. Both centers were [0, 0, 0], with radii 0.82 and 0.35 respectively. The nearest-target test used a strict distance improvement, so the later equal-distance axle lost when B was already eligible.

The matrix and pick functions were extracted unchanged from that revision and executed in Node with synthetic canvas rectangles and its frame camera:

| Synthetic rectangle | Result at projected axle center | Projected B radius | Projected axle radius |
|---|---|---:|---:|
| 800 × 500 | B | 0.171945 | 0.072117 |
| 390 × 300 | B | 0.211448 | 0.088686 |

At each original tested rectangle, B's pick disc contained the entire axle disc and shared its center. The strict-distance rule prevented axle from winning anywhere in its disc [INFERENCE from those measured radii and the source test]. The other six targets selected their own keys at their projected centers in those runs.

**Current recheck at 6fb2dac:** the picker now tries mesh-priority regions first, then body targets. B and axle still share a center, with body radii 0.78 and 0.32. The changed frame camera and exact current matrix, hitAmong, and pick functions were extracted and executed in Node:

| Synthetic rectangle | Result at projected axle/B center | Projected B radius | Projected axle radius |
|---|---|---:|---:|
| 800 × 500 | CA | 0.126518 | 0.048649 |
| 390 × 300 | CA | 0.147460 | 0.056702 |

In both checks, A and C selected themselves at their centers, and all six pair-region centers selected their assigned AB/BC/CA keys. The CA region intercepted the shared B/axle center. Outside a winning pair region, B's larger body disc and earlier position still prevent axle winning in its smaller concentric disc [INFERENCE within the tested projections]. The new band selection does not establish independent axle selectability.

This is a **synthetic picker counterexample**, not a WebGPU render or Android touch test. It refutes the claim that merely listing axle in pickTargets establishes its canvas selectability.

### Geometry is not contract grain

**Skin note:** live primary look is SDF raymarch hologram stations (neon lattice / volumetric cubes), not plastic teeth and not the later mesh-only glass restyle. The tooth-count mismatch below remains a historical audit finding against earlier revisions and the walk artifact’s GEAR_* specs — it does not reintroduce plastic teeth.

- **Approved renderer baseline (2026-09-18):** SDF raymarch + orbit/zoom (`db469c3` kin — “drag to orbit · pinch or scroll to zoom”). Plastic `buildGear` and the post-raymarch mesh restyles (`12e4021` / `b6ce0ac`) are rejected. Improve on this shader path; do not drop WGSL raymarch or orbit.

Pair selection highlights the corresponding crossing beam (and station when selected). That is shared coarse highlighting, not a key-to-mesh bijection for train contracts. The unkeyed lace ribbon remains presentation-only Hands geometry (authorized as skin, not a new contract key). Calling it “Lace cord (Hands)” in the legend does not make its generated geometry the strand.

### Minimal repairs identified, not applied

| Finding | Responsible surface | Smallest scoped repair or decision |
|---|---|---|
| Stale AB/BC/CA BIND notes | gears shaft holder | Correct the three binding descriptions to match the renderer, preserving their keys and contracts. |
| Axle picker collision and pair interception | Designated renderer editor | Give axle a distinguishable hit region or explicit selection priority; verify axle and B remain independently selectable after accounting for pair-region priority. |
| Forty contracts have no individual mesh binding | Designated renderer editor | Bind contract-specific selectable geometry to the existing keys if strict mesh coverage remains the requirement. A chip-only exception would require an explicit change of scope. |
| Unkeyed ribbon and ambiguous tooth grain | Designated renderer editor / governing specification | Remove uncontracted representation under the literal rule, or explicitly authorize presentation-only geometry and identify it as such. Do not mint Core structure to justify a picture. |
| Seven missing standalone prose counterparts | Walk-artifact editor | State the seven aggregate contracts in the authority document, or explicitly change the strict 47:47 prose requirement. Keep their distinct grain visible. |
| “Ten” A meshes versus nine headings | Walk / mathematical-model editors | Reconcile the count against the actual inventory; do not add A10 merely to satisfy the total. |
| Shared renderer functions versus “every code unit” | Governing specification / later implementation plan | Define which units own contracts and how infrastructure may serve them; do not hide another contract in a helper. |

No renderer, shaft, source-law, or mathematical-model edits are part of this run.

## PAGE G — PROSE ↔ JS ↔ PROPOSED UNIT

These are three traceability samples. The third leg is a **proposed name**, so none proves an implemented three-way lock.

| Key | Exact walk locus | Existing JS record | Proposed unit |
|---|---|---|---|
| A3 | Walk 1: MESH A.RIC ∥ A.PFC → A.C; scale A, time S2 | [trainA](../gearing/contracts-trainA.js), key A3 | shadow_clock::train_a::A3 |
| t2 | Walk 4: MESH t2 Traj × Locate* × A.S3–S4; scale A×B×C, time t2 | [cells](../gearing/contracts-cells.js), key t2; chip label t2* | shadow_clock::cells::t2 |
| X1 | Walk 7: AUDIT A.L merge/delete as Lace write | [audits](../gearing/contracts-audits.js), key X1 | shadow_clock::audits::X1 |

For this comparison only, Markdown code/emphasis marks and double-quote glyphs were removed, curly apostrophes normalized, and whitespace collapsed. This is a disclosed textual comparison, not a byte-for-byte-copy assertion or a semantic proof.

- **A3:** the normalized body matches the complete prose block. Its [H] local compile / [X] Core-operator distinction is retained.
- **t2:** the complete normalized prose block is present, followed by two JS-only lines: a STEWARD instruction to utter the repair sentence and an additional HANDS CITE warning against filling emission from Anchor. Those lines agree with nearby source restrictions but are supplements, so literal copy equality fails.
- **X1:** the normalized body matches the complete audit block. It describes a prohibition; it does not authorize a ledger operation on Lace.

The initial X1 extraction accidentally included later audit headings. Bounding the extraction at the next level-2/3 heading corrected that inspection error; no source defect is inferred from the first result.

R1 remains the sole named master-fold record for Walk 6. Its overlap with t5/t6 is a relationship between separately identified contracts, not permission to merge their identities.

## PAGE H — ANYTHING THAT LOOKS LIKE “WHEN TO POINT”

| False friend | Boundary retained |
|---|---|
| C7 Anchor, C2 repair entry, E2 RELEASE | Pointing to talk evidence supplies no permission to append a POINTER. |
| C8 Pair or C3 DELTA | Two observations do not select POINTER arity, targets, or slot assignment. |
| E1 LOCK and a turning animation | A visual frame, grind, or repair event is not a legal append tick. |
| R1 recirculation | Holder feedback does not rewrite WORD entries or close the two-ended strand. |
| A canvas pick or show(key) | Selecting a panel changes presentation state; it is not a Core operation. |

**DELTA:** SILENT on an emission rule; FALSE FRIEND if a rendered arrow or shared identifier is mistaken for one; CONFLICT if a proposed unit implements such an inference.

Emission timing, arity, target selection, slot assignment, and adjacency participation remain unresolved. Other task-specific premises and exact human acceptance remain necessary under the full law. The mathematical model §6's “if and only if” wording must not be used to claim that settling emission alone discharges every remaining implementation obligation.

The existing pointer-emission draft is not an acceptance record. **EMISSION SETTLED? NO / [GAP].**

## PAGE X — CROSS-CUT AND ADJUDICATION

| Temptation | Audit disposition |
|---|---|
| 47 matching names means the machine is implemented | Naming bijection only; implemented counterparts remain absent. |
| A declared hit target proves selectability | Refuted by the original axle/B collision and the current CA interception plus remaining body collision. |
| Chip coverage proves mesh coverage | Forty keys lack individual targets and highlight bindings. |
| A summary key is a dedicated prose contract | Seven aggregate keys remain without dedicated walk headings. |
| [H] means Hands | Corrected to holder-only from the source legend. |
| A matching title proves a copied body | Inspect the body; t2 contains two supplements. |
| A repair requires editing another shaft now | Record the repair and its owner; preserve this task's one-file scope. |
| Filling missing code closes the audit | No scaffold, forbidden mechanism, or emission stub is authorized. |

**Propose:** retain and explicitly list the 47 key-to-name pairs, using the registry key as identity and III as the tooling layer.

**Attack:** test the actual target set and identical B/axle centers; compare dedicated prose headings with aggregate keys; inspect unkeyed geometry and shared highlight paths; compare the three sample bodies; challenge the absent-unit and stamp claims.

**Resolve:** the naming plan survives. The strict implemented correspondence does not. Preserve the failures, proposed repairs, and limits without changing the renderer or inventing Core. One agent performed all three passes; this is not independent review.

## Source and task receipt

| Field | Evidence / scope |
|---|---|
| Repository / task | NFDFLDTHRY/laceArc; execute gearing-code-1to1-prompt.md; docs/audit only; existing main branch. |
| Base and resync | Started at 490473e7e3d3e1579da7ea0361d5c1654360e648; fetched and fast-forwarded to 44711d31714d18bd417ae5b9e3fc8bbd260596c0. The sole incoming change was the resync signal. A second fetch before editing confirmed this tip. |
| Commit integration | On the human's instruction to commit pending work, fast-forwarded main to 6fb2dacc4d25460bd000cf43e4700cb9949e6b77 and reconciled this draft with upstream audit changes. Retained the seven selectable key names, screen-fixed HUD, contact-band priority, pair highlighting, and adjacent-plan/elephant-clock distinctions. Current source inspection and the two synthetic picker checks above replace stale current-renderer claims while preserving the original evidence. No renderer or shaft was edited. |
| Assigned output | Only docs/gearing-code-1to1.md. Pre-edit SHA-256: e6aa28d8931f79f44df9af13810f634cfd27a21d5d77a58afe8fe7195cccda0e. |
| Existing drafts | Modified AgentScope, five-stake, and Rust crate-map documents; untracked atomic-primitives and Petersen–Zech documents. These belong to prior work and are preserved. |
| Local plan identity | The read Rust crate map is a modified tracked file, SHA-256 70f7e20cc7c269e2691b19bb4467b95c6818c2dacaceaa84220be63a44378e27; it is not an untracked file or accepted implementation. |
| Read coverage | Prompt and prior audit; four canonical PNGs and index; relevant manifest Pieces, I/II/III seams and open questions; full law and agent controls; reason-map physical model; full hologram, walk artifact, eight JS data files, renderer, and mathematical-model body; current crate plan. |
| Physical / visual evidence | A/B/C/D VISUALLY_OBSERVED this turn. Physical cord operation NOT_PERFORMED. Inspecting this Shadow display adds no pass and removes no existing pass from a cord. |
| Executed inspection | Node v24.19.0: registry evaluation, ownership/schema checks, forward/reverse loads, HTML target inventory, prose-header matching, three normalized body comparisons, and synthetic picker counterexamples. Inspection commands create no Lace implementation. |
| Not executed / not established | Browser file opening, real DOM clicks, GPU rendering, Android interaction, and accessibility tests NOT_TESTED. No future unit proof, acceptance, or runtime enforcement is established. |
| Adjacent material | Original philosophical/PDF attachments were not reopened for a new content audit. This task checks copies against the in-repo walk authority and does not recertify those external citations. |
| Known source differences | Nine versus ten A-mesh count; seven aggregate keys versus 40 dedicated headings; stale three BIND notes; t2 supplements; the prompt's H layer shorthand versus the established [H] stamp. |
| Permission / effects | The original audit made no commit or push. The later human instruction authorizes committing the pending documents. Renderer and shafts remain read-only for this integration; no claim mutation, new branch, or Core implementation. Controls remain advisory. |
| Completion | Nine sheets; all 47 proposed units individually mapped; orphans, collisions, three traceability samples, repairs, and evidence limits recorded. Strict correspondence remains BROKEN. |

**Next narrow question:** can the designated renderer editor make axle and B independently selectable on the canvas while preserving the pair contact regions, under the current picker counterexample?

**STOP.** This audit does not start that repair or another prompt.
