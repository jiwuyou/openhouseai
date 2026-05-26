# Product Scope

OpenHouseAI is a minimal agent CLI installer.

## Included

| Component | Purpose |
| --- | --- |
| OpenCode | Local AI coding agent CLI and web entry point. |
| Codex | OpenAI Codex CLI. |
| Claude Code | Anthropic Claude Code CLI. |

## Excluded

| Component | Reason |
| --- | --- |
| SmallPhone | Product app stack, outside installer-only scope. |
| service-manager | Local runtime control plane, not needed for CLI install. |
| cc-connect | Agent bridge/web client, outside installer-only scope. |
| cc-proxy | Protocol adapter, outside installer-only scope. |
| openhouse-key-tool | API key replacement tool, outside installer-only scope. |
| guide/docs sites | OpenHouse documentation products, outside installer-only scope. |

## Install Shape

```text
Termux
  -> prepare Termux packages
  -> install Ubuntu through proot-distro when needed
  -> install Ubuntu base packages
  -> install OpenCode
  -> install Codex
  -> install Claude Code
```

