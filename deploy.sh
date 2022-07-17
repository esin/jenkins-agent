#!/bin/bash

dt=$(date +%y%m%d%H%M)
docker build --push --platform=linux/amd64,linux/arm/v7,linux/arm64 -t es1n/agent:$dt -t es1n/agent:jdk11 -t es1n/agent:latest -f Dockerfile .
if [ $? -ne 0 ]; then
  exit 1;
fi

exit 0