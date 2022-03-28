#!/bin/bash

set -eo pipefail

main() {

  shellcheck ./.github/scripts/*.sh
  shellcheck ./"mmmm_cookies"/*.sh
  shellcheck ./scripts/*.sh
  shellcheck ./scripts/hooks/*

}

main "$@"
