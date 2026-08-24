# CV

This repository contains my Curriculum Vitae, written in [Typst](https://typst.app/).

## Building

To build the PDF manually, you can run the build script:

```bash
./scripts/build.sh
```

This will compile the `src/main.typ` file and produce a PDF in the root directory. If you don't have `typst` installed but you have `nix`, the script will automatically use `nix run` to compile it.

## Repository Structure

- `src/`: Contains the Typst source files.
- `scripts/`: Contains utility scripts (e.g., `build.sh`).
- `.git/hooks/pre-commit`: A git hook that automatically builds and stages the PDF before every commit.
