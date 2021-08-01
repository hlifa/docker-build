#!/bin/bash
VERSION=$1
docker build -t="jesse92/nginx-alpine:${VERSION}" .
