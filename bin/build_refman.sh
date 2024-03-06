#!/bin/bash

sudo apt-get update &> deps.log
sudo apt-get upgrade &>> deps.log
sudo apt-get install texlive texlive-latex-extra &>> deps.log

# mandoc -c -O width=80 -T ascii docs/embroider.1 > docs/embroider.txt || exit 1

python3 bin/thead_tables.py

echo "Building Reference Manual..."

pdflatex refman.tex || exit 1
makeindex refman || exit 1
bibtex refman.aux || exit 1
pdflatex refman.tex || exit 1
pdflatex refman.tex || exit 1
pdflatex refman.tex || exit 1

echo "Reference Manual successfully built."
