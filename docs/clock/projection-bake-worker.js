/* Layer III CPU bake. Not Core. No emission.
   Worker so the page can keep lookrefs up while vertices pack. */
const D1 = [
  {i:0, k:"WORD", v:"PIE"}, {i:1, k:"WORD", v:"DESSERT"},
  {i:2, k:"PTR", a:0, b:1}, {i:3, k:"WORD", v:"PIE"},
  {i:4, k:"PTR", a:3, b:0}, {i:5, k:"WORD", v:"WHOLE"},
  {i:6, k:"PTR", a:3, b:5}, {i:7, k:"PTR", a:6, b:4},
  {i:8, k:"WORD", v:"CUSTOMER"}, {i:9, k:"PTR", a:8, b:7},
  {i:10,k:"PTR", a:9, b:2}
];
function posOf(i){
  const col = i % 4, row = Math.floor(i / 4);
  return [col * 2.4 - 3.6, 0.55, row * 2.4 - 2.4];
}
function cube(s){
  const p=[],n=[];
  const f=[[0,1,0],[0,-1,0],[1,0,0],[-1,0,0],[0,0,1],[0,0,-1]];
  const q=[[[-1,1,-1],[1,1,-1],[1,1,1],[-1,1,1]],[[-1,-1,1],[1,-1,1],[1,-1,-1],[-1,-1,-1]],
           [[1,-1,-1],[1,-1,1],[1,1,1],[1,1,-1]],[[-1,-1,1],[-1,-1,-1],[-1,1,-1],[-1,1,1]],
           [[-1,-1,1],[1,-1,1],[1,1,1],[-1,1,1]],[[1,-1,-1],[-1,-1,-1],[-1,1,-1],[1,1,-1]]];
  for(let k=0;k<6;k++){
    const vv=q[k].map(v=>[v[0]*s,v[1]*s,v[2]*s]);
    for(const t of [[0,1,2],[0,2,3]]) for(const j of t){ p.push(...vv[j]); n.push(...f[k]); }
  }
  return {p,n};
}
function sphere(r, seg=8){
  const p=[],n=[];
  for(let y=0;y<seg;y++){
    const y0=-1+2*y/seg, y1=-1+2*(y+1)/seg;
    const r0=Math.sqrt(Math.max(0,1-y0*y0)), r1=Math.sqrt(Math.max(0,1-y1*y1));
    for(let x=0;x<seg;x++){
      const a0=x/seg*Math.PI*2, a1=(x+1)/seg*Math.PI*2;
      const A=[r0*Math.cos(a0),y0,r0*Math.sin(a0)];
      const B=[r0*Math.cos(a1),y0,r0*Math.sin(a1)];
      const C=[r1*Math.cos(a1),y1,r1*Math.sin(a1)];
      const D=[r1*Math.cos(a0),y1,r1*Math.sin(a0)];
      for(const v of [A,B,C,A,C,D]){ p.push(v[0]*r,v[1]*r,v[2]*r); n.push(...v); }
    }
  }
  return {p,n};
}
function ribbon(a,b,r=0.016){
  const dx=b[0]-a[0], dz=b[2]-a[2], len=Math.hypot(dx,dz)||1;
  const px=-dz/len*r, pz=dx/len*r;
  const p0=[a[0]+px,a[1],a[2]+pz], p1=[a[0]-px,a[1],a[2]-pz];
  const p2=[b[0]-px,b[1],b[2]-pz], p3=[b[0]+px,b[1],b[2]+pz];
  return {p:[...p0,...p1,...p2,...p0,...p2,...p3], n:[0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0]};
}
function bake(){
  const P=[],N=[],C=[],B=[];
  function add(g,col,off,born){
    for(let i=0;i<g.p.length;i+=3){
      P.push(g.p[i]+off[0], g.p[i+1]+off[1], g.p[i+2]+off[2]);
      N.push(g.n[i],g.n[i+1],g.n[i+2]); C.push(...col); B.push(born);
    }
  }
  const shell=cube(0.50), core=cube(0.20), ball=sphere(0.62,8);
  for(const r of D1){
    const off=posOf(r.i);
    if(r.k==="WORD"){
      add(shell,[0.55,0.18,0.08],off,r.i);
      add(core,[1.0,0.45,0.08],off,r.i);
      if(r.v==="PIE") add(ball,[0.12,0.95,0.32],[off[0],off[1]+1.05,off[2]], r.i);
    } else {
      add(cube(0.16),[0.15,0.55,0.95],off,r.i);
      const A=posOf(r.a), Bb=posOf(r.b);
      const mid=[(A[0]+Bb[0])/2, 0.18, (A[2]+Bb[2])/2];
      add(ribbon(A,mid),[0.25,0.85,1],[0,0,0],r.i);
      add(ribbon(mid,Bb),[0.25,0.85,1],[0,0,0],r.i);
    }
  }
  for(let i=-10;i<=10;i++){
    const t=i*0.7;
    add(ribbon([-7.4,0.01,t],[7.4,0.01,t],0.012),[0.04,0.22,0.38],[0,0,0],-1);
    add(ribbon([t,0.01,-7.4],[t,0.01,7.4],0.012),[0.04,0.22,0.38],[0,0,0],-1);
  }
  return {
    P: new Float32Array(P), N: new Float32Array(N),
    C: new Float32Array(C), B: new Float32Array(B),
    isolated: typeof SharedArrayBuffer !== "undefined" && self.crossOriginIsolated === true
  };
}
onmessage = () => {
  const s = bake();
  postMessage({
    P: s.P.buffer, N: s.N.buffer, C: s.C.buffer, B: s.B.buffer,
    isolated: s.isolated, wasm: false
  }, [s.P.buffer, s.N.buffer, s.C.buffer, s.B.buffer]);
};
