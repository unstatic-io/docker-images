#!/usr/bin/env sh
set -a
. ./.env
set +a

echo "Building the image version ${IMAGE_VERSION} with Node.js version ${NODEJS_VERSION}"

docker build --build-arg IMAGE_VERSION="${IMAGE_VERSION}" --build-arg NODEJS_VERSION="${NODEJS_VERSION}" -t "unstatic.io/alpine-nodejs-nginx:${IMAGE_VERSION}" .