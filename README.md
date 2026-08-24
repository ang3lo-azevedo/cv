# Ângelo Azevedo's CV

This is the public repository for my Curriculum Vitae, written in [Typst](https://typst.app/).

The source code for the layout, design, and content sections are completely open source. Private information, such as my personal phone number, is redacted with placeholders in this public version.

## 🚀 Building

To compile the redacted PDF manually, you can run:

```bash
./scripts/build.sh
```

This will produce `Angelo_Azevedo_CV_YYYY_MM_Redacted.pdf`.

## 📁 Repository Structure

- `src/cv_layout.typ`: The core Typst template function that defines the styling, layout, and document structure.
- `src/sections/`: Modular Typst files for different CV sections (Experience, Education, CTFs, Projects, etc.).
- `scripts/build.sh`: Build script to easily compile the document.
