# OpenHouseAI

OpenHouseAI 是一个范围收窄的本地 Agent CLI 安装产品。

这个工作区独立于 OpenHouse，只保留安装和检测以下内容所需的仓库：
- Ubuntu proot
- OpenCode
- Codex CLI
- Claude Code

不在上述范围内的运行时服务、站点、组件和文档构建流程不属于 OpenHouseAI。

## 仓库

- `openhouseai-bootstrap`：Termux/Ubuntu bootstrap 安装脚本和在线维护清单。
- `openhouseai-app`：收窄后的 Android/Termux app，维护中心只覆盖 OpenHouseAI 安装范围。

## 工作模型

实现放在子仓库中。这个根仓库只保留产品范围、仓库边界和检查脚本。

## 检查命令

```bash
./scripts/check-repos.sh
./scripts/check-product-scope.sh
```

Bootstrap 入口：

```bash
cd openhouseai-bootstrap
bash bootstrap.sh full
```
