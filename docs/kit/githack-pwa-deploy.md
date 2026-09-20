# GitHack PWA deploy — repo policy and template

**Status:** LAW for Layer III HTML. Not Core. Emission `[GAP]`.  
**Proven:** Chrome Android Install sheet + standalone WebAPK for LaceArc Layer III, 2026-09-18T18:07, host `rawcdn.githack.com`.  
**Kin:** StrawDummy `Screechrac` spatial-v1-1.

This is the install / Add-to-Home-Screen path required by current AGENTS.md and used for Layer III development. The production-host proposal has an unresolved acceptance and scope conflict, recorded below; this page does not establish a new exception.

```
╔══════════════════════════════════════════════════════════════════════════╗
║  LACEARC  ·  DEPLOY POLICY  ·  GITHACK PWA                               ║
║  Host: rawcdn.githack.com   Pin: FULL COMMIT SHA   File: the app HTML    ║
╚══════════════════════════════════════════════════════════════════════════╝

  GitHub repo  NFDFLDTHRY/<REPO>
         │
         │  full commit SHA  (40 hex). Never a branch name.
         v
  rawcdn.githack.com
         │
         v
  /<OWNER>/<REPO>/<FULL_COMMIT_SHA>/<APP_PATH>/<FILE>.html
         │
         v
  Chrome  →  Install app / Add to Home Screen
         │
         v
  installed WebApp owns manifest + service worker + storage
  at THAT exact origin + path.


  TEMPLATE

    https://rawcdn.githack.com/NFDFLDTHRY/<REPO>/<FULL_COMMIT_SHA>/<APP_PATH>/<FILE>.html


  THIS REPO  (laceArc)

    https://rawcdn.githack.com/NFDFLDTHRY/laceArc/<FULL_COMMIT_SHA>/docs/clock/lace-projection.html

    App file is lace-projection.html, not index.html.
    Proven tick: b7ee8a10bc4fa170b09557797f63aca1428c4e67


  KIN  (StrawDummy — do not import its runtime)

    https://rawcdn.githack.com/NFDFLDTHRY/Screechrac/022c44bcfdaeb3b2754a92cba917256b98f30675/strawdummy/spatial-v1-1/index.html


  ALLOW
    rawcdn.githack.com + 40-char SHA + path to the HTML
    relative manifest / sw.js / icons beside that HTML
    stable manifest id  https://github.com/NFDFLDTHRY/laceArc/lace-iii
    pointer file        docs/clock/LATEST.json on main (names the SHA)
    new commit ⇒ new SHA URL; Update replaces the same id (not a new icon)

  FORBID
    raw.githack.com as the install host
    floating `main` / branch names in an install URL
    GitHub Pages / github.io as the install host
    SHA-less CDN, htmlpreview, file://
    treating SW Update as a ride onto `main`
    npm / CDN libraries / Three.js as the page

  PREVIEW (look only — do not install)
    https://raw.githack.com/NFDFLDTHRY/laceArc/main/docs/clock/lace-projection.html


  STEWARD TEST
    shoe lace in hands, or no.
    If Chrome's sheet names rawcdn.githack.com and Install is live, the path is the template.
    If the sheet says "cannot be installed", you are on the wrong host or a floating ref.

╔══════════════════════════════════════════════════════════════════════════╗
║  END POLICY — pin the SHA, then install, then stop                       ║
╚══════════════════════════════════════════════════════════════════════════╝
```

**Production proposal and unresolved scope, re-read 2026-09-20:** [`distribution-model.md`](distribution-model.md) records a human-attributed production goal and the editor's proposed Pages-backed exception. The former footer here called that amendment effective while the proposal recorded acceptance as absent and AGENTS.md retained its Pages prohibition. That conflict is not settled by commit order. This page grants no production-host exception; exact acceptance and scope remain to be established. See [pass 1 U03](../plans/repo-update-pass-1-evidence.md).

The install observation above is dated evidence for the named development revision. It is not a test of every later revision, update migration, the proposed production carrier, or perpetual offline operation. This documentation pass changes no viewer, manifest, service worker, or release pointer and performs no new install/device test.

POINTER emission stays `[GAP]`. No `src/`.
