#! /bin/bash

# cd ../
pwd
cd build
pwd
# rm -rf !(.gitignore)
# Run a command to remove all files and folders except .gitignore
find . -mindepth 1 ! -name '.gitignore' -delete
