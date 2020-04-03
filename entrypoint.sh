#!/bin/bash

if [ -z "${DGIT_PRIVATE_KEY}" ]; then
    echo "error: not found DGIT_PRIVATE_KEY"
    exit 1
fi

if [ -n "${DGIT_REPOSITORY}" ]; then
    dgiturl="dgit://${DGIT_REPOSITORY}"
else
    dgiturl="dgit://${GITHUB_REPOSITORY}"
fi

if [ -z "${DGIT_OBJ_STORAGE}" ]; then
    DGIT_OBJ_STORAGE="siaskynet"
fi

branch=$(git rev-parse --abbrev-ref HEAD)
git remote add dgit $dgiturl
git push dgit $GIT_PUSH_ARGS $branch:$branch