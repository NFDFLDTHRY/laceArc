# Projection iteration 2 / pass 3 plan — githack is not the install origin

**Status:** EXECUTED. Pages origin + split icons + manifest link. Emission `[GAP]`.  
**Station:** hologram  
**Target:** Chrome Android only.  
**Evidence:** i2p1 sheet — *Install* grey, “This app cannot be installed.” *Create shortcut* still offered.

That sheet is Chrome telling the truth. A shortcut is not a WebAPK. Our code named raw.githack as the install path. That was wrong.

---

## What was wrong in our code

We wrote law that said:

```
Install (PWA): https://raw.githack.com/NFDFLDTHRY/laceArc/main/docs/clock/lace-projection.html
```

raw.githack is a **shared CDN origin**. Chrome Android will preview the page and offer a bookmark. It will not mint a WebAPK for that host. `beforeinstallprompt` never becomes a real install.

ASTRA / hologram viewers already treated githack as **preview** (SHA pin, relative loads). They did not claim it as the Home Screen origin. We did.

Pass 2 (SW addAll, drop `id`, maskable) cannot fix an origin Chrome will not sign.

Second code defect: both icons are `"purpose": "any maskable"`. Chrome wants a plain `"any"` 192/512 **and** a separate maskable pair. One combined purpose can fail the icon check even on a good origin.

---

## The install path (pass 3 law)

| Job | Origin |
|---|---|
| **Install / WebAPK / Update** | GitHub Pages, first-party: `https://nfdfldthry.github.io/laceArc/clock/lace-projection.html` |
| **Audit a commit** | SHA-pinned raw.githack (unchanged) |

Pages source = `/docs` on `main`. Path after that is `/clock/…`.  
Pages is **404 today**. Pass 3 must turn it on or the URL stays dead.

---

## Tickets

### T1 — Pages is the install host

Add `.github/workflows/pages.yml` (or equivalent) so `/docs` publishes. Do not npm. Do not a second store.

### T2 — Manifest icons split

Four entries: 192 any, 512 any, 192 maskable, 512 maskable. No combined purpose string.

### T3 — Copy in the page

HUD / README: **Install on github.io, not githack.** githack line becomes audit-only.

### T4 — Title `i2p3`

If the phone still says `i2p1`/`i2p2` on githack, that is preview, not the installed app.

### T5 — Sealed

No lattice restyle. No emitter. Chrome Android only. Shortcut on githack is not success.

---

## Execution (when you say go)

workflow + manifest icons + HUD/README install URL. STOP.

---

## Steward test

If Chrome still says cannot install **on github.io** after Pages is live, T2/SW.  
If we keep telling the phone to install from githack, T1 failed.
