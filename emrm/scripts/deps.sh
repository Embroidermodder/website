#!/bin/bash

echo "Installing required dependencies..."

sudo apt-get -y update &> deps.log || exit 1
sudo apt-get -y upgrade &>> deps.log || exit 1
sudo apt-get -y install texlive texlive-latex-extra &>> deps.log || exit 1

echo "Dependencies installed."
