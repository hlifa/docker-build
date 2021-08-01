#!/bin/bash
VERSION=$1
docker build -t="jesse92/php-fpm-alpine:${VERSION}" .
