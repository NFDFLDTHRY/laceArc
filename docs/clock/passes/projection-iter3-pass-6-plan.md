# Projection iteration 3 / pass 6 plan — persist + load reliability

**Status:** EXECUTED. Emission `[GAP]`. Title `i3p6`. persist() on Install / standalone. HUD stamp. updateViaCache none.  
**Station:** hologram  
**Target:** Chrome Android 17, rawcdn SHA WebAPK and tab.  
**Evidence:** `i3p5` paints. `i3p4` reboot exists. There is **no** `navigator.storage.persist()` call. HUD `ev.persisted` is bfcache, not durable storage.

i3p5 shaders stay. This pass is **storage request + load path**, not a restyle.

---

## What is wrong today

```
  Install / standalone
         │
         v
  Cache API  lace-iii-i3p5     ← best-effort, evictable
  SW scope   ./                ← relative, correct
  persist()  NOT CALLED        ← Chrome may wipe the cache
  origin     rawcdn.githack.com
             SHARED across every repo on that host
```

Law already says the installed app owns storage at that origin+path (`docs/kit/githack-pwa-deploy.md`). The page never asks the browser to treat that cache as persistent.

Chrome Android: `persist()` is most likely to succeed after a **user gesture** (Install) or when already standalone. It is **origin-scoped**. GitHack is a shared origin, so the grant may be denied or shared. Denial is not GPU-off.

---

## Tickets (this pass only)

### T1 — Ask once, on a gesture

On Install click, after `beforeinstallprompt` handling: `navigator.storage.persist()`.  
If already standalone on boot: ask once, no gesture required on Chrome Android 17 when installed.  
Never ask in a tight loop. Never ask from `requestReboot`.

### T2 — Stamp the truth

HUD adds `persist on|off|deny` from `navigator.storage.persisted()`. Optional `est` MB from `estimate()` if present. Do not invent a second store.

### T3 — Load reliability (not a new SW architecture)

- `register("sw.js", { scope: "./", updateViaCache: "none" })`
- Keep network-first HTML+JS, no `cache.put` of non-OK
- Worker stays `?i=3p6`
- i3p4 `bootGpu` / `device.lost` / bfcache path **untouched**

### T4 — Shared-origin deadbolt

Document on the page and in the pass note: persist is origin-wide on `rawcdn.githack.com`. Refusal is expected. The SHA URL remains the pin. Do not migrate to Pages to “fix” persist.

### T5 — Title `i3p6`

New rawcdn SHA. No IndexedDB lace tape. No Core rows in Cache.

### T6 — Sealed

No restyle. No JPEG stage. No emitter. No Pages. Persist is a **browser** flag, not Graphic D.

---

## Done means

`i3p6` first open paints. Install (or already-standalone) shows `persist on` or an honest `deny`. Kill tab, reopen same SHA, `GPU on` + `n=` again. Cache miss still falls back to network, not a black void.

---

## Steward test

If persist writes a WORD, you left the shoe. If we move host to get persist, we broke deploy law.
