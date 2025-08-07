#!/bin/bash

echo "Installing bashrc "
mkdir -p ~/.bashrc.d
cp -r .bashrc.d/* ~/.bashrc.d/
cp .bashrc ~/.bashrc

echo "You can now Reload with: source ~/.bashrc"
