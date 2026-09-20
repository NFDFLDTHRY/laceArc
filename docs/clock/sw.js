/* Layer III. First client is not claimed. Update posts skip. */
const CACHE = "lace-iii-ixp2";
const PRE = ["./icon-192.png", "./icon-512.png"];
self.addEventListener("message", e => {
  if (e.data && e.data.type === "skip") self.skipWaiting();
});
self.addEventListener("install", e => {
  e.waitUntil(
    caches.open(CACHE).then(c =>
      Promise.all(PRE.map(u => c.add(u).catch(() => null)))
    )
  );
});
// Pinned installations and unrelated apps share this origin. Activation must
// not purge their caches. No automatic cache deletion is performed here.
function netFirst(req){
  return fetch(req).then(res => {
    if (res && res.ok) {
      const copy = res.clone();
      caches.open(CACHE).then(c => c.put(req, copy)).catch(()=>{});
    }
    return res;
  }).catch(() => caches.match(req));
}
self.addEventListener("fetch", e => {
  const u = new URL(e.request.url);
  if (u.origin !== location.origin) return;
  // Fresh pointer/diagnostic/source requests must not reuse a stale app cache.
  if (e.request.cache === "no-store") {
    e.respondWith(fetch(e.request));
    return;
  }
  const path = u.pathname;
  const live = path.endsWith(".html") || path.endsWith("/") || path.endsWith(".js");
  if (live) {
    e.respondWith(netFirst(e.request));
    return;
  }
  e.respondWith(
    caches.match(e.request).then(hit => hit || fetch(e.request).then(res => {
      if (res && res.ok) {
        const copy = res.clone();
        caches.open(CACHE).then(c => c.put(e.request, copy)).catch(()=>{});
      }
      return res;
    }))
  );
});
