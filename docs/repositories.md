# Repository Map

## `/root/projects/openhouseai`

Top-level OpenHouseAI coordination workspace.

Current role:

- Define product scope.
- Track the child repositories for the new product.
- Provide checks that prevent OpenHouse-only components from entering the new
  product.

## `/root/projects/openhouseai/openhouseai-bootstrap`

OpenHouseAI installer.

Current role:

- Prepare Termux.
- Install or reuse Ubuntu through `proot-distro`.
- Install base Ubuntu packages required by the agent CLIs.
- Install OpenCode, Codex, and Claude Code.

## `/root/projects/openhouseai/openhouseai-app`

OpenHouseAI Android/Termux app fork.

Current role:

- Provide the APK entry point.
- Expose maintenance actions for the OpenHouseAI installer scope.
- Point dynamic maintenance defaults at `openhouseai-bootstrap`.
