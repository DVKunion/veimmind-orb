#!/bin/bash
docker pull veinmind/veinmind-runner:latest
docker run --rm --mount 'type=bind,source=/,target=/host,readonly,bind-propagation=rslave' -v /var/run/docker.sock:/var/run/docker.sock -v $(`pwd`):/tool/resource veinmind/veinmind-runner  ${SCAN_ACTION} ${IMAGE_REF} -o ${OUTPUT} -e ${EXIT_CODE}