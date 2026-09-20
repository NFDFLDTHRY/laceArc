# Projection iteration 2 / pass 2 plan — Chrome: “This app cannot be installed”

**Status:** EXECUTED. SW no longer addAll-lookrefs. No manifest id. Title i2p2. Emission `[GAP]`.  
**Station:** hologram  
**Evidence:** i2p1 on the phone. Chrome sheet: Install greyed — “This app cannot be installed.” Shortcut still offered.

Bytes arrived. Installability did not.

---

## Likely causes (Chrome Android + raw.githack)

1. **SW never becomes `activated+controlling`.**  
   `cache.addAll(PRE)` is all-or-nothing. One failed lookref JPEG → install event rejects → no SW → not a PWA.

2. **Manifest `id`** set to `/NFDFLDTHRY/laceArc/main/docs/clock/`  
   That is not the page URL Chrome is on. Chrome can refuse the identity.

3. **No `maskable` icon** — often required on Android.

4. Manifest MIME on githack may be `text/plain`. We cannot fix githack. We *can* drop fields Chrome rejects.

Shortcut works because it is not a PWA.

---

## Tickets

### T1 — SW install cannot depend on lookrefs

Precache only `icon-192.png` + `icon-512.png`. Lookrefs optional. If addAll fails, SW still activates.

### T2 — Manifest identity

Remove `id`. `start_url` + `scope` stay `./`. Icons get `"purpose": "any maskable"`.

### T3 — HUD must say SW state

`PWA on` only if `navigator.serviceWorker.controller`. Else `SW dead` — that is the install fail.

### T4 — Title `i2p2`

### T5 — Sealed

No lattice work. Chrome Android only.

---

## Execution (when you say go)

manifest + sw.js + stamp. STOP.

---

## Steward test

If Chrome still says cannot install *and* HUD says `SW dead`, T1 did not land or githack blocked `sw.js`.  
If HUD says `PWA on` and Chrome still refuses, it is manifest identity (T2) or MIME we cannot fix on this host.
