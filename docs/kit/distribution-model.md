# Distribution model — development on githack, production on the business domain

**Status:** proposed kit scope amendment based on a recorded human request. Acceptance of the inferred production-host exception is **UNESTABLISHED**. Not Core. Not Hands. Emission `[GAP]`. No `src/`.
**Scope conflict:** [`githack-pwa-deploy.md`](githack-pwa-deploy.md) and AGENTS.md forbid Pages as an install host. This document proposes a production exception; it does not establish that the exception was accepted or that a later commit overrides those instructions. The existing githack development path remains distinct from the proposed production path.
**Source:** the quotation in §1 is attributed to the human, 2026-09-19 21:12 PT, in a session with the editor of iteration 7. Claims beyond that quotation are the editor's interpretations, not additional human statements. Commit arrival establishes that this document was recorded; acceptance requires an identifiable human statement and its exact scope.

**Reconciliation, 2026-09-20 at `0b2012b`:** the earlier version called itself an effective amendment and allowed production Pages while also recording acceptance as absent. That conflict is retained here explicitly rather than resolved by choosing a host. See [pass 1 U03](../plans/repo-update-pass-1-evidence.md). The recorded quotation and prior proposal remain available; approval of documentation repair does not accept the hosting exception.

---

## 1. What the human said (verbatim, this session)

> *"The most important detail is the target distribution model is a GitHub custom domain backed locked to a glacier I can update on a 3 month basis deliverable that must never once require an android 17 pixel 9a and family reconnect to the server after install. Expected execution environment model is an installed chrome WebApp on android 17. Githack is our development install or deployment for development purposes path before I link it to my business domain. I will link to my business domain only what I can prove under a show your work mathematical model that I can prove matches the rust nostd wasm64 compilation target plus what is required to leverage a combined heterogeneous compute model across wasm64, WebGPU, WebNN, and WebGPU shading language parallel / concurrent execution model optimized for execution across the intended deployment surfaces of githack / my custom domain."*

Grounding: `HUMAN_REPORTED` by the original session editor. The original receipt recorded human acceptance of *this file* as `ABSENT`. No exact acceptance of its inferred hosting exception is established by this reconciliation. Its commit or merge is not acceptance evidence by itself.

---

## 2. Existing development path and proposed production surface

```
  DEVELOPMENT                                        PROPOSED PRODUCTION
  ───────────                                        ──────────
  host   rawcdn.githack.com                          host   the business custom domain, GitHub-Pages-backed
  pin    full commit SHA in the URL (unchanged law)   pin    a tagged release commit; the domain serves that tree
  cadence any commit                                  cadence "glacier": at most every ~3 months
  install Chrome → Install app (dated 2026-09-18)     goal   works without reconnecting after install
  audience the human, agents                          audience Android 17 · Pixel 9a "and family"
  gate    the githack law                             status host exception unresolved; §5 is proposed
```

**Unresolved proposed exception:** `githack-pwa-deploy.md` lists *"GitHub Pages / github.io as the install host"* under FORBID. The earlier editor proposed limiting that prohibition to development and allowing a Pages-backed business domain serving a tagged release. The quoted human request names a GitHub-backed custom domain; the Pages-specific exception and its release conditions are the editor's interpretation. Until the exact acceptance and scope are established, this file supplies no permission to deploy there. The original prohibitions are not silently re-scoped.

---

## 3. Proposed consequences of the production goal — `[INFERENCE]`

These are proposals to assess against the recorded goal, not implemented behavior or accepted host, carrier, service-worker, or identity decisions. Technical premises whose cited source is still requested remain unverified here. The current development surface is not evidence that these production properties hold.

