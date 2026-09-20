# Projection visual pass 5 plan — githack is the install path

**Status:** EXECUTED. Install URL is githack `main`. Emission `[GAP]`.  
**Station:** hologram  
**Install host:** `https://raw.githack.com/NFDFLDTHRY/laceArc/…/docs/clock/`

Pass 4 added a manifest + SW with *relative* URLs. That is correct locally and wrong as an *identity* on githack unless we pick one URL and keep it.

---

## How githack actually works

```
https://raw.githack.com/NFDFLDTHRY/laceArc/<ref>/docs/clock/lace-projection.html
```

| `<ref>` | Preview | Install identity |
|---|---|---|
| full SHA | cache-safe, what we send in chat | **new app every commit** |
| `main` | CDN can serve yesterday | **stable Add to Home Screen** |

SW scope is the directory of `sw.js` on **that origin + that ref**.  
A SHA install will not see the next SHA’s files. That is a different web app.

---

## Tickets

### T1 — Publish one install URL

Law for humans and bots:

- **Install / PWA:** `https://raw.githack.com/NFDFLDTHRY/laceArc/main/docs/clock/lace-projection.html`
- **Audit a tick:** SHA-pinned raw.githack (chat links stay SHA)

Do not tell the phone to install a SHA URL.

### T2 — Manifest is location-relative, explicit scope

Keep `start_url` / `scope` as `./` so both `main` and SHA *preview* work.  
Document that only the `main` URL is the deliverable identity.

### T3 — SW on githack

- Register with `{ scope: './' }`  
- Precache **relative** lookrefs (`../hologram/…`) — same origin on githack  
- Cache name includes a repo-written version stamp so `main` CDN can be busted by bumping `CACHE` in `sw.js` when we intend a new install  
- If `register` fails (githack MIME / 404), HUD says `PWA off` — lookrefs still work

### T4 — Icons

Lookref JPEG as icon may be rejected by Android. Pass 5 may add a tiny same-folder PNG **copied from a lookref crop** only if we can write one without a new brand. If not, leave the JPEG and stamp the risk.

### T5 — Sealed

No emitter. No npm. No second origin (no custom domain this pass). WebNN still probe-only.

---

## Execution (when you say go pass 5)

Edit manifest/SW/HTML HUD + one line in clock README: the install URL. STOP.

---

## Steward test

If the install instructions point at a SHA, T1 failed.  
If SW fetch goes to github.com or a CDN other than this githack path, delete it.
