#!/bin/bash

sudo apt-get install -y jekyll jekyll-theme-minima
# sudo gem install bundler liquid

bundle install
jekyll b
