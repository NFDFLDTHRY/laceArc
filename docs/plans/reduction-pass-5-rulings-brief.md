# The reduction — pass 5: the rulings brief

**Status:** brief, prepared by the agent, **nothing taken.** **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Plan:** [reduction-pass-5-plan.md](reduction-pass-5-plan.md). One page: everything only the human can rule, attach, run or accept, ordered by what each unblocks. Each becomes `SPOKEN` when written in-repo; each sheet that cites it is then revised.

| # | Item | Question | Options | Unblocks | Lands in |
|---|---|---|---|---|---|
| 1 | **R1** trust boundary | Is `rustc` + `rust-src` (`core`, `compiler_builtins`) on a pinned nightly inside "zero external dependencies"? | yes as the stated trust row / no | **every build** (Tier 3 ships no `core`) | sheet T |
| 2 | **R2** target | Reaffirm `wasm64` with the cost table in view, or dual-target for probes? | reaffirm / dual for probes / re-rule | sheet T, R6 | wasm-spec-3 banner stands or is amended |
| 3 | **A1** attach | **DONE 22:54 PT** — the rustc book attached as text; [shelf 10](../clipboards/rust-target-clipboard.md) pass 1 executed; T1–T4 now SOURCE; four new sourced facts | — | R1 has its evidence | clipboards |
| 4 | **R6** encoding | fixed `k = 2` (takes Q2) or per-row `k` (variable-length, which the card declined)? index width? slot order (#9)? | see sheet E | **birth #1** (`strand/` cannot exist without bytes) | sheet E; `pointer/` card |
| 5 | **R4** capacity | `region/` birth #0 growing by `memory.grow`, or fixed capacity + refusal? **Who holds a refused arrival?** | (a) / (b); custody: shell keeps / drops and says / other | sheet R; REFUSE; `strand/` resources | branch order |
| 6 | **R3** carrier | Where does `L` live across a reload? *(pressed by the amendment: volatile = demo only)* | volatile / durable log written by the shell / other | PERSIST, OPEN; the deliverable | sheet C |
| 7 | **R5** host trust | Accept "the shell never writes the strand range" as a stated trust row (wasm cannot enforce it), or require a copy ABI? | trust row / copy ABI | sheet H | sheet H |
| 8 | **R9** frontier | May readers read `[0, f)` concurrently with the one writer on append-only alone? Memory order? | yes / yes + proof obligation / no | PROJECT concurrency; workers | compute model §3 |
| 9 | **R11** isolation | Is SW-synthesised COOP/COEP acceptable on the domain (Pages sets no headers)? | yes after P-COI / no — copies only | threads; shared reads | amendment §3 |
| 10 | **#14** Piece 13 vs staking | "disposable views (graph DB, embedding space)" vs *FORBID embedding store* — which reading? | view / store | **R10** (WebNN in or out) | manifest (law) |
| 11 | **R10** WebNN | Is a never-persisted, recomputed-from-`L` NN layout a view? | view → admitted under `view_*` proof shape / store → absent | the fourth technology | compute model §2.4 |
| 12 | **#15** seed corpus | Is a seed corpus shipped; which; under what identity rule (G1)? | none / a named corpus + rule | Piece 9 offline; the release manifest | amendment §3; sheet S |
| 13 | **#13** SPOKEN custody | The four `SPOKEN (campaign)` stamps on Q0/Q1/Q5/slot II have no speak-sheet source and no memory corroboration | re-stamp as `[PROPOSAL]` / affirm in your words / strike | the emission file's honesty | `pointer-emission.md` (law) |
| 14 | **R7** — the gate | A σ that passes E6, accepted in-repo in words | — | **births 1–7** | `pointer-emission.md` |
| 15 | amendment §1 | Is [distribution-model.md](../kit/distribution-model.md) §1 yours? | yes / edit | the production path | one line in-repo |
| 16 | the door | Create `docs/shape/` (or name the shelf) with an `OWNS` line? | yes / no — keep the draft in plans | the reduction's product | coord `stations/` |
| 17 | **F1** trailer | Add "every commit carries an actor trailer" to `CONTRIBUTING.md`? | yes / no | attribution | law |
| 18 | **F2** duration | Add a declared claim duration to `coord.sh`; `doctor` lists overdue? | yes / no | stale holds | coord (code) |
| 19 | **F3** allow-list | Lock `law.station` to you + one named editor? | yes / no; who | the gate's custody | coord · law |
| 20 | **F6** push | Add this repo to the cloud session's sources, or land bundles each sitting? | either | claims visible on origin | account |
| 21 | **R8** roles | Confirm the role cards; name the designated editor for the first pre-gate task (probes) | — | [roles.md](../kit/roles.md) | kit |
| 22 | **Probes** | Run P-64a · **P-64b** · P-64c · P-CAR · P-INST · P-COI on the 9a; SHA the evidence | — | sheets T, R, C; R2, R3, R11 | pass 2 findings §4 |
| 23 | **Queue** after A1 | A2 → A3 → A4 → A7 → A8 → A9 → A5 (if durable) → A6, one per reply | — | clipboards | prompts → clipboards |

**Order that unblocks the most first:** 1 → 3 → 4 → 5 → 6 → 14. Items 10–13 and 16–21 can be taken in any order. Nothing here is taken by the agent.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Twenty-three things only the owner of the lace can say. Emission remains `[GAP]`.
