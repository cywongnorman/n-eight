#!/usr/bin/env bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push cywongnorman/n-eight:$TRAVIS_BRANCH
if [ "$TRAVIS_BRANCH" = "master" ]; then docker push cywongnorman/n-eight:latest; fi