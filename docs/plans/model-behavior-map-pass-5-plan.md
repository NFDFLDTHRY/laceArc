# Model behaviors × equations — Pass 5 of 6 PLAN

**Status:** **`PLAN`** · not executed. **Station:** maps (HELD `Grok-maps` · BASE `688cd14`).
**Depends on:** passes 1–4 EXECUTED.
**Emission:** `[GAP]`. No `src/`. Parameters stay parameters.

Pass 4 tagged D1. Pass 5 lists what the model still **leaves free** — as named parameters, not as answers.

---

## 0. One question

Which quantities may vary across legal lives of the partial model, and what is each quantity’s *domain*, without picking a point in that domain?

## 1. One result (on execute)

[`model-behavior-map-pass-5-params.md`](model-behavior-map-pass-5-params.md) — parameter register.

Each row: name · domain · not a value · hole it is.

---

## 2. Parameters execute must name

| Param | Domain (test) | Must not pick |
|---|---|---|
| \(\theta_{\mathrm{when}}\) | whether this arrival continues with L4 | a schedule |
| \(\theta_k\) | \(k \ge 1\) | \(k=2\) |
| \(\theta_{\mathrm{group}}\) | arrival-boundaries other than confirmed `0005–0007` | extra L5 groups |
| \(\theta_{\mathrm{WORD2}}\) | later-arrival WORD vs spoken Q0 | silence D1 `0003` |
| \(\theta_{\mathrm{G1}}\) | word identity | a tokenizer |
| \(\theta_{\mathrm{reqPTR}}\) | required PTR→PTR on later pass | 0007 as required |
| \(\theta_{\mathrm{left}}\) | leftover adjacency as store or not | a stored relation |

These are the free coordinates of the behavior space. Filling one is pass-breach.

## 3. Forbidden this pass

- Assign a value to any \(\theta\)
- Start pass 6 soundness unless immediately authorized
- Open `src/`

## 4. Accept pass 5 when

- Every param in §2 has a domain and an explicit “value not chosen.”
- Plan `PLAN` → `EXECUTED`. maps released unless pass 6 is immediately authorized.

## Steward test

Shoe in hands. A parameter is a place the cord has not decided. **Naming the axis is not picking a point.**
