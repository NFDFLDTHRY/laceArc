# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 6 domain envelope

**Status:** EXECUTED PASS-6 ARTIFACT.
**Execution base:** 9c1e02ac0ad38dd9708a8c38dcd3a82c801ed5c4.
**Authority:** maps-level derivation from current Hands/manifest, branch contracts, Pass-5 target requirements and target audit. Not Core. Not acceptance. No target, carrier, encoding, allocator, Index width, or RM-A rule is selected.

## 1. Domain verdict

**SUPPORTED DOMAIN BOUNDED CONDITIONALLY.**

Current law closes the qualitative rule but not the product number:

- every retained row has one permanent position;
- positions do not wrap, alias, reuse, or renumber;
- a physical implementation is finite;
- therefore each implementation must declare a finite supported logical domain and refuse before the next permanent position would violate that domain.

What remains OPEN is the first supported implementation's required cardinality. No current source or accepted product ruling names a required row count or authoritative-byte lifetime.

That distinction matters:

~~~
finite implementation must declare Nmax      DERIVED / REQUIRED
actual required Nmax for first release       OPEN
native Wasm pointer width                    NOT IMPLIED
~~~

## 2. Mandatory domain tuple

Pass 6 uses:

~~~
D = (I, E, H, R, W, V)

I = logical Index domain
E = encoded retained-row envelope
H = total authoritative retained history supported
R = simultaneously resident Core bytes
W = disposable derived Core working-state bytes
V = holder / Layer-III / view bytes outside authoritative Core state
~~~

No statement about "memory size" is complete unless it names the member of D.

The governing separations are:

~~~
I != native pointer ABI
H != R
R != W
W != authoritative Lace
V != authoritative Lace
~~~

A later implementation may choose equality between some of these as a design decision, but current law does not supply that equality.

## 3. Logical Index court

Let b be the encoded logical Index width and r_b the count of representations reserved by a future encoding.

~~~
C_I(b, r_b) = 2^b - r_b
valid retained positions: 0 <= i < C_I
~~~

Current source does not specify r_b.

| Candidate logical encoding | Analytical cardinality | Encoded index payload before row metadata | Current status |
|---|---:|---:|---|
| 32-bit | 2^32 - r32 | 4 bytes | candidate only |
| packed 48-bit | 2^48 - r48 | 6 bytes | candidate only; not a claim about Rust ABI layout |
| 64-bit | 2^64 - r64 | 8 bytes | candidate only |
| other | source/requirement must justify it | OPEN | not invented here |

No candidate wins by having more bits.

### Target-independence test

For all three named candidates, current Lace semantics require arithmetic/comparison/address translation over the logical value. They do not require that the logical Index itself be a native Wasm pointer.

No current Core operation establishes:

~~~
Index = usize
Index = raw pointer
Index = Wasm linear-memory address
~~~

Therefore logical width alone does not select wasm32 or wasm64.

A future implementation that claims native-pointer equivalence is necessary must identify the exact operation that cannot be implemented with an explicit encoded logical Index plus carrier translation. That operation is not established in current law.

## 4. Supported-domain analytical tiers

These are analysis buckets only. They are not product requirements.

| Tier | Definition | What it tests |
|---|---|---|
| A | required H and required R both fit a chosen finite domain and chosen resident budget | ordinary bounded implementation |
| B | H may exceed R while stable logical positions remain representable | carrier/window separation |
| C | required R itself exceeds the memory32 resident domain | possible wasm64 pressure |
| D | required H exceeds a chosen logical Index cardinality | Index-width pressure independent of native pointers |

Current project evidence does not place the first supported implementation into A, B, C, or D because H, R, E, and the required lifetime remain OPEN.

## 5. Symbolic retained-row envelope

Final encoding remains OPEN. Pass 6 therefore fixes only the accounting obligations.

WORD:

~~~
B_WORD =
    B_tag
  + B_payload
  + B_word_required_metadata
  + B_word_padding
~~~

POINTER / binary Join:

~~~
B_PTR =
    B_tag
  + 2 * B_Index
  + B_ptr_required_metadata
  + B_ptr_padding
~~~

For WORD fraction p:

~~~
B_avg = p * B_WORD + (1 - p) * B_PTR
~~~

For resident Core bytes R:

~~~
N_resident = floor(R / B_avg)
~~~

For authoritative retained bytes H_bytes:

~~~
N_authoritative = floor(H_bytes / B_avg)
~~~

These are scenario equations, not an encoding decision.

### Variable WORD payloads

Current law does not establish a fixed WORD payload byte length. If payloads are variable, capacity analysis must use an explicit bounded scenario such as maximum payload, measured distribution, or another accepted envelope. An average without a stated workload cannot prove exhaustion safety.

## 6. What encoding width changes

Increasing B_Index directly increases B_PTR by two encoded Index fields per POINTER before metadata/padding.

That is a real storage cost.

It still does not imply a wider native Wasm pointer ABI. A wasm32 process can in principle manipulate explicit wider logical integers while translating them into a bounded resident carrier window. Whether a specific implementation does so correctly remains future proof work.

## 7. Required declaration for any future implementation

Before an implementation can claim its supported domain it must point to:

1. chosen logical Index encoding and any reserved representations;
2. maximum authoritative row count and/or authoritative bytes;
3. row encoding envelope sufficient to prove the maximum;
4. maximum simultaneously resident Core bytes;
5. refusal threshold before Index or carrier exhaustion;
6. mapping from a logical position to authoritative carrier data;
7. proof that exhaustion cannot wrap, reuse, renumber, truncate, or rewrite prior Lace.

Without those, "grows forever" is not an implementation contract.

## 8. Pass-6 result

Pass 6 closes the category error:

~~~
permanent logical position
    does not imply
native 64-bit pointer
~~~

It does not close the numeric domain.

**Domain specification verdict: SUPPORTED DOMAIN BOUNDED CONDITIONALLY.**
Exact required cardinality: **OPEN / product-ruling debt**.
Target credit awarded: **none**.
