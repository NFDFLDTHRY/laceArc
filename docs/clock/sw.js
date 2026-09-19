/* Layer III cache. HTML is network-first so githack main can move. */
const CACHE = "lace-iii-i1p6";
const PRE = [
  "../hologram/clockwork-view-lattice.jpg",
  "../hologram/clockwork-view-traces.jpg",
  "../hologram/clockwork-view-crossing.png",
  "./icon-192.png",
  "./icon-512.png"
];
self.addEventListener("message", e => {
  if (e.data && e.data.type === "skip") self.skipWaiting();
});
self.addEventListener("install", e => {
  e.waitUntil(caches.open(CACHE).then(c => c.addAll(PRE)).then(() => self.skipWaiting()));
});
self.addEventListener("activate", e => {
  e.waitUntil(caches.keys().then(keys =>
    Promise.all(keys.filter(k => k !== CACHE).map(k => caches.delete(k)))
  ).then(() => self.clients.claim()));
});
self.addEventListener("fetch", e => {
  const u = new URL(e.request.url);
  if (u.origin !== location.origin) return;
  const html = u.pathname.endsWith(".html") || u.pathname.endsWith("/");
  if (html) {
    e.respondWith(fetch(e.request).then(res => {
      const copy = res.clone();
      caches.open(CACHE).then(c => c.put(e.request, copy)).catch(()=>{});
      return res;
    }).catch(() => caches.match(e.request)));
    return;
  }
  e.respondWith(
    caches.match(e.request).then(hit => hit || fetch(e.request).then(res => {
      const copy = res.clone();
      caches.open(CACHE).then(c => c.put(e.request, copy)).catch(()=>{});
      return res;
    }))
  );
});
