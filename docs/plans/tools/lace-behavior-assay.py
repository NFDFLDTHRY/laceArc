#!/usr/bin/env python3
"""Mechanism-agnostic behavioral-goal assay self-test.

Host-side Lab tooling only. No network. No src/. Not Core and cannot become
Core. This tool validates observable behavioral relations in a synthetic
control fixture. It does NOT implement HCC-A, Coffee Cup, Water, a holder,
RM-A, or a Lace behavioral candidate.

The fixture contains expected_pass only because this is an assay SELF-TEST.
A future real candidate must never receive those answer labels.
"""
import json, pathlib, sys

FIX = pathlib.Path(__file__).resolve().parents[1] / "fixtures" / "behavioral-goals-assay-controls-v0.1.0.json"

def result(ok, reason):
    return bool(ok), reason

def check_h_g1(o):
    return result(o.get("structure_before") == o.get("structure_after")
                  and not o.get("history_rewritten", True)
                  and o.get("holder_local") is True,
                  "structure preserved; interpretation remains holder-local")

def check_h_g2(o):
    return result(o.get("round1_before") == o.get("round1_after")
                  and o.get("feedback_recorded") is True
                  and o.get("round2_context_source") == "round1_feedback",
                  "feedback reaches later context without rewriting round 1")

def check_h_g3(o):
    return result(o.get("holders_separate") is True
                  and o.get("shared_structure_a") == o.get("shared_structure_b")
                  and o.get("meaning_transfer") is False,
                  "shared pointable structure without forced meaning transfer")

def check_c_g1(o):
    vals=[o.get(k) for k in ("precondition","release","trajectory","impact","aftermath")]
    ok=all(isinstance(x,(int,float)) for x in vals) and vals == sorted(vals) and len(set(vals)) == 5
    return result(ok,"causal moments remain ordered and distinct")

def check_c_g2(o):
    seq=o.get("outcomes_by_time")
    if not isinstance(seq,list) or len(seq) < 2:
        return result(False,"need at least two pre-impact opportunity sets")
    sets=[set(x) for x in seq if isinstance(x,list)]
    ok=len(sets)==len(seq) and all(sets[i+1].issubset(sets[i]) for i in range(len(sets)-1)) and o.get("post_impact_can_change") is False
    return result(ok,"intervention opportunity does not expand and impact stays closed")

def check_c_g3(o):
    ok=(o.get("impact_a")==o.get("impact_b")
        and o.get("aftermath_a") != o.get("aftermath_b")
        and o.get("round2_condition_a") != o.get("round2_condition_b")
        and o.get("causal_link_declared") is True)
    return result(ok,"aftermath changes later conditions without rewriting impact")

def check_w_g1(o):
    return result(o.get("anchored_claim_admitted") is True
                  and o.get("unanchored_claim_admitted") is False,
                  "pointability gates observation status")

def check_w_g2(o):
    return result((o.get("shared_anchor_count") or 0) == 0
                  and o.get("crossing_success") is False,
                  "pressure without shared footing is not crossing")

def check_w_g3(o):
    ok=(o.get("inventories_separate") is True
        and o.get("hidden_merge") is False
        and o.get("shared_before") is False
        and o.get("crossing_before") is False
        and o.get("shared_after") is True
        and o.get("crossing_after") is True)
    return result(ok,"separate inventories gain crossing only after shared footing")

def check_w_g4(o):
    return result(bool(o.get("missing_evidence_named"))
                  and o.get("fabricated_evidence") is False
                  and o.get("resolved_without_evidence") is False,
                  "missing evidence is named and not fabricated")

def check_x_g1(o):
    ch=o.get("channels")
    ok=(isinstance(ch,dict) and len(ch) >= 3
        and o.get("provenance_preserved") is True
        and o.get("fused_state") is False)
    return result(ok,"feedback paths remain distinguishable")

def check_x_g2(o):
    return result(o.get("holders_separate") is True
                  and o.get("shared_structure_a")==o.get("shared_structure_b")
                  and o.get("meaning_transfer") is False,
                  "shared referent does not force shared meaning")

CHECKS={
    "H-G1":check_h_g1, "H-G2":check_h_g2, "H-G3":check_h_g3,
    "C-G1":check_c_g1, "C-G2":check_c_g2, "C-G3":check_c_g3,
    "W-G1":check_w_g1, "W-G2":check_w_g2, "W-G3":check_w_g3, "W-G4":check_w_g4,
    "X-G1":check_x_g1, "X-G2":check_x_g2,
}

def main():
    path=pathlib.Path(sys.argv[1]) if len(sys.argv)>1 else FIX
    if not path.exists():
        print(f"FIXTURE MISSING: {path}",file=sys.stderr); return 1
    fx=json.loads(path.read_text())
    cases=fx.get("cases",[])
    print(f"fixture : {fx.get('fixture')} v{fx.get('version')}")
    print("mode    : assay self-test; labels[] are ignored by every checker")
    print(f"{'goal':<6}{'case':<42}{'expect':>8}{'actual':>8}{'match':>8}  reason")
    print("-"*110)
    mismatches=0
    seen=set()
    for case in cases:
        gid=case.get("goal_id")
        cid=case.get("case_id","?")
        expected=case.get("expected_pass")
        if gid not in CHECKS:
            print(f"{gid!s:<6}{cid:<42}{str(expected):>8}{'UNKNOWN':>8}{'NO':>8}  unknown goal id")
            mismatches+=1
            continue
        actual,reason=CHECKS[gid](case.get("observed",{}))
        match=(actual is expected)
        if not match: mismatches+=1
        seen.add((gid,bool(expected)))
        print(f"{gid:<6}{cid:<42}{str(expected):>8}{str(actual):>8}{('yes' if match else 'NO'):>8}  {reason}")
    print("-"*110)
    missing=[]
    for gid in CHECKS:
        for expected in (True,False):
            if (gid,expected) not in seen:
                missing.append(f"{gid}:{expected}")
    if missing:
        print("MISSING CONTROL POLARITY: "+", ".join(missing),file=sys.stderr)
        mismatches+=len(missing)
    print(f"\ncases={len(cases)} goals={len(CHECKS)} mismatches={mismatches}")
    print("A green self-test proves only that the assay predicates reject their declared anti-goals.")
    print("It is NOT evidence that current Lace or any holder candidate satisfies the behavioral goals.")
    return 0 if mismatches==0 else 1

if __name__=="__main__":
    sys.exit(main())
