# Relationship evidence — Pass 3 maps handoff

**Status: EXECUTED as a handoff. Not applied.**  
**Companion blob:** `2628df45e644f56b27e03c4af4460e89b47f905d` — same as Pass 2 freeze.  
**File:** `docs/systems-manifest-ascii.md` (2625 lines at run pin).  
**Maps:** FREE at execute. This ticket did not claim maps and did not edit that file.  
**Emission:** `[GAP]`.

Search outcome: **the join is still missing.** A/B are not stale.

```
PASS 2 NARROW                         COMPANION AT 2628df45
Hands A–D show the parts              Piece board lists 7–11 as rows
companion does not exhibit the join   Star caption: WORD rows only
                                      Participation panel is next door
                                      Dictionary and touch are labels
                                              |
                                              v
                                 NO ONE PASSAGE SAYS
                                 read Pieces 7–11 together
                                 as this coupling
                                              |
                                              v
                                 HANDOFF: loci for A and B
                                 maps may claim
                                 history must not apply
```

## 1. Freeze

| Object | At execute |
|---|---|
| Run pin | `fbc4e5ad17569a781c03a9189edffcfaafb02240` |
| History | HELD Grok-evidence |
| Maps | FREE |
| ASCII blob vs Pass 2 | unchanged `2628df45` |
| Manifest | `ca8b7d7bc4a93eea81510693424d450d66c6851a` |
| Pointer draft | `6399a1680cb5f8327f093fc2425c944a47113c98` |

Tip moved after Pass 3 plan (`0bffe71` → `fbc4e5a`) on clipboards / clock-passes / plans / close-reading. Companion bytes did not move. Pass 2’s “underexpressed” still applies to this blob.

## 2. Search (read-only)

Looked for a passage that states *together*: definition as a route through ordinary stars, later reuse of those stars, and retained touch / later participation. Isolated hits on “dictionary”, “touch”, or “participate” were not counted as the join.

| Locus | Lines | What it is | Join? |
|---|---|---|---|
| Piece board rows 7–11 | 210–218 | Separate jobs: star, sequence, dictionary wiring, document feed, touch | Names the pieces. Does not compose them |
| Four interfaces | 221–227 | write / identity / participation / view | Participation as pointer-to-earlier. Not definition-route reuse |
| Diagnostic tells | 288–293 | “Definition string → collapse” | Forbid. Not the positive coupling |
| Graphic A panel list | 345–356 | A6–A9 document routes; A10 touches; A11 dictionary wiring | Adjacent labels. No “read together” sentence |
| Graphic B panel list | 358–371 | B4 dictionary; B7–B8 touch; B10 no stored definition | Same |
| Panel → Piece cross-walk | 390–408 | A6/A11 → Piece 9; B7–B8/A10/D6 → Piece 11 | Routing table. Not a coupling note |
| Participation mechanism | 442–451 | WORD/PTR participate; PTR→PTR | General participation. Not definition-route |
| Star mechanism | 453–464 | `view: star(V) = those passes` / `write: the WORD rows only` | Caption under test. No Piece 7 POINTER-chains clause |
| Dual presentation | 466–473 | route through star vs append+pointers | One operator. Still not Pieces 7–11 as this join |
| C-Mech-3 audit row | 767 | Star is view of WORD passes, not a row type | Confirms “no Star row.” Does not scope `only` vs Piece 7 threading |
| Later passes 7–25 | 544+ | Shadow shelves, quiet doors, order proposals | No closure of this presentation gap |

**Already exhibited?** No. A/B remain the smallest presentation response Pass 1 wrote.

No EXTRA third proposal. The star caption and the missing join-note are exactly A and B.

## 3. Proposal A — star caption (quoted, not applied)

**Where:** `docs/systems-manifest-ascii.md` § `## Star mechanism (pass 5)` lines **453–464**.

**Now:**

```
 variable V
   pass @ i
   pass @ j
   pass @ …
 view:  star(V) = those passes
 write: the WORD rows only
```

Star is not a row type. D4: 3D view is not stored in the array.

**Pass 1 replacement (still a proposal):**

> WORD rows retain distinct word occurrences. A star is not separately written as a row or object. The star view described by manifest Piece 7 includes those occurrences and their recorded threading POINTER participation. This caption does not decide when additional POINTER sections are appended.

**What A must preserve:** D4 (3D not stored); no Star table; distinct occurrences; Φ unanswered; C-Mech-3 “not a row type.”

**What A must not become:** an emit-when; a requirement that every later pass write a POINTER; a rewrite of Graphic D.

## 4. Proposal B — coupling note (quoted, not applied)

**Where:** beside the dictionary / star / participation neighborhood, one note, not a new piece.

Preferred neighborhood (maps picks one hole, not all of them):

| Neighbor | Lines | Why it is next door |
|---|---|---|
| Piece board 7–11 | 210–218 | The five names already sit in order |
| Graphic A A6–A11 list | 345–356 | Dictionary and touch are already adjacent labels |
| Participation panel | 442–451 | General participation already drawn |
| Star panel | 453–464 | Caption A would sit here; B can sit immediately after D4 sentence (line 464) or after the piece-board table (after 218) |

**Pass 1 replacement (still a proposal):**

> Definition text follows an ordered route through ordinary word-stars. Further definition text and later documents reuse those formations through distinct passages of the same Lace. Existing passages and recorded participation remain; new wire can thread that formation, and the resulting touch remains available for later participation. Read Pieces 7–11 and 15 together. This is the source-described coupling, not automatic definition expansion or a completed emission contract.

**What B must preserve:** Piece 9 route-not-gloss; Piece 11 can-participate (not must); Hands A6/A8/A10/B4/B8; draft unaccepted.

**What B must not become:** a dictionary engine; a traversal implementation; a family-type field on D; a Star table; holder-to-Core write.

## 5. Doors

| Door | Owner | After this execute |
|---|---|---|
| Evidence Q1–Q5 | history | Closed as of Pass 2. Companion blob did not refute the NARROW |
| Presentation A/B | maps | Handoff ready. Still `NOT_APPLIED` |
| Construction / Φ | human + `docs/pointer-emission.md` | Untouched |

History must not apply A/B. Maps may claim `docs/systems-manifest-ascii.md` and sit these two paragraphs against the live blob. A third independent reader is still absent and is not this file.

## 6. Refuse list (handoff must not be read as)

- Companion silence means Hands lack the relationship.
- Hands pictures mean the companion needs no caption.
- This file authorizes a history edit of the companion.
- A scoped star caption decides when a POINTER is written.
- Hits on the words “definition” or “touch” already exhibit the join.
- Pass 3 is recovery pass 8, quiet-door #5, or global ASCII Pass 26.

## 7. Execute receipt

**Performed:** `git pull --ff-only` (tip advanced to `fbc4e5a` on other stations; companion unchanged); `coord.sh refresh` + `check` history Grok-evidence; read-only search of `docs/systems-manifest-ascii.md`; this handoff; plan stamp; index.

**Not performed:** maps claim; companion edit; A/B apply; emission answers; Pass 4.

Shoe in hands. The pointer points at two captions. It does not write them.
