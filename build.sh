#!/bin/bash

sudo apt-get install -y jekyll jekyll-theme-minima
sudo gem install bundler

bundle install
bundle exec jekyll b
