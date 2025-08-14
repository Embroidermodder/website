#!/bin/bash

# WARNING: This assumes we are running on Debian or a derivative.
sudo apt install python3-clang git doxygen

git submodule init
git submodule update

# Run on latest version of docstrings -- eventually these will be tagged.
cd emrm/embroidermodder
git pull
mkdir assets/docs
sed -i "s/GENERATE_XML = NO/GENERATE_XML = YES/" Doxygen
doxygen
cd ../..
cd emrm/libembroidery
git pull
cd ../..
cd emrm/embroiderymobile
git pull
cd ../..

python3 -m pip install --upgrade pip
python3 -m venv .
source bin/activate

# Main static site generation
./bin/pip install mkdocs
./bin/pip install mkdocs-material
./bin/pip install markdown-grid-tables

# Documentation framework
./bin/pip install sphinx
# Sphinx style
./bin/pip install furo
# C docstring extraction
./bin/pip install breathe

cd emrm
make html
mv _build/html ../docs/docs
cd ..

./bin/mkdocs build

