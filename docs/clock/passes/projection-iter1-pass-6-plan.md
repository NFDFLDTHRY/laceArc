# Projection iteration 1 / pass 6 plan — dead REF / Install / Update

**Status:** EXECUTED. addEventListener wiring. Title i1p6. Emission `[GAP]`.  
**Station:** hologram  
**Target:** Chrome Android only.

---

## What is actually broken

**REF.** `.modes button` loop assigns `btn.onclick` *after* `refbtn.onclick`. That **overwrites** the REF handler. REF then hits `if (id==="refbtn") return;` and does nothing.

**Install.** `beforeinstallprompt` is often late or absent (already installed, no engagement, githack). The click then stamps `Share→Add` — wrong on Android — or hides the button after a failed prompt.

**Update.** `reg.update()` with no `waiting` worker is a silent no-op. User cannot tell check vs apply.

---

## Tickets

### T1 — One click map

`addEventListener` only. Never overwrite. REF toggles `body.ref` + `.on`. Mode buttons do not bind REF.

### T2 — Install feedback

If `deferredPrompt`: `prompt()`.  
Else if standalone: stamp `installed`.  
Else: stamp `no bip` (Chrome has not offered). Do not hide the button. Do not say Share→Add.

### T3 — Update feedback

Always stamp `chk` on tap. If `waiting`, skipWaiting + reload. If not, stamp `fresh` (already current) or `wait CDN`.

### T4 — Title `i1p6`

Proof of bytes.

### T5 — Sealed

No new look. No iOS copy. No emitter.

---

## Execution (when you say go pass 6)

Rewire the three buttons. STOP.

---

## Steward test

If REF does not toggle the JPEG plate, T1 failed.  
If Install/Update still have no HUD stamp, T2/T3 failed.
