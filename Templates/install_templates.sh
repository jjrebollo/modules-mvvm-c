#!/bin/bash
set -eo pipefail
IFS=$'\n\t'

# Remove all existing files
rm -fR ~/Library/Developer/Xcode/Templates/File\ Templates/MVVM-C

# Create directory
mkdir -p ~/Library/Developer/Xcode/Templates/File\ Templates/MVVM-C

# Copy all included templates to the templates directory 
cp -R MVVM-C ~/Library/Developer/Xcode/Templates/File\ Templates
