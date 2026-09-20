# Projection runtime regression checks

First-party Layer III fixtures for [repository update pass 2](../../plans/repo-update-pass-2-plan.md), P2-09–P2-13; [pass 3](../../plans/repo-update-pass-3-plan.md), P3-04/05/08; and [pass 4](../../plans/repo-update-pass-4-plan.md), P4-01–P4-04. They execute the existing viewer, worker and service-worker sources with Node's built-in facilities. They are not Core, an emitter, a browser or a release gate.

## Run

From the repository root:

```sh
node --test docs/clock/tests/runtime-regressions.mjs
```

[runtime-regressions.mjs](runtime-regressions.mjs) reads the working-tree sources by default. To reproduce pass 4's defects using the same expanded checks against its pre-repair revision, without checking out or modifying files:

```sh
LACE_SOURCE_REV=335429cc0352c2e93c8009c6db57dd977ec783bb node --test docs/clock/tests/runtime-regressions.mjs
```

**Pass 4 synthetic result, 2026-09-20, Node v24.19.0:** the expanded fixture passes 51 and fails 23 of 74 checks against `335429c`; all original 51 checks pass there. The locally repaired sources pass all 74 with no failed, cancelled or skipped cases and no unhandled-rejection diagnostics. No network request is sent: DOM, GPU, worker transport, network and CacheStorage endpoints are controlled doubles. The geometry checks separately execute the actual worker and actual inline bake; the new release checks couple the actual page fetch to the actual SW fetch listener.

**Historical pass 3 result:** its 51-case fixture passed 24 and failed 27 against `e14b13c08fbfe6c280e9f0460d383a6be4479865`; the repaired source passed all 51 and was published at `335429c`. Those dated results remain distinct from pass 4's expanded coverage.

**Historical pass 2 result:** its 23-case fixture passed 5 and failed 18 against `10fe4947c4450453e7aa1c256cdea294d6981e48`, including unhandled-rejection diagnostics from the old service-worker update. Its repaired sources passed all 23; those repairs were published in pass 2 at `e14b13c`. These dated counts describe that fixture version, not the expanded pass 3 suite.

## What each result establishes

| Ticket | Actual source exercised and checked result | Limit |
|---|---|---|
| E1 | The page's submitted draw bindings read pass flags `0,0,1`, with matching transforms and retained floor/opaque/transparent pipeline roles | The fixture models queued writes at submission. It does not compile WGSL, run a GPU or inspect pixels |
| E2 | Both bakes retain the exact eleven-row D1 specimen, including WORD values and POINTER references; finite buffers, floor/material birth coverage and nonzero-area filaments for all eleven births | Worker sphere tessellation is 20, inline is 16. This deliberate retained difference is allowed; byte equality is not required. Geometry is not a rendered image |
| E3 | Actual submission failure and uncaptured-error handlers lead through reboot to a successful submission with REF off/on; forced fallback and stale error text clear while REF choice persists | DOM class/style state is checked. Computed CSS visibility, actual validation errors, device loss and image recovery remain browser observations |
| E4 | Exact release identity, app path and full SHA are required; provider failures and invalid pointers retain the pin; same/different pins and waiting-SW states behave separately; failed SW comparison cannot report fresh or activate. Pending installation reports its state, then waiting or failed; update-job completion alone is not freshness | Mocked selection/transport only. No pointer promotion or installed identity migration is tested |
| E5 | Dispatching activation retains unrelated-app, other-pin and existing development cache sentinels | No automatic cache deletion is performed. CacheStorage persistence and offline loading are unobserved |
| P2-09 | Holder doors declare the existing HUD pointer-access class | This structural check does not establish a successful pointer/touch hit or visible layout |
| P3-05 | Actual worker-client callbacks reject null/malformed buffers and inconsistent shapes, settle once and terminate/clear timers on success, error, timeout and synchronous transport failure; late delivery cannot settle again. Malformed direct workers continue through blob/inline fallback | The worker event boundary is a double. Geometry and D1 are unchanged in pass 3 |
| P3-04 | Actual bake colors and shader predicate/branch order classify cyan filaments separately from green plasma spheres | Shader comparisons are evaluated from source; WGSL compilation, discard coverage and pixels remain unobserved |
| P3-08 | Update selects the release even without the SW API or after registration rejects; a same pin reports SW unavailability. Audit checks HTTP success plus a parsed JSON object, marks icons unverified, and labels API presence as a snapshot. WebNN context success is labeled `WebNN context ready` | A parsed object is not manifest-schema validation or an icon load/decode/size check. API presence, a context and an existing button are not execution, installability or inference evidence |
| P3-08 | Actual fallback-source and release-provider requests include body reads in their deadlines; stalled fetch/body doubles abort and settle, late completions cannot change the result, and release retry/fallback remains possible without moving to an unpromoted tip | Timers are advanced explicitly in Node. This checks control flow, not wall-clock latency, actual cancellation or network reliability |
| P4-01 | Actual lifecycle listeners recover through repeated quick hide/show cycles even after watchdog use; visibility/pagehide/freeze cancel startup RAF and invalidate suspended boot attempts. Late adapter/device and bake completions cannot revive obsolete work or replace a newer session; unowned devices are disposed and stale watchdog callbacks cannot restart a suspended viewer | Timers, lifecycle delivery and GPU acquisition are controlled doubles. Resource ownership and scheduled callbacks are checked; actual browser suspension, GPU disposal and pixels remain unobserved |
| P4-02 | Actual page→SW dispatch bypasses stale CacheStorage for same-origin no-store requests. A newer network pointer is selected; an unavailable network retains the pin and reports failure. Cache sentinels are preserved, with no cache reads/writes in this path | No real service-worker registration, network, cache persistence or installed migration is exercised. Other development cache policy remains unchanged |
| P4-03 | Manual scrub updates phase and lookref without GPU submission. Playback is explicitly unavailable during fallback; play intent survives, but failed submission retries do not advance time. Successful submission restores the appropriate control, and recovery retains one frame loop | `playing` records user intent, not proof of active playback. Manual scrub changes that intent to paused. This uses the existing GPU frame loop; no independent fallback animation is introduced |
| P4-04 | Prompt rejection settles the handler; each install event is consumed once despite repeated clicks. Accepted/dismissed choice and a new event arriving during the old prompt/choice are exercised; old success/failure preserves the newer event | Event doubles do not demonstrate installability or installation. The rejection fixture prehandles its rejection so the old source fails a local settlement assertion rather than adding runner-global noise |

