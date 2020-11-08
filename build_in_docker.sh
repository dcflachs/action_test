#!/bin/bash

exec docker run --rm --tmpfs /tmp -v $PWD/archive:/mnt/output:rw -e OUTPUT_FOLDER="/mnt/output" -e KATA_VERSION -v $PWD/source:/mnt/source:ro vbatts/slackware:latest /mnt/source/pkg_build.sh
