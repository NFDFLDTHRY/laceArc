// Layer III regression fixtures. Built-in Node only; no browser, GPU or Core.
import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';
import { execFileSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';
import vm from 'node:vm';
import test from 'node:test';

const root = fileURLToPath(new URL('../../../', import.meta.url));
const revision = process.env.LACE_SOURCE_REV;
function source(path) {
  return revision
    ? execFileSync('git', ['show', `${revision}:${path}`], { cwd: root, encoding: 'utf8' })
    : readFileSync(new URL(`../../../${path}`, import.meta.url), 'utf8');
}
const html = source('docs/clock/lace-projection.html');
const worker = source('docs/clock/projection-bake-worker.js');
const sw = source('docs/clock/sw.js');
const pageScript = html.match(/<script>([\s\S]*?)<\/script>/)[1];
const PIN = '3b619929182e98ccaa348a2fc696b98c2e416a2e';
const NEXT = '1234567890abcdef1234567890abcdef12345678';
const APP = 'docs/clock/lace-projection.html';
const ID = 'https://github.com/NFDFLDTHRY/laceArc/lace-iii';
// Existing fixed specimen at 10fe4947; this fixture does not choose emission.
const EXPECTED_D1 = [
  { i: 0, k: 'WORD', v: 'PIE' }, { i: 1, k: 'WORD', v: 'DESSERT' },
  { i: 2, k: 'PTR', a: 0, b: 1 }, { i: 3, k: 'WORD', v: 'PIE' },
  { i: 4, k: 'PTR', a: 3, b: 0 }, { i: 5, k: 'WORD', v: 'WHOLE' },
  { i: 6, k: 'PTR', a: 3, b: 5 }, { i: 7, k: 'PTR', a: 6, b: 4 },
  { i: 8, k: 'WORD', v: 'CUSTOMER' }, { i: 9, k: 'PTR', a: 8, b: 7 },
  { i: 10, k: 'PTR', a: 9, b: 2 }
];

function geometry() {
  let packed;
  const wc = vm.createContext({ self: { crossOriginIsolated: false }, postMessage: value => { packed = value; } });
  vm.runInContext(worker, wc, { timeout: 1000 });
  vm.runInContext('onmessage()', wc, { timeout: 1000 });
  const mc = vm.createContext({});
  const start = pageScript.indexOf('const D1 = [');
  const end = pageScript.indexOf('const WGSL = `');
  assert.ok(start >= 0 && end > start, 'locate the actual inline geometry source');
  vm.runInContext(pageScript.slice(start, end) + '\nvar result = bakeMain();', mc, { timeout: 1000 });
  return {
    worker: Object.fromEntries(['P', 'N', 'C', 'B'].map(k => [k, new Float32Array(packed[k])]).concat([['fCount', packed.fCount]])),
    inline: mc.result,
    workerRows: JSON.parse(vm.runInContext('JSON.stringify(D1)', wc)),
    inlineRows: JSON.parse(vm.runInContext('JSON.stringify(D1)', mc))
  };
}
const baked = geometry();
const near = (a, b) => Math.abs(a - b) < 1e-6;
function material(scene, rgb) {
  const vertices = [];
  for (let i = 0; i < scene.B.length; i++) {
    if (rgb.every((v, j) => near(scene.C[i * 3 + j], v))) vertices.push(i);
  }
  return vertices;
}
function triangleArea2(scene, i) {
  const a = Array.from(scene.P.slice(i * 3, i * 3 + 3));
  const u = Array.from(scene.P.slice(i * 3 + 3, i * 3 + 6), (v, j) => v - a[j]);
  const v = Array.from(scene.P.slice(i * 3 + 6, i * 3 + 9), (v, j) => v - a[j]);
  return Math.hypot(u[1] * v[2] - u[2] * v[1], u[2] * v[0] - u[0] * v[2], u[0] * v[1] - u[1] * v[0]);
}

test('E2: both actual bakes retain D1, floor and material/birth semantics', () => {
  assert.deepEqual(baked.workerRows, EXPECTED_D1);
  assert.deepEqual(baked.inlineRows, EXPECTED_D1);
  for (const scene of [baked.worker, baked.inline]) {
    assert.equal(scene.fCount, 6);
    assert.ok(Array.from(scene.B.slice(0, 6)).every(v => v === -1));
    assert.equal(scene.P.length, scene.N.length);
    assert.equal(scene.P.length, scene.C.length);
    assert.equal(scene.P.length / 3, scene.B.length);
    for (const key of ['P', 'N', 'C', 'B']) assert.ok(Array.from(scene[key]).every(Number.isFinite), `${key} must be finite`);
    const births = color => [...new Set(material(scene, color).map(i => scene.B[i]))].sort((a, b) => a - b);
    assert.deepEqual(births([1, .28, .04]), [0, 1, 3, 5, 8]);
    assert.deepEqual(births([.15, .55, .95]), [2, 4, 6, 7, 9, 10]);
    assert.deepEqual(births([.12, .95, .32]), [0, 3]);
    assert.deepEqual(births([.82, .52, .08]), [2, 4, 6, 7, 9, 10]);
    assert.deepEqual(births([.78, .68, .12]), [2, 4, 6, 7, 9, 10]);
    assert.equal(material(scene, [.55, .95, 1]).length, 252);
  }
});
for (const name of ['worker', 'inline']) {
  test(`E2: ${name} filament triangles have area and all eleven birth IDs`, () => {
    const scene = baked[name];
    const vertices = material(scene, [.05, .88, 1]);
    assert.ok(vertices.length > 0, 'filaments must exist');
    assert.equal(vertices.length % 3, 0);
    assert.deepEqual([...new Set(vertices.map(i => scene.B[i]))].sort((a, b) => a - b), Array.from({ length: 11 }, (_, i) => i));
    for (let j = 0; j < vertices.length; j += 3) {
      const i = vertices[j];
      assert.deepEqual(vertices.slice(j, j + 3), [i, i + 1, i + 2]);
      assert.ok(triangleArea2(scene, i) > 1e-8, `zero-area filament born at ${scene.B[i]}`);
    }
  });
}

class Events {
  handlers = new Map();
  addEventListener(type, fn) {
    if (!this.handlers.has(type)) this.handlers.set(type, []);
    this.handlers.get(type).push(fn);
  }
  async emit(type, event = {}) {
    event.preventDefault ||= () => {};
    event.stopPropagation ||= () => {};
    for (const fn of this.handlers.get(type) || []) await fn(event);
  }
}
function element() {
  const classes = new Set();
  return Object.assign(new Events(), {
    textContent: '', hidden: false, value: '0', dataset: {}, attrs: {},
    style: { removeProperty(key) { delete this[key]; } },
    classList: {
      add: (...xs) => xs.forEach(x => classes.add(x)),
      remove: (...xs) => xs.forEach(x => classes.delete(x)),
      contains: x => classes.has(x),
      toggle(x, force) { const on = force ?? !classes.has(x); on ? classes.add(x) : classes.delete(x); return on; }
    },
    getAttribute(key) { return this.attrs[key] ?? null; },
    setAttribute(key, value) { this.attrs[key] = value; },
    setPointerCapture() {}, clientWidth: 800, clientHeight: 600
  });
}
const settle = async () => { for (let i = 0; i < 30; i++) await Promise.resolve(); };

function page(options = {}) {
  const elements = new Map();
  const get = id => { if (!elements.has(id)) elements.set(id, element()); return elements.get(id); };
  const body = element();
  const doc = { body, getElementById: get, querySelectorAll: () => [], querySelector: () => ({ textContent: 'LAYER III ixp2' }) };
  const raf = new Map(), timers = new Map(), submissions = [], attempts = [], requests = [], navigations = [], messages = [];
  let counter = 0, now = 0;
  const device = Object.assign(new Events(), {
    lost: new Promise(() => {}), destroy() {},
    createBuffer: ({ size }) => ({ bytes: new Uint8Array(size) }),
    createShaderModule: value => value,
    createRenderPipeline(desc) { return { desc, getBindGroupLayout: () => ({}) }; },
    createBindGroup: desc => desc,
    createTexture: () => ({ createView: () => ({}), destroy() {} }),
    createCommandEncoder() {
      const passes = [];
      return {
        beginRenderPass() {
          const pass = { pipeline: null, binding: null, draws: [] };
          passes.push(pass);
          return {
            setPipeline(value) { pass.pipeline = value; },
            setBindGroup(index, value) { pass.binding = value; },
            setVertexBuffer() {},
            draw(...args) { pass.draws.push({ args, pipeline: pass.pipeline, binding: pass.binding }); },
            end() {}
          };
        },
        finish: () => passes
      };
    },
    queue: {
      writeBuffer(buffer, offset, data) { buffer.bytes.set(new Uint8Array(data.buffer, data.byteOffset, data.byteLength), offset); },
      submit(commands) {
        attempts.push(get('gpustamp').textContent);
        if (options.submitError) throw new Error('fixture submit failure');
        submissions.push(Array.from(commands).flat().flatMap(pass => pass.draws).map(draw => {
          const resource = draw.binding.entries[0].resource;
          const uniform = new Float32Array(resource.buffer.bytes.buffer.slice(resource.offset || 0));
          return { flag: uniform[23], matrix: Array.from(uniform.slice(0, 16)), depthWrite: draw.pipeline.desc.depthStencil.depthWriteEnabled, blend: !!draw.pipeline.desc.fragment.targets[0].blend };
        }));
      }
    }
  });
  get('c').getContext = () => ({ configure() {}, getCurrentTexture: () => ({ createView: () => ({}) }) });
  const reg = Object.assign(new Events(), {
    waiting: options.waiting ? { postMessage: msg => messages.push(msg) } : null,
    updateCalls: 0,
    async update() { this.updateCalls++; if (options.updateError) throw new Error('fixture SW update failure'); return this; }
  });
  const serviceWorker = Object.assign(new Events(), { controller: {}, register: async () => reg });
  const location = { pathname: `/NFDFLDTHRY/laceArc/${PIN}/${APP}`, replace: url => navigations.push(url) };
  const globalEvents = new Events();
  const context = vm.createContext({
    document: doc, location, devicePixelRatio: 1, innerWidth: 800, innerHeight: 600,
    console: { warn() {} }, performance: { now: () => now },
    sessionStorage: { getItem: () => null, setItem() {} },
    navigator: { serviceWorker, gpu: { requestAdapter: async () => ({ requestDevice: async () => device }), getPreferredCanvasFormat: () => 'bgra8unorm' } },
    GPUBufferUsage: { VERTEX: 1, COPY_DST: 2, UNIFORM: 4 }, GPUTextureUsage: { RENDER_ATTACHMENT: 1 },
    requestAnimationFrame(fn) { const id = ++counter; raf.set(id, fn); return id; },
    cancelAnimationFrame: id => raf.delete(id),
    setTimeout(fn) { const id = ++counter; timers.set(id, fn); return id; }, clearTimeout: id => timers.delete(id),
    addEventListener: (...args) => globalEvents.addEventListener(...args),
    fetch: async url => {
      requests.push(url);
      const value = options.fetch ? await options.fetch(url, requests.length) : { id: ID, html: APP, sha: PIN };
      return { ok: true, json: async () => value, headers: { get: () => 'application/json' } };
    },
    URL, Blob,
    Worker: class {
      postMessage() {
        queueMicrotask(() => this.onmessage({ data: Object.fromEntries(['P', 'N', 'C', 'B'].map(k => [k, baked.worker[k].buffer]).concat([['fCount', 6], ['wasm', false]])) }));
      }
      terminate() {}
    }
  });
  context.window = context;
  context.matchMedia = () => ({ matches: false });
  vm.runInContext(pageScript, context, { timeout: 1000 });
  return {
    context, get, body, device, reg, requests, navigations, messages, submissions, attempts,
    async frame() {
      const before = attempts.length;
      for (let i = 0; i < 12; i++) {
        await settle();
        const next = raf.entries().next().value;
        assert.ok(next, 'actual page must schedule its frame');
        raf.delete(next[0]); now += 16; next[1](now);
        if (attempts.length > before) { await settle(); return; }
      }
      assert.fail('page did not reach queue.submit');
    },
    async update() { await settle(); await get('updatebtn').emit('click'); await settle(); }
  };
}

test('E1: actual submitted floor/opaque and transparent draws read distinct pass flags', async () => {
  const app = page();
  await app.frame();
  const draws = app.submissions[0];
  assert.equal(draws.length, 3);
  assert.deepEqual(draws.map(d => d.flag), [0, 0, 1]);
  assert.deepEqual(draws.map(d => [d.blend, d.depthWrite]), [[false, false], [true, true], [true, false]]);
  assert.deepEqual(draws[0].matrix, draws[2].matrix);
});
for (const ref of [false, true]) {
  test(`E3: failed submission then reboot recovers while preserving REF=${ref}`, async () => {
    const options = { submitError: true };
    const failed = page(options);
    if (ref) await failed.get('refbtn').emit('click');
    await failed.frame();
    assert.doesNotMatch(failed.attempts[0], /GPU on|submitted|painted/i);
    assert.match(failed.get('gpustamp').textContent, /fail|off|error/i);
    assert.equal(failed.body.classList.contains('gpu-off'), true);
    assert.equal(failed.get('fallback').style.display, 'block');
    options.submitError = false;
    vm.runInContext('requestReboot("fixture recovery")', failed.context);
    await failed.frame();
    assert.equal(failed.body.classList.contains('gpu-off'), false);
    assert.ok(!failed.get('fallback').style.display, 'release forced display so CSS/REF can decide');
    assert.equal(failed.body.classList.contains('ref'), ref);
    assert.doesNotMatch(failed.get('why').textContent, /fixture.*failure/);
    assert.match(failed.get('gpustamp').textContent, /submitted/i);
  });
  test(`E3: uncaptured GPU error then reboot recovers while preserving REF=${ref}`, async () => {
    const app = page();
    if (ref) await app.get('refbtn').emit('click');
    await app.frame();
    await app.device.emit('uncapturederror', { error: { message: 'fixture validation failure' } });
    assert.equal(app.body.classList.contains('gpu-off'), true);
    assert.match(app.get('why').textContent, /fixture validation failure/);
    vm.runInContext('requestReboot("fixture recovery")', app.context);
    await app.frame();
    assert.equal(app.body.classList.contains('gpu-off'), false);
    assert.ok(!app.get('fallback').style.display);
    assert.equal(app.body.classList.contains('ref'), ref);
    assert.doesNotMatch(app.get('why').textContent, /fixture.*failure/);
    assert.match(app.get('gpustamp').textContent, /submitted/i);
  });
}

test('E4: selected different release navigates to its exact SHA without SW activation', async () => {
  const app = page({ waiting: true, fetch: async () => ({ id: ID, html: APP, sha: NEXT }) });
  await app.update();
  assert.deepEqual(app.navigations, [`https://rawcdn.githack.com/NFDFLDTHRY/laceArc/${NEXT}/${APP}`]);
  assert.equal(app.reg.updateCalls, 0);
  assert.equal(app.messages.length, 0);
});
for (const waiting of [false, true]) {
  test(`E4: same release checks SW; waiting=${waiting}`, async () => {
    const app = page({ waiting });
    await app.update();
    assert.equal(app.navigations.length, 0);
    assert.equal(app.reg.updateCalls, 1);
    assert.equal(app.messages.length, waiting ? 1 : 0);
    if (waiting) assert.equal(app.messages[0].type, 'skip');
    else assert.equal(app.get('pwastamp').textContent, 'fresh');
  });
  test(`E4: all pointer providers failing retains pin and error; waiting=${waiting}`, async () => {
    const app = page({ waiting, fetch: async url => {
      if (url.includes('/commits/main')) return { sha: NEXT }; // A tip exists, but it is not a release.
      throw new Error('fixture pointer offline');
    } });
    await app.update();
    assert.equal(app.navigations.length, 0);
    assert.equal(app.reg.updateCalls, 0);
    assert.equal(app.messages.length, 0);
    assert.equal(app.requests.some(url => url.includes('/commits/main')), false);
    assert.match(app.get('pwastamp').textContent, /unavailable|fail/i);
  });
}
for (const [name, change] of [
  ['wrong identity', { id: `${ID}-other` }], ['wrong entry', { html: 'docs/clock/other.html' }], ['malformed SHA', { sha: 'main' }]
]) {
  test(`E4: ${name} never selects a release`, async () => {
    const app = page({ fetch: async () => ({ id: ID, html: APP, sha: NEXT, ...change }) });
    await app.update();
    assert.equal(app.navigations.length, 0);
    assert.equal(app.reg.updateCalls, 0);
    assert.match(app.get('pwastamp').textContent, /unavailable|fail/i);
  });
}
test('E4: a failed provider can fall through to a valid release provider', async () => {
  const app = page({ fetch: async (url, n) => {
    if (n === 1) throw new Error('fixture mirror failure');
    return { id: ID, html: APP, sha: NEXT.toUpperCase() };
  } });
  await app.update();
  assert.equal(app.requests.length, 2);
  assert.deepEqual(app.navigations, [`https://rawcdn.githack.com/NFDFLDTHRY/laceArc/${NEXT}/${APP}`]);
});
for (const waiting of [false, true]) {
  test(`E4: failed SW comparison does not report fresh or activate; waiting=${waiting}`, async () => {
    const app = page({ updateError: true, waiting });
    await app.update();
    assert.equal(app.navigations.length, 0);
    assert.equal(app.messages.length, 0);
    assert.match(app.get('pwastamp').textContent, /unavailable|fail/i);
  });
}

for (const outcome of ['installed', 'redundant']) {
  test(`E4: pending installation is not fresh and reports ${outcome}`, async () => {
    const app = page();
    await settle();
    const installing = Object.assign(new Events(), { state: 'installing', postMessage: msg => app.messages.push(msg) });
    // An update job can resolve before this worker's install event completes.
    app.reg.update = async () => {
      app.reg.updateCalls++;
      app.reg.installing = installing;
      await app.reg.emit('updatefound');
      return app.reg;
    };
    await app.update();
    assert.equal(app.get('pwastamp').textContent, 'SW installing');
    assert.equal(app.navigations.length, 0);
    assert.equal(app.messages.length, 0);
    installing.state = outcome;
    app.reg.installing = null;
    if (outcome === 'installed') app.reg.waiting = installing;
    await installing.emit('statechange');
    if (outcome === 'redundant') {
      assert.match(app.get('pwastamp').textContent, /install failed/i);
      assert.equal(app.messages.length, 0);
    } else {
      assert.equal(app.get('pwastamp').textContent, 'PWA upd');
      assert.equal(app.get('updatebtn').textContent, 'Reload');
      assert.equal(app.messages.length, 0, 'completion alone must not activate the worker');
      app.reg.update = async () => app.reg;
      await app.update();
      assert.equal(app.messages[0].type, 'skip');
    }
  });
}

test('E5: activation preserves unrelated and other-pinned-install caches', async () => {
  const events = new Events();
  const entries = new Map([
    ['unrelated-app', new Map([['sentinel', 'other application']])],
    ['lace-iii-older-pin', new Map([['sentinel', 'other pinned installation']])],
    ['lace-iii-ixp2', new Map([['sentinel', 'existing development cache']])]
  ]);
  const before = structuredClone(entries);
  const context = vm.createContext({
    self: { addEventListener: (...args) => events.addEventListener(...args) },
    caches: { keys: async () => [...entries.keys()], delete: async key => entries.delete(key) }
  });
  vm.runInContext(sw, context, { timeout: 1000 });
  const waits = [];
  await events.emit('activate', { waitUntil: promise => waits.push(promise) });
  await Promise.all(waits);
  assert.deepEqual(entries, before);
});

test('P2-09: Holder doors opt into the HUD pointer-access rule', () => {
  const aside = html.match(/<aside\b[^>]*\bid="holder"[^>]*>/)?.[0];
  assert.ok(aside);
  const classes = aside.match(/\bclass="([^"]*)"/)?.[1].split(/\s+/) || [];
  assert.ok(classes.includes('hit'), 'reference links must opt into HUD pointer events');
  assert.match(html, /\.hud\s+\.hit\s*\{\s*pointer-events\s*:\s*auto/);
});
