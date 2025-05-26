#!/bin/bash

function workflow () {

TYPE=$2
FNAME=$4

if [ "$1" = "linux" ]; then

	OSNAME="GNU/Linux"
	OS="ubuntu-latest"

elif [ "$1" = "macos" ]; then

	OSNAME="Mac OS"
	OS="macos-latest"

else

	OSNAME="Windows"
	OS="windows-latest"

fi

if [ "$TYPE" = "quality" ]; then

	NAME="code quality"

else

	NAME="$TYPE $OSNAME"

fi

cat <<- EOF > $FNAME
name: $NAME

on:
  workflow_dispatch:
  schedule:
    - cron: "15 6 * * *"

jobs:
  build-$OS:
    runs-on: $OS
    steps:
      - name: $TYPE
        run:
EOF

if [ "$TYPE" = "build" ]; then

cat <<- EOF >> $FNAME
          git clone http://github.com/embroidermodder/$3
          cmake $3
          cmake --build .
EOF

elif [ "$TYPE" = "test" ]; then

cat <<- EOF >> $FNAME
          git clone http://github.com/embroidermodder/$3
          cmake $3
          cmake --build .
          cmake --test .
EOF

fi

}

for PROJECT in libembroidery embroidermodder embroideryMobile
do
  for OSSHORT in linux macos windows
  do
      FNAME=".github/workflows/build-$PROJECT-$OSSHORT.yml"
      workflow $OSSHORT build $PROJECT $FNAME

      FNAME=".github/workflows/test-$PROJECT-$OSSHORT.yml"
      workflow $OSSHORT test $PROJECT $FNAME
  done
done