| Proposed consequence | Premise cited by the earlier editor | Proposed implementation / remaining evidence |
|---|---|---|
| **Precache everything at install.** The service worker's precache list must name every byte the app will ever fetch: the shell HTML, the `.wasm`, the SW itself, the manifest, icons, any seed data, fonts. No lazy fetch, no CDN, no "load on first use" | *"must never once require … reconnect to the server after install"* | a **release manifest** (list of paths + hashes) generated at release time; the SW precaches it on `install` and serves only from cache. The check is **G5** ([pass 2 §5](../plans/lace-context-iter7-pass-2-compute-and-inventory.md)): airplane mode after install, zero network requests |
| **Updates are never required.** A new glacier release may be *offered* when the device happens to be online; the installed app must keep working on its current release forever if it never is | same | the SW's update check is opportunistic; a failed update is not an error; the old cache is never evicted by the SW on its own |
| **Persistence is needed for the proposed durable deliverable.** An app that forgets its strand on every open would not satisfy that reading | *"deliverable"* + the shape's carrier sheet | **R3 remains open**: this interpretation would limit the volatile option to a demo. It does not choose or accept a carrier |
| **Pages sets no custom headers.** A GitHub-Pages-backed domain cannot send `Cross-Origin-Opener-Policy` / `Cross-Origin-Embedder-Policy`; `crossOriginIsolated` is `false` from the server | the host the human named; A7 requested to cite the primary source | either **no threads** on the domain (copies only, as on githack), or the service worker synthesises the two headers on its own responses — the remedy the human recorded for the launcher on 2026-09-04. **R11**, and **P-COI** before anything is claimed |
| **The release is pinned on the domain too.** "Locked to a glacier" means the served tree at a release equals a tagged commit, hash for hash | *"locked to a glacier I can update on a 3 month basis"* | **G6**: hash the deployed files against the tag. A release that drifts from its tag is not a release |
| **Same origin, same app, forever.** The installed WebAPK is bound to the domain + scope; a change of domain is a new app with an empty strand | PWA identity rules (A6 requested) | the domain is chosen once. The manifest `id` for production is *not* the githack one; the two installs are two apps and share nothing |
| **The family, not the phone.** "Pixel 9a and family" is a population; a capability proven on one 9a with flags is not proven for the family | the human's V14 rule (device claims are test subjects) | the promotion receipt names the device and Chrome version each probe ran on; anything requiring flags or Advanced Protection off is a **dev-only** capability until shown on an unmodified device |

---

## 4. What the development path keeps

Everything in `githack-pwa-deploy.md`: `rawcdn.githack.com`, the 40-char SHA, the app path, `LATEST.json` naming the SHA, the proven tick, the FORBID list for that path. Iteration 6's pre-gate work (the shell hosting the D1 specimen, the probes) lands there first.

---

## 5. Proposed promotion checks — prepared for the human

The earlier editor proposed a **promotion receipt** carrying the following checks, with hashes. These checks do not grant a hosting exception or accept any implementation. Their domains and sufficiency remain to be reviewed:

| # | Shown | Mechanical? |
|---|---|---|
| G1 | zero crates outside the repo (`Cargo.lock` path-only; pinned nightly + `rust-src` hash) | yes |
| G2 | the `.wasm` **import section is empty** | yes |
| G3 | the export section is exactly the allowed set | yes |
| G4 | the D1 witness replays byte-identically through the built module | yes |
| G5 | finite offline exercise: duration, device/browser, cached resources and network observations recorded | bounded device observation; does not prove “offline forever” |
| G6 | deployed hashes = tagged commit | yes |
| G7 | the accepted σ is the built σ | **human** |

Plus the device probes named by iteration 6 pass 2 §4 and pass 2 §6 of iteration 7 (P-64a/b/c, P-CAR, P-INST, **P-COI**), each with SHA-hashed evidence and the device/Chrome version.

This is a proposed evidence checklist for the requested deliverable. Artifact inspection, device observations, mathematical proof, and human acceptance remain different evidence. In particular, a finite G5 exercise cannot establish perpetual offline availability, and no checklist completion accepts the hosting exception by itself.

---

## 6. What this file does not do

It records the production proposal and the unresolved conflict with the current install policy. It does not choose or authorize the host, domain, release tooling, service-worker implementation, or carrier. It does not establish production behavior from the development viewer, lift the Core gate, or accept R7. No deployment or device test is performed by this documentation reconciliation.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A lace you hand someone must not need you again to stay tied. Emission remains `[GAP]`.
