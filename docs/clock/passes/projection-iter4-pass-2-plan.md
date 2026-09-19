# Projection iteration 4 / pass 2 plan — one icon, Update replaces

**Status:** EXECUTED. Emission `[GAP]`. Title `i4p2`. Manifest id lace-iii. Update reads LATEST.json then rawcdn SHA.  
**Station:** hologram  
**Evidence:** five home-screen icons, all named `LaceArc III`. Each rawcdn SHA install minted a new WebAPK.

i4p1 resume reboot stays. This pass is **app identity**, not shaders.

---

## Why five icons exist

```
  rawcdn.githack.com / NFDFLDTHRY / laceArc / <SHA> / docs/clock /
        │
        start_url  ./lace-projection.html
        scope      ./
        manifest   id  ABSENT
        │
        Chrome identity = start_url
        start_url includes SHA
        new SHA  =>  new app  =>  new icon
```

Deploy law is still: **first open** is rawcdn + full SHA. That does not require a new identity every tick.

`SW Update` riding `main` as the *install host* stays forbidden. A **pointer file on GitHub** that names the current SHA is not the install host.

---

## Tickets (this pass only)

### T1 — Stable manifest `id`

```
"id": "https://github.com/NFDFLDTHRY/laceArc/lace-iii"
```

Same string on every SHA. Chrome Android 96+ uses `id` as the app key. New Install from a new SHA should **replace**, not clone.

`start_url` / `scope` stay relative `./` beside the SHA HTML.

### T2 — `docs/clock/LATEST.json` pointer

Committed on `main`, not served as the PWA origin:

```
{ "sha": "<40 hex>", "title": "i4p2", "html": "docs/clock/lace-projection.html" }
```

Every clock HTML commit that wants to be *the* install updates this file in the same commit.

### T3 — Update button uses the pointer

Update (already-installed):

1. `fetch("https://raw.githubusercontent.com/NFDFLDTHRY/laceArc/main/docs/clock/LATEST.json", {cache:"no-store"})`
2. Build `https://rawcdn.githack.com/NFDFLDTHRY/laceArc/<sha>/docs/clock/lace-projection.html`
3. If that URL is current location → `reg.update()` + skipWaiting only
4. If different SHA → `location.replace(newUrl)` so the same `id` can refresh the WebAPK

Do not fetch `main` as the app. Do not open Pages.

### T4 — HUD

Stamp `id lace-iii`. If five icons already exist, the page cannot delete them. Human keeps one, removes four.

### T5 — Title `i4p2` + law note

One paragraph in `docs/kit/githack-pwa-deploy.md`: identity is `id`, pin is SHA, pointer is LATEST.json. Still no floating-main install URL.

### T6 — Sealed

No Pages. No emitter. No shader restyle this tick. Cannot remotely uninstall the extra icons.

---

## Done means

Install from the `i4p2` SHA once. Update after a later SHA does not add a sixth icon. Title `i4p2`. Extra icons already on the phone are a human cleanup.

---

## Steward test

If Update silently loads floating `main` HTML as the app, you broke deploy law. If a sixth icon appears, `id` did not bind.
