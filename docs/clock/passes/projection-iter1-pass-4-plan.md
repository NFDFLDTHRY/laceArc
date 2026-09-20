# Projection iteration 1 / pass 4 plan — install prompt + update law

**Status:** EXECUTED. Install + Update dock. PNG icon. Title i1p4. Emission `[GAP]`.  
**Station:** hologram  
**Install URL:** `https://raw.githack.com/NFDFLDTHRY/laceArc/main/docs/clock/lace-projection.html?i=1`

The page never asks to install because we never handle `beforeinstallprompt`.  
An installed app does not update itself unless we *check* and *activate* a new SW.

---

## Why there is no prompt

| Check | Today |
|---|---|
| https + SW | yes on githack |
| manifest linked | yes |
| capture `beforeinstallprompt` | **no** |
| in-page Install button | **no** |
| icon Chrome will accept | JPEG lookref — often **rejected** |
| already installed | prompt will not fire again |

Android Chrome: we must `preventDefault` on `beforeinstallprompt`, keep the event, show **Install**.  
iOS Safari: no event. HUD must say **Share → Add to Home Screen**.

---

## How the installed app updates

```
 open app
   → sw.js register + reg.update()
   → if waiting worker: show UPDATE (do not silent-loop reload)
   → user taps UPDATE → waiting.postMessage('skip') / skipWaiting
   → controllerchange → one reload
 HTML: network-first (already)
 Lookrefs: cache, fine
```

Law: a new commit is live when the HUD title changes (`i1p3` → `i1p4`).  
If title is old after UPDATE, githack CDN is stale — wait or open `?i=1&v=p4`.

---

## Tickets

### T1 — Install control

Listen `beforeinstallprompt`. Button `INSTALL` in the dock. Hidden until the event (Android) or always visible with iOS copy.

### T2 — Icon that can install

Add a small same-folder PNG (drawn, not a new brand — dark field + cyan mark). JPEG-only icons fail Chrome’s installability.

### T3 — Update control

Button `UPDATE`. `reg.update()`. If `reg.waiting`, activate + reload once. Stamp `PWA upd`.

### T4 — Title `i1p4`

Proof the phone got this pass.

### T5 — Sealed

No emitter. No npm. No third-party install SDK.

---

## Execution (when you say go pass 4)

HTML + SW message handler + PNG icon + manifest icon entry. STOP.

---

## Steward test

If there is still no Install affordance on Android Chrome, T1 failed.  
If UPDATE does not change the title after a real commit, T3 failed.
