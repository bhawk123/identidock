#!/bin/bash

account="bhawk123"
repository="identidock"

echo "Account: ${account} Repository: ${repository} Version: ${1}"

echo "Building image"
docker build -t ${account}/${repository}:${1} .

echo "Tagging image"
docker tag "identidock" "${account}/${repository}:${1}"

echo "Pushing image to Docker"
docker push "${account}/${repository}:${1}"


echo "DONE"
