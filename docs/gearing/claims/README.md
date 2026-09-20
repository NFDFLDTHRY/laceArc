# Shaft claim state

One file per gearing shaft, written by [`../claim.sh`](../claim.sh). **Do not edit by hand** — and never edit a shaft you do not hold. Read the live state with `./docs/gearing/claim.sh status`.

| Claim file | Shaft | Data file it guards |
|---|---|---|
| [axle.claim](axle.claim) | `gear:axle` | [`../contracts-axle.js`](../contracts-axle.js) |
| [gears.claim](gears.claim) | `gear:gears` | [`../contracts-gears.js`](../contracts-gears.js) |
| [trainA.claim](trainA.claim) | `gear:trainA` | [`../contracts-trainA.js`](../contracts-trainA.js) |
| [trainB.claim](trainB.claim) | `gear:trainB` | [`../contracts-trainB.js`](../contracts-trainB.js) |
| [trainC.claim](trainC.claim) | `gear:trainC` | [`../contracts-trainC.js`](../contracts-trainC.js) |
| [cells.claim](cells.claim) | `gear:cells` | [`../contracts-cells.js`](../contracts-cells.js) |
| [escape.claim](escape.claim) | `gear:escape` | [`../contracts-escape.js`](../contracts-escape.js) |
| [audits.claim](audits.claim) | `gear:audits` | [`../contracts-audits.js`](../contracts-audits.js) |

Protocol: [`../CLAIMS.md`](../CLAIMS.md). One shaft per agent; zero or one drop per shaft per tick; if you cannot tell whether a shaft is held, it is held.

Layer III only. Not Core. POINTER emission stays `[GAP]`.
