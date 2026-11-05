#!/usr/bin/env bash
set -e

if [ -n "$1" ]; then
    ROOT_DIR="$(cd "$1" && pwd)"
else
    DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
    ROOT_DIR="$(dirname "$DIR")"
fi

DATE_SUFFIX="$(date +%Y_%m)"

if [ -d "$ROOT_DIR/public" ]; then
    TARGET="$ROOT_DIR/Angelo_Azevedo_CV_${DATE_SUFFIX}.pdf"
else
    TARGET="$ROOT_DIR/Angelo_Azevedo_CV_${DATE_SUFFIX}_Redacted.pdf"
fi

compile_typst() {
    local src="$1"
    local out="$2"
    if command -v typst >/dev/null 2>&1; then
        typst compile --root "$ROOT_DIR" "$src" "$out"
    elif command -v nix >/dev/null 2>&1; then
        nix run nixpkgs#typst -- compile --root "$ROOT_DIR" "$src" "$out"
    else
        echo "Error: typst is not installed and nix is not available." >&2
        exit 1
    fi
}

compile_typst "$ROOT_DIR/src/main.typ" "$TARGET"

# Compile any tailored profiles (e.g. 26/*/src/main.typ, 26/*/main.typ, src/*/main.typ)
for sub_src in "$ROOT_DIR"/26/*/src/main.typ "$ROOT_DIR"/26/*/main.typ "$ROOT_DIR"/src/*/main.typ; do
    if [ -f "$sub_src" ]; then
        sub_dir="$(dirname "$sub_src")"
        if [ "$(basename "$sub_dir")" = "src" ]; then
            sub_name="$(basename "$(dirname "$sub_dir")")"
            target_dir="$(dirname "$sub_dir")"
        else
            sub_name="$(basename "$sub_dir")"
            target_dir="$sub_dir"
        fi
        sub_target="$ROOT_DIR/Angelo_Azevedo_CV_${DATE_SUFFIX}_${sub_name^^}.pdf"
        compile_typst "$sub_src" "$sub_target"
        compile_typst "$sub_src" "$target_dir/Angelo_Azevedo_CV_${DATE_SUFFIX}.pdf"
        echo "Compiled tailored CV to $sub_target and $target_dir/Angelo_Azevedo_CV_${DATE_SUFFIX}.pdf"
    fi
done

if command -v typst >/dev/null 2>&1; then
    typst compile --root "$ROOT_DIR" --format png --ppi 144 "$ROOT_DIR/src/main.typ" "$ROOT_DIR/preview.png"
elif command -v nix >/dev/null 2>&1; then
    nix run nixpkgs#typst -- compile --root "$ROOT_DIR" --format png --ppi 144 "$ROOT_DIR/src/main.typ" "$ROOT_DIR/preview.png"
fi

echo "Compiled to $TARGET"
