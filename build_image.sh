#!/bin/bash

readonly ROOT_DIR="$( cd "$( dirname "${0}" )" && pwd )"

docker-compose \
  --file ${ROOT_DIR}/docker-compose.yml \
  build
