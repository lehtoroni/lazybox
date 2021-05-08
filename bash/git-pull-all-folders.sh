#!/bin/bash

# This is a simple bash script to iterate through all folders in current folder
# and execute "git pull origin main" in each one of them.

echo "--*-- Pulling all folders... --*--"

for f in *; do
    if [ -d "$f" ]; then
        
        echo "  -> ${f}"
        cd ${f}
        
        git pull origin main
        
        cd ..
        
    fi
done
