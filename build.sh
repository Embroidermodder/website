#!/bin/bash

# WARNING: This assumes we are running on Debian or a derivative.
sudo apt install python3-clang git doxygen

# Run on latest version of docstrings -- eventually these will be tagged.
cd emrm
	git clone https://github.com/embroidermodder/embroidermodder
	cd embroidermodder
		git pull origin main
		git submodule init
		git submodule update
		doxygen
	cd ..
cd ..

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
	mkdir -p ../docs/docs
	mv _build/html/* ../docs/docs
cd ..

./bin/mkdocs build

