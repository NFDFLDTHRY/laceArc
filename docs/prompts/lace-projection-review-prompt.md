# Lace projection — review prompt

**Classification, 2026-09-22: HISTORICAL / COMPLETED REVIEW TICKET.** The target brief now exists on the current repository path and later projection work supersedes the old branch-discovery problem. The raw branch URL and pass-1 findings below are provenance. Do not restart review from the old branch pin; begin any new review from the current brief and current Layer-III evidence.


**Purpose:** hand this to another agent so the fence in
[`docs/lace-projection-brief.md`](../plans/lace-projection-brief.md) gets attacked before
anything is built. It is an **attack** pass, not a build pass.

**Status:** pass 1 was run (Grok, against `origin/main` `b445a63`). Its first
finding was process, not content: the brief was on a branch and not on `main`,
so it could not be read at all. The gate page below now carries the branch and a
raw link, and §"Already found" tells a second reviewer what not to rediscover.

**The target file, in one line** (the ASCII box wraps it; this one does not):

```
https://raw.githubusercontent.com/NFDFLDTHRY/laceArc/claude/repository-setup-mdj1wo/docs/lace-projection-brief.md
```

---

## Already found — pass 1 (do not re-report these; attack what is left)

| # | Finding | Disposition in the brief |
|---|---|---|
| 1 | The brief was not at the reviewed tip — unreviewable | Gate page now carries branch + raw link |
| 2 | Timed playback re-smuggles emission even with no type-in | §2 *Timing is part of the fence*: all eleven rows at t=0 |
| 3 | A value-clustered star view can materialise a star table | P3 accept: *no object whose lifetime is "the star"* |
| 4 | The 2D graph teaches the anti-model if it is the pretty pane | P4 accept: the line is what loads; graph behind a named control |
| 5 | "Hand-authored rows the human accepts" reopens the emitter | §2: **P1 is D1 only**; any extra row needs a dated human sentence |
| 6 | P2 can pass while teaching that Lace *is* the table widget | P2 accept: POINTER rows visible + on-screen "not the store" |
| 7 | Any §3 view needing emission / arity / slot order / tokens | §3: every row marked `[ok from D1]` or `[cannot draw — omit]` |
| 8 | A second HTML file is a second store if treated as source | §6: first line declares *reads D1 / writes nothing* |
| 9 | All five phases can pass while the object is still wrong | §5 *Negative tests* — four, run at every phase |

One correction went the other way and is worth knowing before pass 2: the
shadow-that-cannot-write-back cite is **B11 / C11 / D4**. **B10** is the
definition-collapse panel. Both appear in the brief's §3, in different rows, on
purpose.

---

## The prompt

