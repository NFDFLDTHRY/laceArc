# Adjacent reference

These works are **not** the source of record for laceArc. The source of record is `docs/graphics/`.

They sit next to the model. Do not import their axioms into Core because a passage feels similar to wire, star, strand, token, or graph.

Do not commit PDF binaries to this public repository.

## Holdings (local / project workspace only)

Keep copies off `main`. Suggested local names (gitignored):

- `refs/local/kauffman-knots-and-physics-4ed.pdf`
- `refs/local/rowlands-zero-to-infinity.pdf`
- `refs/local/xiao-zhu-foundations-of-llms.pdf`
- `refs/local/petersen-zech-mathematical-theory-of-deep-learning.pdf`
- `refs/local/bi-et-al-agentscope-2609.02371.pdf`

In this Grok project workspace the same files live under `artifacts/refs/`.

## Catalog

### Knot series (metaphor neighborhood)

#### 1. Louis H. Kauffman — *Knots and Physics*, 4th edition

- Series on Knots and Everything, Vol. 53
- World Scientific, 2013
- ISBN 978-981-4383-00-4 / 978-981-4383-01-1

Lace talks in wire, over/under, threading, and projection. That is metaphor kinship, not a license to implement a knot polynomial.

#### 2. Peter Rowlands — *Zero to Infinity: The Foundations of Physics*

- Series on Knots and Everything, Vol. 41
- World Scientific, 2007
- ISBN 978-981-270-914-1

Same series nexus. Not Rowlands’ physics stack.

### Language and learning (contrast neighborhood)

#### 3. Tong Xiao and Jingbo Zhu — *Foundations of Large Language Models*

- arXiv:2501.09223v2 [cs.CL], 15 Jun 2025 / dated June 17, 2025 in the text
- NLP Lab, Northeastern University & NiuTrans Research
- Selection from https://github.com/NiuTrans/NLPBook
- License printed in the PDF: Creative Commons Attribution-NonCommercial 4.0
- https://arxiv.org/abs/2501.09223

Pre-training, generation, prompting, alignment, inference. Adjacent because Lace ingests words. Contrast: this book treats language as modeled knowledge; Lace forbids stored meaning. Do not import tokenizers, embeddings, or prompt stacks as Core.

CC BY-NC: even though arXiv hosts it, do not re-license it under this repo’s Apache-2.0. Cite and link.

#### 4. Philipp Petersen and Jakob Zech — *Mathematical theory of deep learning*

- arXiv:2407.18384v4 [cs.LG], 15 Jan 2026 / dated January 16, 2026 in the text
- Universität Wien; Universität Heidelberg
- https://arxiv.org/abs/2407.18384

Approximation, ReLU calculus, depth. Adjacent if someone asks whether a star is a network. It is not. Do not replace the 1D array with a trained model.

### Agent diagnosis (steward neighborhood)

#### 5. Jiayi Bi, Yanjie Gao, Yuanmin Xie, Liqun Li, Tianyin Xu, Fan Yang, Mao Yang — *Diagnosing with Insights: Structured Analysis of Agent Failures via Behavioral Abstractions*

- arXiv:2609.02371v1 [cs.AI], 2 Sep 2026
- Tsinghua; Microsoft Research; Microsoft; UIUC
- Tool name in the paper: AGENTSCOPE
- https://arxiv.org/abs/2609.02371

Reasoning-Action graphs and neural invariants for agent failure localization. Adjacent to the LaceArc *Grok Bot* (how a steward fails), not to Lace storage. Do not add ReAG or a failure taxonomy as a second store beside the append-only line.

## Series frame (from Rowlands front matter)

Knots as a meeting place for apparently separate ideas. That is the only series claim laceArc needs.

## Rule for readers and bots

If a sentence in any of these works would change WORD, POINTER, star, or the governing rule, discard it for Core and keep it as reading notes. Pointer emission remains a `[GAP]` until written in `docs/pointer-emission.md` from the four graphics, not from these volumes.
