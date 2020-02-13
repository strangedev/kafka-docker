#!/bin/bash

BUILD_ROOT=$1
KAFKA_ROOT=$2

set -e

RELEASE_URL="https://www-eu.apache.org/dist/kafka/2.4.0/kafka_2.12-2.4.0.tgz"
echo "fetch $RELEASE_URL"

cd "$BUILD_ROOT"
if [ ! -f kafka.tar.gz ]
then
  curl -L "$RELEASE_URL" > kafka.tar.gz
fi
tar -vxf kafka.tar.gz
mv "./kafka_2.12-2.4.0" -T "$KAFKA_ROOT"