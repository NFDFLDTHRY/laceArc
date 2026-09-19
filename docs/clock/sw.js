/* Layer III. First client is not claimed. Update posts skip. */
const CACHE = "lace-iii-i5p6";
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
self.addEventListener("activate", e => {
  e.waitUntil(caches.keys().then(keys =>
    Promise.all(keys.filter(k => k !== CACHE).map(k => caches.delete(k)))
  ));
});
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
