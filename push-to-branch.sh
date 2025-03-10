#!/bin/bash

newbranch=$1

# Cek apakah branch ada
if git branch --list | grep -q "^  $newbranch$"; then
    echo "Branch '$newbranch' sudah ada."
    git checkout $newbranch
else
    echo "Branch '$newbranch' belum ada."
    git checkout -b $newbranch
fi

git add .
timestamp=$(date +%s)
git commit -m "$newbranch-$timestamp"
git push origin $newbranch