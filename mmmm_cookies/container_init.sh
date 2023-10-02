#!/bin/bash

# mmmm_cookies/container_init.sh
# PIB container init script.

# Container Only:  Please use this hook inside a PIB container.

DEVELOPMENT() {
  /app/scripts/hooks/_install.sh
  pushd "mmmm_cookies" || exit 127
  while true; do sleep 1; done
}

PRODUCTION() {
  mmmm_cookies
}

eval "${ENVIRONMENT}"
