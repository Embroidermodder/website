#!/bin/sh

mkdir test_report

# Get dependencies?

git clone https://github.com/Embroidermodder/embroidermodder
cd embroidermodder
bash build.sh -d &> ../test_report/build_embroidermodder.log
cd ..

git clone https://github.com/Embroidermodder/libembroidery
cd libembroidery
bash build.sh -d &> ../test_report/build_libembroidery.log
cd debug
./embroider --test &> ../test_report/test_embroider.log
cd ..
cd ..

# git clone https://github.com/Embroidermodder/EmbroideryMobile
# cd EmbroideryMobile
# bash build.sh -d &> ../build_mobile.log
# cd ..