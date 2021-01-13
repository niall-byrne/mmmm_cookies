#!/bin/bash

DEVELOPMENT() {
  pushd "mmmm_cookies" || exit 127
  while true; do sleep 1; done
}

PRODUCTION() {
  pushd "mmmm_cookies" || exit 127
  while true; do sleep 1; done
}

eval "${ENVIRONMENT}"
