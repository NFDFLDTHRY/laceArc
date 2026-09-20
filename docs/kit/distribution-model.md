# Distribution model — development on githack, production on the business domain

**Status:** kit **amendment**, human-directed. Not Core. Not Hands. Emission `[GAP]`. No `src/`.
**Amends:** [`githack-pwa-deploy.md`](githack-pwa-deploy.md) by **scope**, not by contradiction: that law governs the development install path and stands unchanged for it. This file adds the production path. Where the two disagree on a sentence, this file is the later one and says so in §2.
**Source of the amendment:** the human, 2026-09-19 21:12 PT, in a session with the editor of iteration 7. His words are quoted in §1; nothing under §1 is his — it is the editor's reading, stamped `[INFERENCE]`, and he can strike any line of it. **This file becomes `SPOKEN` in the register's sense when the human commits it or says in-repo that §1 is his.**

---

## 1. What the human said (verbatim, this session)

> *"The most important detail is the target distribution model is a GitHub custom domain backed locked to a glacier I can update on a 3 month basis deliverable that must never once require an android 17 pixel 9a and family reconnect to the server after install. Expected execution environment model is an installed chrome WebApp on android 17. Githack is our development install or deployment for development purposes path before I link it to my business domain. I will link to my business domain only what I can prove under a show your work mathematical model that I can prove matches the rust nostd wasm64 compilation target plus what is required to leverage a combined heterogeneous compute model across wasm64, WebGPU, WebNN, and WebGPU shading language parallel / concurrent execution model optimized for execution across the intended deployment surfaces of githack / my custom domain."*

Grounding: `HUMAN_REPORTED`, this session. Human acceptance of *this file*: `ABSENT` until committed by him or affirmed in-repo.

---

## 2. The two surfaces

```
  DEVELOPMENT                                        PRODUCTION
  ───────────                                        ──────────
  host   rawcdn.githack.com                          host   the business custom domain, GitHub-Pages-backed
  pin    full commit SHA in the URL (unchanged law)   pin    a tagged release commit; the domain serves that tree
  cadence any commit                                  cadence "glacier": at most every ~3 months
  install Chrome → Install app (proven 2026-09-18)    install Chrome → Install app; then NEVER reconnects
  audience the human, agents                          audience Android 17 · Pixel 9a "and family"
  gate    the githack law                             gate    the show-your-work receipt (§5) — nothing moves
                                                             to the domain without it
```

**One sentence the old law has that this file re-scopes:** `githack-pwa-deploy.md` lists *"GitHub Pages / github.io as the install host"* under FORBID. That FORBID stands **for the development path** (a floating Pages site is not a pinned install). The production host is a Pages-backed custom domain serving a **tagged, pinned release**; it is allowed by this amendment and only under §5. `github.io` itself remains forbidden as an install host on both paths.

---

## 3. What the production constraint forces — `[INFERENCE]`, each with its premise

| Forced | Premise (the human's sentence) | What it means concretely |
|---|---|---|
| **Precache everything at install.** The service worker's precache list must name every byte the app will ever fetch: the shell HTML, the `.wasm`, the SW itself, the manifest, icons, any seed data, fonts. No lazy fetch, no CDN, no "load on first use" | *"must never once require … reconnect to the server after install"* | a **release manifest** (list of paths + hashes) generated at release time; the SW precaches it on `install` and serves only from cache. The check is **G5** ([pass 2 §5](../plans/lace-context-iter7-pass-2-compute-and-inventory.md)): airplane mode after install, zero network requests |
| **Updates are never required.** A new glacier release may be *offered* when the device happens to be online; the installed app must keep working on its current release forever if it never is | same | the SW's update check is opportunistic; a failed update is not an error; the old cache is never evicted by the SW on its own |
| **Persistence is no longer optional.** An app that never reconnects and forgets its strand on every open is not a deliverable | *"deliverable"* + the shape's carrier sheet | **R3 is pressed**: the volatile option (i) survives only as a *demo* mode; the shipped app needs the durable carrier (ii) or the human's (iii). Still the human's ruling — this file records that the amendment narrowed it |
| **Pages sets no custom headers.** A GitHub-Pages-backed domain cannot send `Cross-Origin-Opener-Policy` / `Cross-Origin-Embedder-Policy`; `crossOriginIsolated` is `false` from the server | the host the human named; A7 requested to cite the primary source | either **no threads** on the domain (copies only, as on githack), or the service worker synthesises the two headers on its own responses — the remedy the human recorded for the launcher on 2026-09-04. **R11**, and **P-COI** before anything is claimed |
| **The release is pinned on the domain too.** "Locked to a glacier" means the served tree at a release equals a tagged commit, hash for hash | *"locked to a glacier I can update on a 3 month basis"* | **G6**: hash the deployed files against the tag. A release that drifts from its tag is not a release |
| **Same origin, same app, forever.** The installed WebAPK is bound to the domain + scope; a change of domain is a new app with an empty strand | PWA identity rules (A6 requested) | the domain is chosen once. The manifest `id` for production is *not* the githack one; the two installs are two apps and share nothing |
| **The family, not the phone.** "Pixel 9a and family" is a population; a capability proven on one 9a with flags is not proven for the family | the human's V14 rule (device claims are test subjects) | the promotion receipt names the device and Chrome version each probe ran on; anything requiring flags or Advanced Protection off is a **dev-only** capability until shown on an unmodified device |

---

## 4. What the development path keeps

Everything in `githack-pwa-deploy.md`: `rawcdn.githack.com`, the 40-char SHA, the app path, `LATEST.json` naming the SHA, the proven tick, the FORBID list for that path. Iteration 6's pre-gate work (the shell hosting the D1 specimen, the probes) lands there first.

---

## 5. The promotion rule — prepared for the human (iteration 7 pass 5 formalises it)

Nothing moves from githack to the domain unless a **promotion receipt** exists on the tree carrying, with hashes:

| # | Shown | Mechanical? |
|---|---|---|
| G1 | zero crates outside the repo (`Cargo.lock` path-only; pinned nightly + `rust-src` hash) | yes |
| G2 | the `.wasm` **import section is empty** | yes |
| G3 | the export section is exactly the allowed set | yes |
| G4 | the D1 witness replays byte-identically through the built module | yes |
| G5 | offline forever: airplane-mode exercise, zero requests | yes, on device |
| G6 | deployed hashes = tagged commit | yes |
| G7 | the accepted σ is the built σ | **human** |

Plus the device probes named by iteration 6 pass 2 §4 and pass 2 §6 of iteration 7 (P-64a/b/c, P-CAR, P-INST, **P-COI**), each with SHA-hashed evidence and the device/Chrome version.

**This is the "show your work mathematical model."** Six of its seven lines are checkable on the artefact without trusting any agent's word, and the seventh is the human's alone.

---

## 6. What this file does not do

It does not change `githack-pwa-deploy.md`'s text (a one-line pointer to this file is added there). It does not choose the domain, the release tooling, the SW implementation, or the carrier. It does not lift the gate: there is nothing to promote until Core exists, and Core does not exist until R7.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A lace you hand someone must not need you again to stay tied. Emission remains `[GAP]`.
