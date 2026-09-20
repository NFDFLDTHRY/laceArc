# Projection iteration 1 / pass 1 plan — the phone is on iteration 0

**Status:** EXECUTED. Title `i1`. SW network-first HTML. Emission `[GAP]`.  
**Station:** hologram  
**Evidence:** title `D1 GIVEN`, no `v6`/`v6f` stamp, `PWA on`, black stage.

That string was removed in pass 5/6. **The installed app / githack `main` cache is not serving current `lace-projection.html`.** More materials will not change a phone that never downloaded them.

Iteration 0 = visual language + PWA files.  
Iteration 1 = **bytes actually reach the phone.**

---

## What is wrong

```
 chat / install  →  raw.githack.com / main / …/lace-projection.html
                         │
                         ├─ CDN may keep old HTML
                         └─ SW cache (PWA on) keeps old HTML forever
                              until sw.js itself is refetched
```

Old SW precaches `./lace-projection.html`. New commits do not invalidate that entry if the browser never fetches a new `sw.js` (or githack serves old `sw.js` too).

---

## Tickets

### T1 — Query-bust the install URL (human-facing)

Publish:

`https://raw.githack.com/NFDFLDTHRY/laceArc/main/docs/clock/lace-projection.html?i=1`

`start_url` in the manifest matches that query so a new install is a new identity.

### T2 — Do not precache the HTML in SW

Precache lookrefs only. HTML is `network-first`. Otherwise every PWA is a museum.

### T3 — Visible proof of life that cannot be an old string

HUD title includes `i1`. If the shot still says `D1 GIVEN`, stop debugging shaders.

### T4 — Lookrefs as CSS background on `body`, not a hideable div

Iteration 0 hid or stacked that div wrong. Body background cannot be `display:none`.

### T5 — Sealed

No emitter. No new D1 rows. No “just hard refresh” as the only plan — the install path must survive a refresh.

---

## Execution (when you say go)

HTML + SW + manifest + README install URL with `?i=1`. STOP.

---

## Steward test

If a new screenshot still says `D1 GIVEN`, iteration 1 did not ship to the phone.  
If we add cubes instead of fixing fetch, we failed.
