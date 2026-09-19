# Cold doors — Pass 4 PLAN

**Status:** PLAN only. Not run.
**Station:** kit.
**Agent:** Grok-kit.
**Plan BASE:** `dbeaa8841f9952047e6e94fcdf1476e287055fd1`.
**Emission:** `[GAP]`. No `src/`. Renderer stays paused. Seven Rust doors stay shut.

Pass 3 said stop. The human named pass 4.

```
pull/ff → claim kit
        → write this plan
        → STOP
execute (later, one authorized tick):
        → append one R1-file table to docs/kit/cold-doors.md
        → check · commit · release · STOP
```

---

## 0. Question

**How do the other R1-named law-bearing files sit against the live-law fence that pass 3 already proved identical in the two kit transports?**

Pass 3 closed the transport-fence question: the two copies match the fence byte-for-byte; pin `e21cf39` does not resolve; the existence/acceptance pair lives in the live-law header.

Pass 4 finishes the *inventory* of the size split. It does not close the split.

---

## 1. On the list (read-only)

| File | Why it is on this pass |
|---|---|
| `docs/law-why-these-documents.md` | Live law. Already the pass-3 source. Re-cite, do not re-diff the fence. |
| `docs/staking-the-workspace.md` | Named in R1. Original stake. Unfenced. Law owns the file. |
| `AGENTS.md` | Named by the live-law header as the A6 correction site for the same existence/acceptance drift. Law owns the file. |
| The two kit transports | Already inventoried. Do not re-walk the fence. |

Not on the list: `CONTRIBUTING.md`, root `README.md`, renderer, emission, maps, clipboards.

---

## 2. What execute may write

Kit only.

- Append “Pass 4 — R1 file sit” to [`docs/kit/cold-doors.md`](cold-doors.md).
- One row per file above: stamp (LIVE / ORIGINAL / DATED / POINTER), whether it carries the fence, whether it carries the header pair, byte size at execute BASE.
- One README line to mark the plan EXECUTED after the tick. No retarget of `e21cf39`. No size-equalizing rewrite.

---

## 3. What execute must not do

- Edit live law, the original stake, `AGENTS.md`, or either transport copy.
- Treat “staking is shorter” as a defect to fill from live law (the original stake is frozen).
- Treat “AGENTS was corrected at A6” as license to correct it again.
- Close R1. Repair remains a **law-station** pass if the human names that.
- Unpause the renderer. Open Rust doors.

---

## 4. Single execute act

When the human says proceed:

1. Record byte sizes at execute BASE.
2. Read `docs/staking-the-workspace.md` header + body vs the live-law fence (present / unfenced / shorter).
3. Read `AGENTS.md` for the existence sentence, the acceptance sentence, and whether it points at live law.
4. Write the sit table. Mark `[GAP]` rather than guess a missing pin.
5. Stop. No pass 5.

Success: four (plus AGENTS) rows named without any of those files changing. Failure: a law file or a transport copy was rewritten.

---

## 5. Governing check

```text
An inventory of four sizes is not a repair of four sizes.
Original stake is not a stale copy of live law.
Φ stays [GAP].
```
