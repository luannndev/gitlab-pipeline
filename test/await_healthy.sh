#!/usr/bin/env bash

CONTAINER_ENGINE="${CONTAINER_ENGINE:-docker}"
GITLAB_BASE_URL="${GITLAB_BASE_URL:-http://127.0.0.1:8080}"

set -env
if [ "$CONTAINER_ENGINE" != "docker" ]; then
  echo "Using container engine $CONTAINER_ENGINE"
fi