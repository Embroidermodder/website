#!/bin/bash
#
# cp *.tar _static
#
# cp bin/* _static

pip install sphinx &> deps.log || exit 1

python3 -m sphinx -M html . . || exit 1

# bash bin/build_refman.sh
