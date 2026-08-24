#!/usr/bin/env bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
ROOT_DIR="$(dirname "$DIR")"

TARGET="$ROOT_DIR/Angelo_Azevedo_CV_$(date +%Y_%m)_Redacted.pdf"

if command -v typst >/dev/null 2>&1; then
    typst compile "$ROOT_DIR/src/main.typ" "$TARGET"
    typst compile --format png --ppi 144 "$ROOT_DIR/src/main.typ" "$ROOT_DIR/preview.png"
elif command -v nix >/dev/null 2>&1; then
    nix run nixpkgs#typst -- compile "$ROOT_DIR/src/main.typ" "$TARGET"
    nix run nixpkgs#typst -- compile --format png --ppi 144 "$ROOT_DIR/src/main.typ" "$ROOT_DIR/preview.png"
else
    echo "Error: typst is not installed and nix is not available." >&2
    exit 1
fi

echo "Compiled to $TARGET"
