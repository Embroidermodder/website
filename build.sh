#!/bin/bash

sudo apt-get install -y hugo

hugo

mv public _site
