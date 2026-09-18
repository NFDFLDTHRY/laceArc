# Station files

One file per doc station, written by [`../coord.sh`](../coord.sh) on claim, release and refresh. Read them with `./docs/coord/coord.sh status`. Do not edit by hand.

`OWNS` here is a description. The authoritative path→station map is the `RULES` table inside `coord.sh`; change the table first, then the description. Claim `coord` before either.

Gear shafts have no file here. Their state is `docs/gearing/claims/<shaft>.claim`, owned by `gear:<shaft>`.
