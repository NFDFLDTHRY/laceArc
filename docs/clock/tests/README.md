# Projection runtime regression checks

First-party Layer III fixtures for [repository update pass 2](../../plans/repo-update-pass-2-plan.md), P2-09–P2-13. They execute the existing viewer, worker and service-worker sources with Node's built-in facilities. They are not Core, an emitter, a browser or a release gate.

## Run

From the repository root:

```sh
node --test docs/clock/tests/runtime-regressions.mjs
```

[runtime-regressions.mjs](runtime-regressions.mjs) reads the working-tree sources by default. To reproduce the defects using the same checks against the pre-repair revision, without checking out or modifying files:

```sh
LACE_SOURCE_REV=10fe4947c4450453e7aa1c256cdea294d6981e48 node --test docs/clock/tests/runtime-regressions.mjs
```

**Recorded synthetic result, 2026-09-20, Node v24.19.0:** the pre-repair sources pass 5 and fail 18 of 23 checks. Their unawaited rejected service-worker update also produces unhandled-rejection diagnostics. The repaired sources pass all 23. No network request is sent: DOM, GPU, worker transport, network and CacheStorage endpoints in the page fixture are controlled doubles. The geometry checks separately execute the actual worker and actual inline bake.

## What each result establishes

| Ticket | Actual source exercised and checked result | Limit |
|---|---|---|
| E1 | The page's submitted draw bindings read pass flags `0,0,1`, with matching transforms and retained floor/opaque/transparent pipeline roles | The fixture models queued writes at submission. It does not compile WGSL, run a GPU or inspect pixels |
| E2 | Both bakes retain the exact eleven-row D1 specimen, including WORD values and POINTER references; finite buffers, floor/material birth coverage and nonzero-area filaments for all eleven births | Worker sphere tessellation is 20, inline is 16. This deliberate retained difference is allowed; byte equality is not required. Geometry is not a rendered image |
| E3 | Actual submission failure and uncaptured-error handlers lead through reboot to a successful submission with REF off/on; forced fallback and stale error text clear while REF choice persists | DOM class/style state is checked. Computed CSS visibility, actual validation errors, device loss and image recovery remain browser observations |
| E4 | Exact release identity, app path and full SHA are required; provider failures and invalid pointers retain the pin; same/different pins and waiting-SW states behave separately; failed SW comparison cannot report fresh or activate. Pending installation reports its state, then waiting or failed; update-job completion alone is not freshness | Mocked selection/transport only. No pointer promotion or installed identity migration is tested |
| E5 | Dispatching activation retains unrelated-app, other-pin and existing development cache sentinels | No automatic cache deletion is performed. CacheStorage persistence and offline loading are unobserved |
| P2-09 | Holder doors declare the existing HUD pointer-access class | This structural check does not establish a successful pointer/touch hit or visible layout |

The original worker requested 22 filament triangles with zero area; inline requested none. Both repaired paths contain 22 nonzero-area triangles covering births 0–10. Total vertices are 5,592 in the worker and 3,864 inline, including six floor vertices in each. Cubes, bars and filaments remain display glyphs for the fixed specimen, not a schema or emission rule.

## Browser and device completion still pending

The execution environment has bundled Node Playwright, but its reported Chromium/Firefox/WebKit binaries were absent. A Chromium launch failed because its browser executable was missing. No usable browser was verified and no browser download or installation was attempted. This does not establish that browser testing is impossible elsewhere.

For a later authorized browser session, record the exact source revision, URL, browser version, GPU adapter/backend, viewport and device. A software GPU or emulated phone viewport is not a physical Android result.

1. Pause/scrub the actual viewer at `t=2` and `t=10`, record camera state, inspect material classes and filaments, and retain images plus validation-error results. `GPU ready` means setup; `GPU submitted` means commands were submitted. Neither certifies visible geometry.
2. Exercise failure and recovery with REF off/on, including actual device loss and validation failures where controllable. Inspect computed fallback visibility, recovered image and pointer/touch access to both Holder doors. Keep keyboard access in the check.
3. Exercise update selection without promoting a release. Record the selected full SHA, unavailable/malformed/mismatched-pointer behavior, current-pin comparison and waiting-SW outcome. Installed-client migration requires its own authorized device observation.
4. Report three distinct offline cases: first installation before any controlled page load; a warmed, controlled page; and worker/REF/linked-view availability. State the exact resources visited and cached before disconnecting. The development worker still precaches only two icons, leaves the first client uncontrolled and does not extend fetch lifetime for cache writes. Cache isolation is not cold-offline readiness or perpetual offline operation.

[LATEST.json](../LATEST.json), manifest identity, install scope and hosting policy are unchanged by these checks. A corrected working tree does not change the old pinned development URL. No Core, emission acceptance, deployment or installation follows from a passing fixture.
