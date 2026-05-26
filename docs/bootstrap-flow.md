# Bootstrap Flow

Repository:

```text
/root/projects/openhouseai/openhouseai-bootstrap
```

## Commands

```bash
bash bootstrap.sh full
bash bootstrap.sh check
bash bootstrap.sh prepare
bash bootstrap.sh ubuntu
bash bootstrap.sh ubuntu-packages
bash bootstrap.sh opencode
bash bootstrap.sh codex
bash bootstrap.sh claude-code
```

## Full Install

```text
check
  -> prepare
  -> ubuntu
  -> ubuntu-packages
  -> opencode
  -> codex
  -> claude-code
```

## Boundary

The bootstrap must not install or register broader OpenHouse runtime components.
It should stay limited to the agent CLI installer scope.

