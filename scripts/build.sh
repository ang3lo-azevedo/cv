#!/usr/bin/env bash
set -e

if [ -n "$1" ]; then
    ROOT_DIR="$(cd "$1" && pwd)"
else
    DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
    ROOT_DIR="$(dirname "$DIR")"
fi

if [ -d "$ROOT_DIR/public" ]; then
    TARGET="$ROOT_DIR/Angelo_Azevedo_CV_$(date +%Y_%m).pdf"
else
    TARGET="$ROOT_DIR/Angelo_Azevedo_CV_$(date +%Y_%m)_Redacted.pdf"
fi

if command -v typst >/dev/null 2>&1; then
    typst compile --root "$ROOT_DIR" "$ROOT_DIR/src/main.typ" "$TARGET"
    typst compile --root "$ROOT_DIR" --format png --ppi 144 "$ROOT_DIR/src/main.typ" "$ROOT_DIR/preview.png"
elif command -v nix >/dev/null 2>&1; then
    nix run nixpkgs#typst -- compile --root "$ROOT_DIR" "$ROOT_DIR/src/main.typ" "$TARGET"
    nix run nixpkgs#typst -- compile --root "$ROOT_DIR" --format png --ppi 144 "$ROOT_DIR/src/main.typ" "$ROOT_DIR/preview.png"
else
    echo "Error: typst is not installed and nix is not available." >&2
    exit 1
fi

echo "Compiled to $TARGET"
