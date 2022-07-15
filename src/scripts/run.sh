#!/bin/bash
docker pull veinmind/veinmind-runner:latest
path=$(pwd)
docker run --rm --mount 'type=bind,source=/,target=/host,readonly,bind-propagation=rslave' -v /var/run/docker.sock:/var/run/docker.sock -v $path:/tool/resource veinmind/veinmind-runner  ${SCAN_ACTION} ${IMAGE_REF} -o ${OUTPUT} -e ${EXIT_CODE}