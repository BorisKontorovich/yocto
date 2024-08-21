#! /bin/bash

# cd ../
pwd
cd custom
echo "Current working directory: $(pwd)"
pwd
# rm -rf !(.gitignore)
# Run a command to remove all files and folders except .gitignore
find . -mindepth 1 ! -name '.gitignore' -delete
