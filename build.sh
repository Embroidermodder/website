#!/bin/bash

python3 -m pip install --upgrade pip
python3 -m venv .
source bin/activate

./bin/pip install mkdocs
./bin/pip install mkdocs-material
./bin/pip install markdown-grid-tables
./bin/pip install sphinx
./bin/pip install furo

cd emrm
make html
mv _build/html ../docs/docs/emrm
cd ..

./bin/mkdocs build

