#!/bin/bash

DEVELOPMENT() {
  pushd "mmmm_cookies" || exit 127
  while true; do sleep 1; done
}

PRODUCTION() {
  mmmm_cookies
}

eval "${ENVIRONMENT}"
