#!/bin/bash
#
# Include documentation from our other repositories
#
# Note that these aren't built here, we rely on the upstream repositories
# keeping this up-to date.

git submodule update --init || exit 1

echo "Installing Embroidermodder API docs and user manual..."
DIR=docs/docs/embroidermodder
rm -fr $DIR || exit 1
cp -r embroidermodder/docs $DIR || exit 1

echo "Installing libembroidery API docs and manpage..."
DIR=docs/docs/libembroidery
rm -fr $DIR || exit 1
cp -r libembroidery/doc $DIR || exit 1

echo "Installing EmbroideryMobile API docs and user manual..."
DIR=docs/docs/mobile
rm -fr $DIR || exit 1
cp -r EmbroideryMobile/docs $DIR || exit 1

echo "Documentation installed."