The original worker requested 22 filament triangles with zero area; inline requested none. Both repaired paths contain 22 nonzero-area triangles covering births 0–10. Total vertices are 5,592 in the worker and 3,864 inline, including six floor vertices in each. Cubes, bars and filaments remain display glyphs for the fixed specimen, not a schema or emission rule.

**Transport budget:** each worker attempt retains its existing 2500 ms deadline. The secondary worker-source fetch now uses the same 2500 ms budget, including `text()`; each of the three release-pointer providers uses 2500 ms including `json()`. This reuses the viewer's bounded wait for small source/pointer transfers and keeps three stalled release attempts to a nominal 7.5 seconds in an active event loop. Browser suspension, scheduling and synchronous decoding can delay timers; this is not a real-time guarantee. A slow connection may exhaust the budget: the current pin stays put, no freshness is claimed, and Update can be retried. Abort is requested, and already settled requests consume late success/rejection without reversing their outcome. No new service-worker install-completion deadline or offline guarantee follows.

## Browser and device completion still pending

The fresh pass 3 preflight found no callable browser tool or browser on PATH. Bundled Node Playwright was present, but its reported Chromium/Firefox/WebKit binaries were absent; an actual Chromium launch failed because its executable was missing. No usable browser was verified and no browser download or installation was attempted. Browser, GPU, pointer/touch, device and offline results remain NOT_RUN. This does not establish that browser testing is impossible elsewhere.

For a later authorized browser session, record the exact source revision, URL, browser version, GPU adapter/backend, viewport and device. A software GPU or emulated phone viewport is not a physical Android result.

1. Pause/scrub the actual viewer at `t=2` and `t=10`, record camera state, inspect material classes and filaments, and retain images plus validation-error results. `GPU ready` means setup; `GPU submitted` means commands were submitted. Neither certifies visible geometry.
2. Exercise failure and recovery with REF off/on, including actual device loss and validation failures where controllable. Inspect computed fallback visibility, recovered image and pointer/touch access to both Holder doors. Keep keyboard access in the check.
   Repeat quick hide/show and pagehide/freeze/resume transitions, including suspension during acquisition where controllable. Check paused/unavailable playback, manual scrub and recovery without a time jump or duplicated frame loop.
3. Exercise update selection without promoting a release. Record the selected full SHA, unavailable/malformed/mismatched-pointer behavior, stalled/late fetch and body behavior, current-pin comparison and waiting-SW outcome. Check absent/rejected SW registration and the displayed audit/WebNN evidence strength. Installed-client migration requires its own authorized device observation.
   Include a warmed stale third-provider pointer with the first two providers unavailable; no-store must reach the network or report failure. Observe install-prompt rejection/repeated-click behavior separately from installation success.
4. Report three distinct offline cases: first installation before any controlled page load; a warmed, controlled page; and worker/REF/linked-view availability. State the exact resources visited and cached before disconnecting. The development worker still precaches only two icons, leaves the first client uncontrolled and does not extend fetch lifetime for cache writes. Cache isolation is not cold-offline readiness or perpetual offline operation.

[LATEST.json](../LATEST.json), manifest identity, install scope and hosting policy are unchanged by these checks. A corrected working tree does not change the old pinned development URL. No Core, emission acceptance, deployment or installation follows from a passing fixture.
