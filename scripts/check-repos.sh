#!/usr/bin/env sh
set -eu

missing=0

check_repo() {
  repo="$1"
  if [ -d "$repo/.git" ]; then
    printf 'OK   %s\n' "$repo"
  elif [ -d "$repo" ]; then
    printf 'WARN %s exists but is not a git repository\n' "$repo"
  else
    printf 'MISS %s\n' "$repo"
    missing=1
  fi
}

check_repo /root/projects/openhouseai
check_repo /root/projects/openhouseai/openhouseai-bootstrap
check_repo /root/projects/openhouseai/openhouseai-app

exit "$missing"
