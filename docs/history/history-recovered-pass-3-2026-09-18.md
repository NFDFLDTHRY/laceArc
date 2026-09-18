# Lace memory recovery: third pass

18 September 2026. This supplements the first two recovery notes. It records newly located history, direct source inspection, and corrections to claim strength. It is a reading note. The human-supplied staking law remains controlling in full; this note neither replaces that law nor supplies a missing Core rule.

The strongest additions are four recovered visual counterparts of the canonical graphics; the user's September 7 correction to a 1D array whose pointers are themselves Lace; P02 v0.3's explicit retreat from cross-schedule trace equivalence; and source-level reasons why the old codec's exact-roundtrip claim cannot establish preservation of raw input. The standing DESIGN.md ledger also preserves specific assistant guesses and failed measurements.

Repository reference for this pass: NFDFLDTHRY/laceArc at `eed8396b205328b88bc8d8c14f2b479f339d7ccf`. The working tree was clean at the beginning and final inspection. `docs/pointer-emission.md` and `src/` were absent. No identifiable acceptance of an exact pointer-emission contract was recovered. This pass creates only this historical note; it does not change or publish repository files. One agent performed the recovery and its source checks; there was no independent reviewer or physical shoelace demonstration.

Conversation quotations below reproduce snippets returned by historical retrieval. They are not authenticated full transcript exports. Direct file readings, image inspection, metadata, static code observations, and historical claims are distinguished. Searches that returned the first two recovery notes were not counted as independent corroboration.

The graphics gap is substantially narrower.

All four historical images were located, downloaded without alteration, and visually compared with the corresponding tracked repository files. The matching compositions include A's empty start and PIE examples, B's twelve mechanism panels, C's twelve dimensional-participation panels, and D's WORD/POINTER table and `ref_A`/`ref_B` example. The titles rendered inside the images match the canonical titles even where their stored filenames differ.

| Graphic / original attachment named by repository | Recovered filename | Recorded creation time, UTC, 7 September 2026 | Recovered pixels / repository pixels |
|---|---|---|---|
| A / `13284.png` | The Lace Model in 3D: Words to Worlds.png | 00:24:10.170290 | 1536 × 1024 / 1500 × 1000 |
| B / `13285.png` | Lace Mechanisms in 3D: Continuous Wire Universe.png | 00:27:44.502311 | 1672 × 941 / 1500 × 844 |
| C / `13286.png` | N-Dimensional Lace Relationships Infographic.png | 00:32:45.114105 | 1672 × 941 / 1500 × 844 |
| D / `13287.png` | Lace Data Structure: One Line, Infinite Structure.png | 01:05:43.976320 | 1536 × 1024 / 1500 × 1000 |

These are recorded artifact timestamps, not proof of the first conception of the design. The attachment-number mapping comes from the pinned repository's graphics README. It was not recovered as an original upload receipt.

The recovered files are PNGs. All four repository files have `.png` names but were identified by the image reader as JPEG data. Their SHA-256 digests differ from the recovered files. The repository working copies exactly matched the blobs at the pinned commit. This establishes visual correspondence and distinct file encodings; it does not prove the precise conversion history or byte identity with attachments 13284–13287. No asset was replaced or renamed.

| Graphic | Recovered file SHA-256 | Tracked repository file SHA-256 |
|---|---|---|
| A | `ad9e42e33842fff9d127fc4ab885c146a6ab575db25ae7e4d2ce0a1a2282b9b6` | `afbf058e778f0a35513492b453152bd7af53abff84682b8486df9e395f22f877` |
| B | `db995bcd782e98eafb07ee691a835eab31cf532f7eaa8528fa5ace026c08dfce` | `8d45850ef1bf73b8e7ab3a67ab2bd176d307a034e2b89e41bfb49735fdb0a24d` |
| C | `d71f7dcf559b8d8ac5f92bc8248b377a106b7a970024c2f3e42cecd5f3815992` | `bdb0b154c4d3643ac40f295a482a65a76e824d56fb51a69810ae7db31310920f` |
| D | `873f12c57116bef9e431210b0a05b09bcb13d3cc3be19c86e3f03b35ed45ce89` | `709678cdd68d361dc25a084da9144a1bfc9312dc5e58c42c4fe77aacc4848614` |

The local Git history records the graphics in commit `4fe984bb098d5ca21c9704234df4fddd53056efb`, dated September 18 at 04:47:18 UTC. That is repository history, not their authoring date. The recovered September 7 assets provide an earlier, independently located visual record.

The user's own correction now connects that visual record to the storage premise.

Historical retrieval returned these role-attributed snippets from September 7:

