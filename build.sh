#!/bin/bash

# sudo apt-get install -y jekyll jekyll-theme-minima
sudo gem install bundler liquid

git clone https://github.com/embroidermodder/website
cd website
bundle install
jekyll b
mv _site ..
cd ..
