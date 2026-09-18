/* Layer III cache only. Not Core. */
const CACHE = "lace-iii-d1-v4";
const PRE = [
  "./lace-projection.html",
  "./projection-bake-worker.js",
  "./manifest.webmanifest",
  "../hologram/clockwork-view-lattice.jpg",
  "../hologram/clockwork-view-traces.jpg",
  "../hologram/clockwork-view-crossing.png"
];
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
  e.respondWith(
    caches.match(e.request).then(hit => hit || fetch(e.request).then(res => {
      const copy = res.clone();
      caches.open(CACHE).then(c => c.put(e.request, copy)).catch(()=>{});
      return res;
    }).catch(() => caches.match("./lace-projection.html")))
  );
});
