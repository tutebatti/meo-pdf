# meo-pdf
Merge two files created with exeo-pdf (https://github.com/tutebatti/exeo-pdf).

Based on and requires pdftk (https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/).

This is useful when processing a scanned book with original source and translation on pages facing each other: the respective pages extracted with exeo-pdf and processed, e.g., for OCR in different scripts/languages, are now be merged again.

Usage: 'meo-pdf file.pdf', where *file.pdf* is the original file exeo-pdf has been executed on.

Files created by exeo-pdf should not be renamed.
