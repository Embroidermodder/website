#!/bin/bash

bash bin/build.sh
#bash bin/update_api.sh

tar --dereference --hard-dereference --directory site \
    -cvf artifact.tar --exclude=".[^/]*" .

