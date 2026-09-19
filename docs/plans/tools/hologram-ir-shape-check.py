#!/usr/bin/env python3
"""Validate a HologramIr golden/fixture JSON document.

Host-side only. No network. No src/. Exit 0 on pass, 1 on fail.

Supports ir_version 0.1.0 (doors/edges/transforms) and 0.2.0
(+ pieces / seams / binds). Default fixture is v0.2.0.
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

REQUIRED_DOOR_IDS = (
    "strand",
    "word",
    "pointer",
    "route",
    "view_star",
    "view_proj",
    "core",
)
REQUIRED_PIECE_IDS = tuple(f"P{i}" for i in range(1, 16))
ALLOWED_EDGE_KINDS = frozenset({"call", "birth_before", "premise", "dataflow"})
ALLOWED_AUTHORITIES = frozenset({"LAW", "SOURCE", "PROPOSAL"})
ALLOWED_VERSIONS = frozenset({"0.1.0", "0.2.0"})
DEFAULT_FIXTURE = (
    Path(__file__).resolve().parents[1] / "fixtures" / "hologram-ir-golden-v0.2.0.json"
)


def fail(msg: str, errors: list[str]) -> None:
    errors.append(msg)


def validate(doc: object) -> list[str]:
    errors: list[str] = []
    if not isinstance(doc, dict):
        return ["root must be a JSON object"]

    version = doc.get("ir_version")
    if version not in ALLOWED_VERSIONS:
        fail(
            f"ir_version must be one of {sorted(ALLOWED_VERSIONS)} (got {version!r})",
            errors,
        )

    if doc.get("mode") != "fixture":
        fail(f"mode must be 'fixture' for golden (got {doc.get('mode')!r})", errors)

    source = doc.get("source")
    if not isinstance(source, dict):
        fail("source must be an object", errors)
    elif source.get("emission_gate") != "blocked":
        fail(
            f"source.emission_gate must be 'blocked' (got {source.get('emission_gate')!r})",
            errors,
        )

    door_ids: set[str] = set()
    doors = doc.get("doors")
    if not isinstance(doors, list):
        fail("doors must be a list", errors)
    else:
        if len(doors) != 7:
            fail(f"doors length must be 7 (got {len(doors)})", errors)
        ids: list[str] = []
        for i, door in enumerate(doors):
            if not isinstance(door, dict):
                fail(f"doors[{i}] must be an object", errors)
                continue
            did = door.get("id")
            if not isinstance(did, str):
                fail(f"doors[{i}].id must be a string", errors)
            else:
                ids.append(did)
        door_ids = set(ids)
        missing = [d for d in REQUIRED_DOOR_IDS if d not in ids]
        extra = [d for d in ids if d not in REQUIRED_DOOR_IDS]
        if missing:
            fail(f"doors missing required ids: {missing}", errors)
        if extra:
            fail(f"doors has unexpected ids: {extra}", errors)

    edges = doc.get("edges")
    if not isinstance(edges, list):
        fail("edges must be a list", errors)
    else:
        for i, edge in enumerate(edges):
            if not isinstance(edge, dict):
                fail(f"edges[{i}] must be an object", errors)
                continue
            kind = edge.get("kind")
            if kind not in ALLOWED_EDGE_KINDS:
                fail(
                    f"edges[{i}].kind {kind!r} not in {sorted(ALLOWED_EDGE_KINDS)}",
                    errors,
                )
            frm = edge.get("from")
            to = edge.get("to")
            if door_ids:
                if not isinstance(frm, str) or frm not in door_ids:
                    fail(f"edges[{i}].from {frm!r} not in doors", errors)
                if not isinstance(to, str) or to not in door_ids:
                    fail(f"edges[{i}].to {to!r} not in doors", errors)

    transforms = doc.get("transforms")
    if not isinstance(transforms, list):
        fail("transforms must be a list", errors)
    else:
        for i, tx in enumerate(transforms):
            if not isinstance(tx, dict):
                fail(f"transforms[{i}] must be an object", errors)
                continue
            if tx.get("emission_touch") is not False:
                fail(
                    f"transforms[{i}].emission_touch must be false "
                    f"(got {tx.get('emission_touch')!r})",
                    errors,
                )
            door_id = tx.get("door_id")
            if door_ids:
                if not isinstance(door_id, str) or door_id not in door_ids:
                    fail(
                        f"transforms[{i}].door_id {door_id!r} not in doors",
                        errors,
                    )

    diags = doc.get("diagnostics")
    if not isinstance(diags, list) or len(diags) == 0:
        fail("diagnostics must be a non-empty list", errors)

    # --- v0.2.0 additive: pieces / seams / binds ---
    if version == "0.2.0":
        piece_ids: set[str] = set()
        pieces = doc.get("pieces")
        if not isinstance(pieces, list):
            fail("pieces must be a list (ir_version 0.2.0)", errors)
        else:
            if len(pieces) != 15:
                fail(f"pieces length must be 15 (got {len(pieces)})", errors)
            seen: list[str] = []
            for i, piece in enumerate(pieces):
                if not isinstance(piece, dict):
                    fail(f"pieces[{i}] must be an object", errors)
                    continue
                pid = piece.get("id")
                if not isinstance(pid, str):
                    fail(f"pieces[{i}].id must be a string", errors)
                else:
                    seen.append(pid)
                for req in ("title", "kind", "summary"):
                    if not isinstance(piece.get(req), str) or not piece.get(req):
                        fail(f"pieces[{i}].{req} must be a non-empty string", errors)
                cites = piece.get("graphic_cites")
                if not isinstance(cites, list) or not all(
                    isinstance(c, str) for c in cites
                ):
                    fail(f"pieces[{i}].graphic_cites must be a list of strings", errors)
            piece_ids = set(seen)
            missing_p = [p for p in REQUIRED_PIECE_IDS if p not in piece_ids]
            extra_p = [p for p in seen if p not in REQUIRED_PIECE_IDS]
            if missing_p:
                fail(f"pieces missing required ids: {missing_p}", errors)
            if extra_p:
                fail(f"pieces has unexpected ids: {extra_p}", errors)
            if len(seen) != len(piece_ids):
                fail("pieces ids must be unique", errors)

        seams = doc.get("seams")
        if not isinstance(seams, list) or len(seams) == 0:
            fail("seams must be a non-empty list (ir_version 0.2.0)", errors)
        else:
            seam_ids: set[str] = set()
            for i, seam in enumerate(seams):
                if not isinstance(seam, dict):
                    fail(f"seams[{i}] must be an object", errors)
                    continue
                sid = seam.get("id")
                if not isinstance(sid, str) or not sid:
                    fail(f"seams[{i}].id must be a non-empty string", errors)
                else:
                    if sid in seam_ids:
                        fail(f"seams duplicate id {sid!r}", errors)
                    seam_ids.add(sid)
                if not isinstance(seam.get("label"), str) or not seam.get("label"):
                    fail(f"seams[{i}].label must be a non-empty string", errors)
                contains = seam.get("contains_piece_ids")
                if not isinstance(contains, list) or not contains:
                    fail(
                        f"seams[{i}].contains_piece_ids must be a non-empty list",
                        errors,
                    )
                elif piece_ids:
                    for j, pid in enumerate(contains):
                        if pid not in piece_ids:
                            fail(
                                f"seams[{i}].contains_piece_ids[{j}] {pid!r} not in pieces",
                                errors,
                            )

        binds = doc.get("binds")
        if not isinstance(binds, list) or len(binds) == 0:
            fail("binds must be a non-empty list (ir_version 0.2.0)", errors)
        else:
            for i, bind in enumerate(binds):
                if not isinstance(bind, dict):
                    fail(f"binds[{i}] must be an object", errors)
                    continue
                pid = bind.get("piece_id")
                did = bind.get("door_id")
                role = bind.get("role")
                auth = bind.get("authority")
                if piece_ids and (not isinstance(pid, str) or pid not in piece_ids):
                    fail(f"binds[{i}].piece_id {pid!r} not in pieces", errors)
                if door_ids and (not isinstance(did, str) or did not in door_ids):
                    fail(f"binds[{i}].door_id {did!r} not in doors", errors)
                if not isinstance(role, str) or not role:
                    fail(f"binds[{i}].role must be a non-empty string", errors)
                if auth not in ALLOWED_AUTHORITIES:
                    fail(
                        f"binds[{i}].authority {auth!r} not in {sorted(ALLOWED_AUTHORITIES)}",
                        errors,
                    )
            # Golden honesty: every bind in fixture should be PROPOSAL packaging
            if doc.get("mode") == "fixture":
                non_prop = [
                    b.get("piece_id")
                    for b in binds
                    if isinstance(b, dict) and b.get("authority") != "PROPOSAL"
                ]
                if non_prop:
                    fail(
                        f"fixture binds must use authority PROPOSAL "
                        f"(non-PROPOSAL piece_ids: {non_prop})",
                        errors,
                    )

    elif version == "0.1.0":
        # Historical fixture: pieces/seams/binds must be absent or empty
        for key in ("pieces", "seams", "binds"):
            if key in doc and doc[key] not in (None, [], {}):
                fail(
                    f"{key} is not part of ir_version 0.1.0 "
                    f"(found non-empty); use 0.2.0",
                    errors,
                )

    return errors


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "path",
        nargs="?",
        default=str(DEFAULT_FIXTURE),
        help="path to HologramIr JSON (default: golden v0.2.0 fixture)",
    )
    args = parser.parse_args(argv)
    path = Path(args.path)

    try:
        text = path.read_text(encoding="utf-8")
        doc = json.loads(text)
    except FileNotFoundError:
        print(f"FAIL: file not found: {path}", file=sys.stderr)
        return 1
    except json.JSONDecodeError as exc:
        print(f"FAIL: invalid JSON in {path}: {exc}", file=sys.stderr)
        return 1
    except OSError as exc:
        print(f"FAIL: cannot read {path}: {exc}", file=sys.stderr)
        return 1

    errors = validate(doc)
    doors_n = len(doc.get("doors", [])) if isinstance(doc, dict) else 0
    edges_n = len(doc.get("edges", [])) if isinstance(doc, dict) else 0
    tx_n = len(doc.get("transforms", [])) if isinstance(doc, dict) else 0
    diag_n = len(doc.get("diagnostics", [])) if isinstance(doc, dict) else 0
    pieces_n = len(doc.get("pieces", [])) if isinstance(doc, dict) else 0
    seams_n = len(doc.get("seams", [])) if isinstance(doc, dict) else 0
    binds_n = len(doc.get("binds", [])) if isinstance(doc, dict) else 0

    summary = (
        f"summary: doors={doors_n} edges={edges_n} transforms={tx_n} "
        f"diagnostics={diag_n} pieces={pieces_n} seams={seams_n} binds={binds_n}"
    )

    if errors:
        print(f"FAIL: {path.name} — {len(errors)} error(s)")
        for err in errors:
            print(f"  - {err}")
        print(summary)
        return 1

    print(
        f"PASS: {path.name} ir_version={doc.get('ir_version')} "
        f"mode={doc.get('mode')} emission_gate={doc.get('source', {}).get('emission_gate')}"
    )
    print(summary)
    return 0


if __name__ == "__main__":
    sys.exit(main())
