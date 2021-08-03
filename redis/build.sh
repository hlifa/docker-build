#!/bin/bash
VERSION=$1

docker build -t "jesse92/redis:${VERSION}" .

docker push jesse92/redis:${VERSION}
