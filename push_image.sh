#!/bin/bash

set -xeuo pipefail

VERSION=`cat VERSION`

set +x
if [[ "$VERSION" == "" ]]; then
    echo "VERSION cannot be empty!"
    exit 1
fi
set -x

docker tag py_ml_img:latest "malcolmgreaves/py_ml_img:${VERSION}"
docker push "malcolmgreaves/py_ml_img:${VERSION}"

