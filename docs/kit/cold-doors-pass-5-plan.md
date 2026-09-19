# Cold doors — Pass 5 PLAN

**Status:** EXECUTED — pin table on `docs/kit/cold-doors.md`. Package door unchanged. Remainder queued.
**Station:** kit.
**Agent:** Grok-kit.
**Plan BASE:** `f6e54d4f40d7fd74472d902af3105d457a5d8ea5`.
**Emission:** `[GAP]`. No `src/`. Renderer stays paused. Seven Rust doors stay shut.

Pass 4 said stop. The human named pass 5. Remainder is not this pass.

```
pull/ff → claim kit
        → write this plan
        → STOP
execute (later, one authorized tick):
        → append one package-door pin table to docs/kit/cold-doors.md
        → check · commit · release · STOP
```

---

## 0. Question (one act)

**Do the package door's THEN and NOW pins still resolve on this tree, and do the NOW claims still hold at the execute tip — without retargeting those pins?**

Pins as written on [`READ_ME_FIRST.md`](READ_ME_FIRST.md):

| Label | SHA as written |
|---|---|
| THEN | `4fe984bb098d5ca21c9704234df4fddd53056efb` |
| NOW | `044257ceb95e78612d302a204a9438c72d06aa96` |

Not this pass: rewrite the door; move NOW; remainder table; R1 repair; renderer; Rust; emission fill.

---

## 1. On the list (read-only)

| Object | Why |
|---|---|
| `docs/kit/READ_ME_FIRST.md` | Package door. Claims live here. |
| THEN commit | Resolve. Door says emission was absent *at that pin*. |
| NOW commit | Resolve. Door says this was a re-read, not the tip. |
| `docs/pointer-emission.md` header at execute tip | NOW claim: DRAFT, not accepted. |
| `src/` at execute tip | NOW claim: absent. |
| `AGENTS.md` and `docs/law-why-these-documents.md` | Door routes here. |

---

## 2. Rows execute will fill (empty until proceed)

Do not score these in the plan tick.

**Pin fate**

| Label | Written SHA | Resolves? | Full SHA or UNREACHABLE |
|---|---|---|---|
| THEN | `4fe984bb098d5ca21c9704234df4fddd53056efb` | | |
| NOW | `044257ceb95e78612d302a204a9438c72d06aa96` | | |
| execute tip | (claim BASE) | yes | |

**Door claims** (quoted from the package door; hold / fail at execute tip)

| # | When | Claim | Hold? |
|---|---|---|---|
| 1 | THEN | At that pin `docs/pointer-emission.md` was absent. | |
| 2 | NOW | Routing still holds to live `AGENTS.md` and live law. | |
| 3 | NOW | [`docs/pointer-emission.md`](../pointer-emission.md) exists as DRAFT unanswered questions — not accepted. | |
| 4 | NOW | Emission remains `[GAP]`. No `src/`. | |

A resolved pin whose labeled reading still holds stays LIVE on the door. Execute does not retarget THEN or NOW.

---

## 3. What execute may write

Kit only.

- Append “Pass 5 — package-door pins” to [`docs/kit/cold-doors.md`](cold-doors.md) with the two tables filled.
- One README line to mark this plan EXECUTED.

---

## 4. What execute must not do

- Write the off-kit remainder table (queued).
- Rewrite `READ_ME_FIRST.md`, the audit, law, AGENTS, or transports.
- Treat tip-moved as a defect in NOW.
- Claim hologram, maps, or law.

---

## 5. Single execute act

When the human says proceed (not this tick):

1. Resolve THEN and NOW (`git cat-file` / `git log -1`).
2. If THEN resolves: confirm whether `docs/pointer-emission.md` is absent *in that tree* (`git cat-file -e THEN:docs/pointer-emission.md`).
3. At execute tip: DRAFT header on the emission file, no `src/`, live law and AGENTS still the named targets.
4. Fill the two tables. Mark `[GAP]` rather than guess.
5. Stop.

Success: every row in §2 has a fate; the package door bytes are unchanged. Failure: the door was rewritten, or the remainder table was written in this tick.

---

## Queued — next named pass, not this one

Off-kit remainder table: R1 law-station; renderer hologram PAUSED; Rust maps SHUT; emission `[GAP]`.

---

## 6. Governing check

```text
One pass, one act.
Planning names the rows. Execute fills them.
A NOW pin is a reading, not the tip.
Φ stays [GAP].
```
