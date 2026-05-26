# OpenHouseAI Workspace Guidelines

This workspace is for the OpenHouseAI product, not the broader OpenHouse
system.

## Scope

OpenHouseAI installs only:

- OpenCode
- Codex
- Claude Code

Do not add SmallPhone, service-manager, cc-connect, cc-proxy, guide sites, docs
sites, API key tools, or OpenHouse runtime component orchestration unless the
product scope changes explicitly.

## Working Rules

- Put installer implementation in `openhouseai-bootstrap`.
- Keep this top-level workspace focused on product scope and cross-repository
  notes.
- Keep scripts idempotent where practical.
- Keep secrets, tokens, provider API keys, and local credentials out of tracked
  files.
- Prefer copying only the required behavior from OpenHouse, then renaming and
  narrowing it for OpenHouseAI.

