#!/bin/bash
#
# Lighter weight hugo/jekyll style static site generator.

function make_page () {
pandoc content/$1.md -o content/$1.html
cat head.html content/$1.html foot.html > _site/$1.html
}

function update_refman () {
wget https://raw.githubusercontent.com/embroidermodder/refman/main/emrm.pdf
mv emrm.pdf downloads/emrm-current.pdf
}

rm -fr _site
mkdir -p _site
cp -R data downloads commands images icons samples fonts favicon.png _site

for file in index downloads about changelog credits documentation todo
do
make_page $file
done