| Time, UTC | Attribution and recovered wording | What it supports |
|---|---|---|
| 00:57:54 | User: “You literally just need a 1D array, and then pointers for your wiring.” | The user explicitly redirected the architecture to the simple line and its pointers. |
| 01:00:42 | User, excerpt with omissions as returned: “every pointer created is another section of lace… it all lands on lace so then that relationship can then participate in a later structure… a 1D lace” | A relationship's pointer is itself material available to later participation. |
| 01:00:54 | Assistant: “A pointer is not outside Lace… It does not sit in some separate graph. It becomes more Lace.” | The assistant's response recognized the correction; this is not an additional user ruling. |

The same retrieval placed the earlier 3D request at 00:23:02, a request to deepen the mechanisms at 00:25:28, and the N-dimensional request at 00:30:17. Those are retrieved conversation chronology, consistent with the image metadata; the complete original authoring prompts were not returned.

The combined evidence supports this history: the 3D explanations were followed by an explicit user correction about how Lace is stored, and the fourth image presents that line. It does not settle emission timing, target choice, pointer arity, adjacency, or word identity. In particular, the two-reference illustration and the earlier unary `POINT(target)` prescription remain a conflict requiring authoritative resolution. General enthusiasm for a graphic is not acceptance of an absent implementation contract.

P02 v0.3 preserves an important correction to the earlier mathematical claims.

Both July 11 files were read completely: `P02_Minimal_Contact_Temporal_Calculus_v0_2.md` and `P02_v0_3_Three_System_Formulation.md`. The latter explicitly supersedes v0.2 and labels itself a formal-design candidate that is not yet settled. These are historical proposals, with their own atoms, canonicalizers, jobs and scheduling assumptions. Their terminology and status labels do not establish current Core authority.

| Issue | Earlier v0.2 claim | v0.3 correction actually recorded |
|---|---|---|
| Execution equivalence | Its semi-naive argument moves from the same fixed point and linearization to an identical strand. | Section 8 separates equality of admitted derivation sets, EE, from byte-identical replay under the same budget schedule and rule versions. Different schedules may yield different Z assignments and epoch batches. |
| Identity of repeat work | Walk and occurrence bookkeeping leave room for execution to inflate evidence. | A derivation key uses the job and output index. Re-running an identical job is an execution duplicate; the epoch alone is not new evidence. |
| Admission | State-dependent suppression is mixed with fixed-point claims. | Local admissibility is separated from commit policy. Suppressed derivations must remain re-derivable for the stated obligations to hold. |
| Structural equality | Normalized bytes support strong structural language. | Section 5 calls StructureBytes a designed abstraction. Equality is relative to what canonicalizer version V erases and retains. |
| Gluing | Byte-form operations risk conflating serialization with incidence. | Section 6 requires actual shared support or role correspondence. Overlapping serialization offsets are not structural incidence. |
| Coverage | Reconstructible from the strand despite potentially unrecorded no-result work. | Section 9 explicitly withdraws that claim and chooses checkpointed execution state with replay. |
| Scheduler guarantee | Every nonempty shell gets service in each epoch. | Section 10 acknowledges the budget problem and leaves the exact starvation theorem, including arrivals and queue growth, to P09. |
| Dog/wolf example | Corresponding structural roles invite a broader interpretation. | Section 11 limits the result to the pattern selected by V1. It explicitly does not establish a shared semantic role. |

The central recovered distinction is precise: **the same reachable derivations are not necessarily the same recorded history**. v0.3 claims EE under its contracts and gives a replay proof sketch; this recovery has not discharged those premises or independently verified the proof. Its falsification tests are proposed tests, not run results from this pass.

The v0.3 discussion also corrects “no equations anywhere”: it preserves occurrence history while permitting equations on derived projections. This is useful evidence of the historical reasoning, not authorization to install its projections or checkpoint machinery in current Lace. The source's candid recognition that canonicalization selects an abstraction is especially important: byte equality after information has been discarded cannot, by itself, prove possession of the full construction.

The codec evidence is narrower than the old “lossless arrival” wording.

Two distinct source texts were read in full: `star_codec(1).py` and `star_codec.py`. The unsuffixed file contains comments identifying corrected demonstrations. Their suffixes and near-identical upload times alone do not establish chronology; the correction comments and actual code differences do.

Static inspection establishes the following, without running either file:

