# 2026-05 OpenHouseAI Bootstrap

## Goal

Create a new product workspace and bootstrap repository that install only the
three supported AI agent CLIs:

- OpenCode
- Codex
- Claude Code

## Decisions

- Keep OpenHouseAI separate from OpenHouse.
- Put installer implementation in `openhouseai-bootstrap`.
- Start from the proven OpenHouse bootstrap stages, but keep only environment
  preparation and agent CLI installation.
- Exclude SmallPhone, service-manager, cc-connect, cc-proxy, docs/guide sites,
  and required OpenHouse runtime components.

## Verification

Run:

```bash
./scripts/check-repos.sh
./scripts/check-product-scope.sh
bash -n openhouseai-bootstrap/bootstrap.sh
bash -n openhouseai-bootstrap/scripts/*.sh
```

