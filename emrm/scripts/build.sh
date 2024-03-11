#!/bin/bash

python3 scripts/thread_tables.py || exit 1

pdflatex refman.tex || exit 1
makeindex refman || exit 1
bibtex refman.aux || exit 1
pdflatex refman.tex || exit 1
pdflatex refman.tex || exit 1
pdflatex refman.tex || exit 1
