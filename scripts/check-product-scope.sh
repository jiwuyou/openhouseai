#!/usr/bin/env sh
set -eu

root="${1:-/root/projects/openhouseai}"
missing=0

require_file() {
  path="$1"
  if [ -f "$root/$path" ]; then
    printf 'OK   %s\n' "$path"
  else
    printf 'MISS %s\n' "$path"
    missing=1
  fi
}

reject_path() {
  path="$1"
  if [ -e "$root/$path" ]; then
    printf 'FAIL excluded path exists: %s\n' "$path"
    missing=1
  else
    printf 'OK   excluded path absent: %s\n' "$path"
  fi
}

require_file openhouseai-bootstrap/bootstrap.sh
require_file openhouseai-bootstrap/scripts/00-check-termux.sh
require_file openhouseai-bootstrap/scripts/10-prepare-termux.sh
require_file openhouseai-bootstrap/scripts/20-install-ubuntu.sh
require_file openhouseai-bootstrap/scripts/30-update-ubuntu-packages.sh
require_file openhouseai-bootstrap/scripts/40-install-opencode.sh
require_file openhouseai-bootstrap/scripts/42-install-codex.sh
require_file openhouseai-bootstrap/scripts/44-install-claude-code.sh

reject_path openhouseai-bootstrap/scripts/50-install-ai-agents-skill.sh
reject_path openhouseai-bootstrap/scripts/55-install-required-components.sh
reject_path openhouseai-bootstrap/scripts/60-start-opencode.sh
reject_path openhouseai-bootstrap/scripts/70-configure-entry.sh
reject_path openhouseai-bootstrap/scripts/80-openhouse-web.sh

exit "$missing"

