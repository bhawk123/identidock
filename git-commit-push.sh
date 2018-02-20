#!/bin/bash

echo "Git Commit & Push"

if [[ $# -eq 0 ]] ; then
    echo 'Missing Commit Message'
    exit 1
fi

echo "Git Commit Message ${1}"

git commit -a -m "$1"
git push

echo "DONE"
