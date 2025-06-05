#!/bin/bash
#
# Include documentation from our other repositories

git submodule update --init

cd docs/docs/
rm -fr embroidermodder libembroidery EmbroideryMobile
cp -r ../../embroidermodder/docs/html embroidermodder
cp -r ../../libembroidery/docs/html libembroidery
cp -r ../../EmbroideryMobile/docs/html EmbroideryMobile
cd ../..