| Observation in the source | Consequence for the historical claim |
|---|---|
| `read_sentences` opens UTF-8 with replacement errors, lowercases the input, converts newlines to spaces, splits on spaces, and retains characters from a fixed `VAL` alphabet. It keeps only the first terminal mark in the extracted group. | The reader transforms input before encoding. The experiment does not compare a decoded result with the original raw record. |
| The roundtrip reference is reconstructed as `' '.join(words)` plus the retained mark, after the preceding transformations. | A reported 100% match concerns this normalized representation. It cannot certify conservation of discarded case, spacing, characters, punctuation multiplicity, or original bytes. |
| `word_star` also filters characters against `VAL`. | The encoder's input domain is restricted even outside the CSV reader. A bijection claim needs that domain stated explicitly. |
| `decode` iterates outer word spokes in their supplied tuple order; it sorts character angles inside each word. | Word order is retained by the container as supplied. These tests do not establish reconstruction of sentence order solely from an unordered geometric figure. |
| The older novelty example explicitly chooses `the`, `lake`, `is`, `cooler` before assembling their stars. | That example supplies the desired answer in advance. The decoder does not discover or select it. |
| The corrected example enumerates all 16 index combinations across two four-word figures. | It demonstrates combinatorial assembly in the source, still without a rule selecting an appropriate response. |
| `legal()` checks membership in the set of previously seen word figures. | It is a vocabulary-shape membership condition. It does not establish grammar, truth, contextual suitability, or a learned selection rule. |

For a concrete static counterexample to raw preservation, inputs differing only as `Cat` and `cat` become the same reader input after `.lower()`. The recovered roundtrip comparison cannot detect that loss. This is reasoning from the code, not a newly executed test.

The corrected file also admits that its earlier legality experiment sampled words from the corpus and then checked that they occurred in the corpus. That positive result was built into the sampling procedure. The replacement experiment examines sparsity in the possible figure space; it still does not supply the missing selection mechanism. The file explicitly says its trajectory function remains unwritten.

The source header reports 60,002 exact sentence roundtrips. A targeted reread of `LACE_CLAUDE_SIDE_CAPTURE_v2_2026-08-11.md` records both 60,002 and 104,510 **sentences**, describing them as separate reported runs. Neither source supplies independently verified run logs in this recovery. An exact-title search did not locate `The-Office-Lines-V4.csv`; that is a retrieval limit, not proof that the dataset no longer exists. No corpus experiment was rerun.

The direct source inspection strengthens and narrows pass two: the old work contains an encoder/decoder and explicit corrections to misleading demonstrations, while the broad claim that it preserved every raw arrival is unsupported by the comparison it actually performs. The whitelist, fixed alphabet, normalization and old Python dependencies are historical material, not permissible current Core defaults.

The standing design ledger recovers the team's own failure record.

`DESIGN.md`, read completely, opens by warning against rebuilding from the latest message alone. It distinguishes LIVE implementation, MISSING rulings, MINE assistant guesses, and OPEN choices. That distinction is valuable, but individual source attributions still need checking: for example, R7 cites Kimi rather than a direct owner statement, despite the document's broad opening description as the owner's rulings.

The ledger describes `slide.py` as a structure builder with no retrieval, descent, ties or output. It reports 570,666 word positions and 881,721 blocks, with word/sentence/paragraph recall figures. Those are the ledger's historical measurements; its definition of recall is reuse of an already existing identical figure. They are not independently reproduced results or a current license to merge arriving WORD occurrences.

The five MINE entries record specific unruled choices: angular normalization, the order of extra characters in the value scale, treatment of ending punctuation, regeneration of a partial paragraph, and writing sentence prefixes as full sentence blocks. These are concrete examples of an assistant filling unresolved design choices with defaults.

Its “known-bad” list reports:

- Summed character values collapsed 19,682 words into 212 numbers, with 273 words in the largest bucket.
- An `[a-z']+` tokenizer caused 9,571 token collisions/losses in the reported work.
- The advertised 41.6% improvement from a pooled-window median was the constant 340 for every input.
- Mutual information was inflated by thin cells, twice.

These are recovered admissions and reported measurements, not raw results newly authenticated here. They remain useful warnings because they identify the mechanism of each overclaim.

There is also an internal accounting error visible directly in the ledger: its prose says four rulings are MISSING and names R9–R12, but its table additionally labels R13, recent occurrence over frequency, MISSING. The table therefore marks five. Neither the prose count nor the LIVE label is adequate evidence of implementation completeness.

The cat example remains a controlled recovery gap.

The saved August 11 context capture, at returned lines 330–337, explicitly says only this fragment is recoverable:

> cat → tail, fur, tongue  
> \> cat-1 → tail, fur, tongue

It then says the complete greater-than/less-than notation is unavailable and must not be manufactured. An initial memory search in this pass returned a more elaborate version involving scratches and purr. A targeted follow-up did not recover the original conversation supporting those additions, and the directly inspected capture does not contain them. They are therefore unverified retrieval leads, excluded from recovered rulings. The meaning of `>` and the full cat/cat-1 progression remain open.

This is a practical recovery safeguard: a confident memory summary can contain more detail than the accessible source. Repetition of that summary would not improve its authority.

One earlier structural document supplies a bounded additional connection. The inspected opening of `LACE_STRUCTURE_SPEC_v2.md` already describes an empty seed and rejects cutting as a primitive. It also contains historical closed-circle, strict-starvation and typed-pointer machinery. The empty-start resemblance to A1 is a conceptual antecedent, not proof that this document authored the later graphic or that its other mechanisms survived into current law.

