#!/usr/bin/env python3
"""Validate a HologramIr golden/fixture JSON document.

Host-side only. No network. No src/. Exit 0 on pass, 1 on fail.
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
ALLOWED_EDGE_KINDS = frozenset({"call", "birth_before", "premise", "dataflow"})
DEFAULT_FIXTURE = Path(__file__).resolve().parents[1] / "fixtures" / "hologram-ir-golden-v0.1.0.json"


def fail(msg: str, errors: list[str]) -> None:
    errors.append(msg)


def validate(doc: object) -> list[str]:
    errors: list[str] = []
    if not isinstance(doc, dict):
        return ["root must be a JSON object"]

    if doc.get("ir_version") != "0.1.0":
        fail(f"ir_version must be '0.1.0' (got {doc.get('ir_version')!r})", errors)

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

    doors = doc.get("doors")
    if not isinstance(doors, list):
        fail("doors must be a list", errors)
    else:
        if len(doors) != 7:
            fail(f"doors length must be 7 (got {len(doors)})", errors)
        ids = []
        for i, door in enumerate(doors):
            if not isinstance(door, dict):
                fail(f"doors[{i}] must be an object", errors)
                continue
            did = door.get("id")
            if not isinstance(did, str):
                fail(f"doors[{i}].id must be a string", errors)
            else:
                ids.append(did)
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

    diags = doc.get("diagnostics")
    if not isinstance(diags, list) or len(diags) == 0:
        fail("diagnostics must be a non-empty list", errors)

    return errors


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "path",
        nargs="?",
        default=str(DEFAULT_FIXTURE),
        help="path to HologramIr JSON (default: golden fixture)",
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

    if errors:
        print(f"FAIL: {path.name} — {len(errors)} error(s)")
        for err in errors:
            print(f"  - {err}")
        print(
            f"summary: doors={doors_n} edges={edges_n} "
            f"transforms={tx_n} diagnostics={diag_n}"
        )
        return 1

    print(
        f"PASS: {path.name} ir_version={doc.get('ir_version')} "
        f"mode={doc.get('mode')} emission_gate={doc.get('source', {}).get('emission_gate')}"
    )
    print(
        f"summary: doors={doors_n} edges={edges_n} "
        f"transforms={tx_n} diagnostics={diag_n}"
    )
    return 0


if __name__ == "__main__":
    sys.exit(main())
