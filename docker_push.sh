#!/bin/bash
set -e
set -o pipefail

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t tempname .

VERSION=$(docker run tempname --version | egrep -o '([0-9]+\.?){2}-dev\+.{7}' | head -1)
echo "Built version $VERSION"
docker tag tempname thekonz/composer2:$VERSION
docker tag tempname thekonz/composer2:latest

docker push thekonz/composer2
