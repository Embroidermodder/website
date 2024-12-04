#!/bin/sh

git clone https://github.com/embroidermodder/embroidermodder

python3 -m pip install --upgrade pip
python3 -m venv .

source bin/activate

./bin/pip install mkdocs
./bin/pip install mkdocs-bibtex
./bin/pip install mkdocs-with-pdf
./bin/pip install mkdocs-material
./bin/pip install mkdocs-table-reader-plugin
./bin/pip install markdown-grid-tables

rm -fr _site

./bin/mkdocs build

mv site _site