```
╔══════════════════════════════════════════════════════════════════════════╗
║  LACEARC  ·  ASCII PROMPT  ·  REVIEW THE LACE PROJECTION PLAN            ║
║  Repo:   https://github.com/NFDFLDTHRY/laceArc                           ║
║  Under review: docs/lace-projection-brief.md    [PROPOSAL]               ║
║  Role: ATTACK.  Not build.  Not rewrite.  No pixels exist yet.           ║
╚══════════════════════════════════════════════════════════════════════════╝

  A second agent wrote a plan for a Lace visualiser.
  Nothing has been built. Your job is to break the plan while it is cheap.

  YOU ARE     finding what the plan gets wrong, and saying so with a cite
  YOU ARE NOT building it, filling a [GAP], or rewriting the brief in place


                    ┌──────────── INPUTS (in order) ────────────┐
                    │ 1. shoe in hands (physical two-ended lace) │
                    │ 2. docs/graphics/  A B C D                 │
                    │ 3. docs/systems-manifest.md  (Layer III)   │
                    │ 4. docs/staking-the-workspace.md           │
                    │ 5. docs/pointer-emission.md   (the gate)   │
                    │ 6. docs/graphics-close-reading.md          │
                    │ 7. docs/lace-projection-brief.md  ← TARGET │
                    │ 8. docs/hologram/README.md                 │
                    └───────────────────┬───────────────────────┘
                                        │
                                        v
                          ATTACK  →  REPORT  →  STOP

────────────────────────────────────────────────────────────────────────────
PAGE A — GATE   (read this page before anything else)
────────────────────────────────────────────────────────────────────────────

  THE TARGET FILE MAY NOT BE ON main. Pass 1 was lost to exactly this.

     branch : claude/repository-setup-mdj1wo
     raw    : https://raw.githubusercontent.com/NFDFLDTHRY/laceArc/
              claude/repository-setup-mdj1wo/docs/lace-projection-brief.md

  [ ] fetch that branch, or fetch the raw URL; record the exact SHA you read
  [ ] if the file is absent at the tip you checked, say WHICH tip and fetch
      the branch before reporting absence as a finding
  [ ] read inputs 1-8 in that order
  [ ] confirm no visualiser exists yet (only shadow-clock-gearing.html)
  [ ] you are reviewing a PLAN. If you find yourself coding, stop.

  Fail any ⇒ say so and stop.

────────────────────────────────────────────────────────────────────────────
THE ONE DECISION UNDER REVIEW
────────────────────────────────────────────────────────────────────────────

  The brief's §2 fence says:

      "The view is driven by panel D1's eleven rows, as given data.
       There is no emitter."

  Everything else in the plan rests on that line holding.

        PERMITTED                        FORBIDDEN
        ---------                        ---------
   replay the eleven rows          type text -> rows appear
   show what the rows close        a generator deciding WHEN
   say where a row came from         a POINTER is written
                                   rows authored to taste

  Your first question is not "is this nice" but:
  CAN THE FENCE BE WALKED THROUGH WITHOUT NOTICING?

────────────────────────────────────────────────────────────────────────────
PAGE B — ATTACK LIST (try each; a miss is a finding)
────────────────────────────────────────────────────────────────────────────

  B1  ANIMATION = EMISSION?                      [pass 1: found, fenced]
      All eleven rows now exist at t=0 and a scrub must be labelled
      "replay of given rows — not emission" and be reversible. Is that
      fence complete, or can a caption still imply "therefore"?

  B2  DOES ANY MAPPED VIEW NEED A GAP?
      Walk all nine rows of the brief's §3 table. For each, name the
      panel and ask: can this be drawn without knowing emission,
      arity, slot order, or tokenisation? One that cannot is a breach.
      Every row must already carry [ok from D1] or [cannot draw].

  B3  THE 2D SHADOW                              [pass 1: found, fenced]
      The line loads by default; the shadow sits behind a control named
      "shadow — not the store". Does that hold, or is the shadow still
      the only memorable picture in the artifact?

  B4  STAR WITHOUT A STAR TABLE                  [pass 1: found, fenced]
      P3 now forbids "any object whose lifetime is the star". Is the
      negative test actually greppable, or can a star survive as a
      derived map rebuilt each frame?

  B5  ARE THE PHASE CHECKS ACTUALLY CHECKABLE?
      P1-P5 each claim an acceptance test plus four negative tests.
      Which could still pass while the thing is wrong? Name them.

  B6  SEPARATE FILE — RIGHT CALL?
      The plan refuses to put this inside the Shadow clock and makes
      each file declare "reads D1 / writes nothing" on line one. Argue
      the other side. Is a second artifact a second store of anything?

  B7  ELEVEN ROWS — ENOUGH? TOO FEW?
      A projection of eleven rows may mislead by smallness. The escape
      hatch is closed: extra rows need a dated human sentence carrying
      the emission draft's status language. Does smallness still lie?

  B8  DOES THE BRIEF ITSELF INVENT?
      It cites D4, Layer III, B11, C11, B10, Piece 7. Check each cite
      against the actual source. A wrong cite in a fence document is
      worse than a wrong pixel. One was already wrong. Assume another is.

  B9  DOES THE FENCE SURVIVE ITS OWN VERIFICATION?
      §6 requires pixels or data read back, never a status. Find a
      phase check that could report a pass without reading anything.

────────────────────────────────────────────────────────────────────────────
PAGE C — AREAS THE AUTHOR ALREADY SUSPECTS
────────────────────────────────────────────────────────────────────────────

  Start here. These are named by the author as probable weak points,
  which means they are either real holes or a decoy. Decide which.

   · the NOT-LACE panel — teaching aid, or a drawn falsehood
   · "projection of Graphic D — not the store" — a caption is weak law
   · §3's [ok from D1] marking — the author marks their own homework
   · the negative tests — three are greppable, one is not. Which, and
     what replaces it

────────────────────────────────────────────────────────────────────────────
PAGE D — STAMP EVERY FINDING
────────────────────────────────────────────────────────────────────────────

   [I]     kin-read of Core invariant
   [II]    kin-read of Arrival discipline
   [III]   projection / view — must not write back
   [H]     holder / steward only
   [X]     FORBIDDEN to cross into I/II/III as mechanism
   [GAP]   Hands silent — plan must not fill
   [CONFLICT]  sources disagree; keep both visible

────────────────────────────────────────────────────────────────────────────
PAGE E — REPORT FORMAT (one block per finding)
────────────────────────────────────────────────────────────────────────────

   FINDING: <one sentence>
   WHERE:   <brief section / line>
   HANDS CITE:  <graphic panel or manifest piece>
   STAMP:   I | II | III | H | X | GAP | CONFLICT
   SEVERITY: fence-breach | mislead | cosmetic
   EVIDENCE: <what you checked, not what you assume>
   PROPOSED: <smallest change; or "author decides">

   No finding without a cite. "Feels wrong" is INVALID — convert it to
   an OBS or an UNK, or drop it.

────────────────────────────────────────────────────────────────────────────
PAGE F — OUT OF SCOPE
────────────────────────────────────────────────────────────────────────────

   · writing any HTML, WGSL or data file
   · answering pointer-emission, arity, slot order, tokenisation
   · editing docs/lace-projection-brief.md in place  (propose instead)
   · restyling the Shadow clock
   · approving the plan — only the human accepts

────────────────────────────────────────────────────────────────────────────
PAGE X — CROSS-CUT
────────────────────────────────────────────────────────────────────────────

   temptation                  │ deadbolt
   ───────────────────────────┼──────────────────────────────────────
   "just let it take input"   │ that IS emission — [X] audit 5
   "animate the appends"      │ B1 — sequence may imply a rule
   "add a star index"         │ Piece 7 — a star is passes, not a row
   "merge with shadow clock"  │ cube becomes a WORD row
   "the demo needs more rows" │ who authored them, accepted by whom
   approve because it is tidy │ a fence is judged by what walks through

   PRODUCT: a findings list. No code. No approval.
   AFTER: STOP · post findings · commit only if the human asks

────────────────────────────────────────────────────────────────────────────
STEWARD TEST
────────────────────────────────────────────────────────────────────────────

   If you cannot do it to a shoe lace in your hands,
   you may not do it to laceArc.

   A projection shows the cord. It never decides where the next wrap goes.
   POINTER emission = [GAP]

╔══════════════════════════════════════════════════════════════════════════╗
║  END PROMPT — attack the fence, cite the Hands, build nothing            ║
╚══════════════════════════════════════════════════════════════════════════╝
```

---

## Why PAGE C names the author's own doubts

Handing a reviewer a clean bill of health wastes the pass — they spend it
rediscovering what the author already doubts. Pass 1 proved the format works:
the strongest finding it returned (timed playback re-smuggling emission) came
straight off that page.

The prompt forbids editing the brief in place. Two agents writing one file is the
predictable failure here; findings come back as proposals and the human decides.
