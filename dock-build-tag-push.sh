#!/bin/bash

echo "Docker Build, Tag, Push"

account="bhawk123"
repository="identidock"

if [[ $# -eq 0 ]] ; then
    echo 'Missing Version'
    exit 1
fi

echo "Building image"
docker build -t ${account}/${repository}:${1} .

echo "Tagging image"
docker tag "identidock" "${account}/${repository}:${1}"

echo "Pushing image to Docker"
docker push "${account}/${repository}:${1}"

echo "DONE"
