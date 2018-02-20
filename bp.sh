#!/bin/bash

echo "Version: ${1}"

echo "Building image"
docker build -t bhawk123/identidock:${1} .

echo "Pushing image to Docker"
docker push bhawk123/identidock:${1}

echo "DONE"
