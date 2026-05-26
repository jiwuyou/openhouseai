# OpenHouseAI

OpenHouseAI is a narrow installer product for local AI agent CLIs.

This workspace is separate from OpenHouse. It intentionally includes only the
pieces needed to install and check:

- OpenCode
- Codex
- Claude Code

It does not include SmallPhone, service-manager, cc-connect, cc-proxy, guide
sites, docs sites, or OpenHouse runtime components.

## Repositories

- `openhouseai-bootstrap` - Termux/Ubuntu bootstrap installer for the three
  agent CLIs.
- `openhouseai-app` - Android/Termux app fork with a narrowed maintenance
  center for the same installer scope.

## Working Model

Keep implementation in child repositories under this workspace. Keep product
scope, repository boundaries, and rollout notes here.

## Commands

```bash
./scripts/check-repos.sh
./scripts/check-product-scope.sh
```

Bootstrap entry point:

```bash
cd openhouseai-bootstrap
bash bootstrap.sh full
```