The resulting changes to the recovery record are specific.

| Previous unresolved point | Third-pass result | Remaining limit |
|---|---|---|
| Exact identity and origin of the four graphics | Four matching visual compositions recovered, with timestamps, resolutions, hashes and a September 7 correction chain. | Full authoring prompts, attachment receipts and the conversion path into repository bytes remain unverified. |
| P02 as a named archival lead | v0.2 and superseding v0.3 read directly; withdrawn claims and open obligations located. | No independent proof audit, executable result or current adoption established. |
| Codec versus intelligence | Two source variants inspected; normalization, preselected output and tautological legality sampling identified. | Raw corpus and run logs still not recovered; selection remains unwritten in the source. |
| DESIGN.md and failed measurements | Ledger recovered directly, including guesses, reported failures and its missing-ruling count discrepancy. | Individual raw experiments and owner acceptance for each attributed ruling are not established. |
| Full cat rulings | The supported fragment is located and embellished retrieval is rejected as unverified. | Original full exchange and notation still missing. |
| Current pointer-emission acceptance | No acceptance recovered; the pinned checkout has no pointer-emission document. | The Core implementation gate remains closed. |

The old July scheduler transcript, the complete August 11 allocation correction, and exact revisions behind numbered card references also remain unresolved from pass two. Nothing in this pass reverses the exclusion of the separate September C-array experiment from Lace's measured evidence.

The following register gives persistent source identities for a later reviewer. A full read means the returned text was covered, not that every assertion was proved. Image inspection means visible comparison, not authentication of every historical upload step.

| Source | Persistent source reference | Actual coverage in this pass |
|---|---|---|
| Graphic A counterpart | `libfile_1f2b723b936481919ec9fb25a27ab93a` | Complete image; visually compared with tracked A; metadata and bytes inspected. |
| Graphic B counterpart | `libfile_32aab3e8eed481919d24176dd44fd5c6` | Complete image; visually compared with tracked B; metadata and bytes inspected. |
| Graphic C counterpart | `libfile_a15096987ed881919f1bc901f01bceb0` | Complete image; visually compared with tracked C; metadata and bytes inspected. |
| Graphic D counterpart | `libfile_e57b2129d56081918c8668ee39fa6c02` | Complete image; visually compared with tracked D; metadata and bytes inspected. |
| P02_Minimal_Contact_Temporal_Calculus_v0_2.md | `libfile_90a99bd9dbb081918cb72484ac7c7531` | Full returned text, 218 lines, in two windows. |
| P02_v0_3_Three_System_Formulation.md | `libfile_4d0705418ba4819188d2bdff262717da` | Full returned text, 112 lines; sections 5–13 reinspected from retained read output. |
| DESIGN.md | `libfile_38ea3e17599c8191bf8f29784dbcb125` | Full returned text, 141 lines. |
| star_codec.py | `libfile_16bc20d0721c81919da8e87cea45b050` | Full returned source, 254 lines; static inspection only. |
| star_codec(1).py | `libfile_27bb1ce2a6548191a03ccfe3d24a6cc4` | Full returned source, 225 lines; static inspection only. |
| LACE_STRUCTURE_SPEC_v2.md | `libfile_9e54eb796a2081919085899a123a68e2` | Returned lines 1–85 of 212; opening structure and definitions only. |
| SHOE_LACEY_CONTEXT_CAPTURE_2026-08-11.md | `libfile_9f20c3103db8819182d33dbfedb93cc4` | Targeted cat-1 matches and surrounding text, including the explicit missing-source notice. |
| LACE_CLAUDE_SIDE_CAPTURE_v2_2026-08-11.md | `libfile_3f8bee39b62c8191a8ca3f9cc9fd602d` | Targeted 60,002/104,510 matches and their context. |

The second recovery note was reread as the baseline; relevant first-note passages were compared. Repository controls and graphics README were inspected, as were the manifest's relevant storage pieces and the reason map's physical-object/gap statements. Repository file hashes were checked against the pinned commit. Other returned candidates, including duplicate archaeology-report identities and an additional codec copy, were not silently treated as read or byte-identical.

Targeted conversation searches covered the full cat example, P02 history and proof repair, graphics identity and original corrections, and reported codec/corpus runs. Narrow file searches followed those leads. Unrelated returned results were excluded. Source snippets supplied by retrieval occasionally disagreed with other retrieved material; the direct source boundary is recorded above rather than resolved by confidence or repetition.

Completion criterion for this pass was to recover additional primary artifacts, compare them with the first two notes, and leave each material claim at its observed strength. That work is complete. The next narrow historical question is the original, full cat/cat-1 exchange; its absence does not authorize a reconstruction. Any future implementation task still depends on the separately required human acceptance of an exact pointer-emission contract.
