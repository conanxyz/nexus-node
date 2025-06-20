# Nexus Node 快速启动指南

本项目用于通过 Docker 快速部署 Nexus CLI 节点。

## 步骤一：获取你的 Node ID

1. 打开浏览器访问 [https://app.nexus.xyz/nodes](https://app.nexus.xyz/nodes)
2. 注册后，点击页面上的 `Add CLI Node` 按钮
3. 系统会生成一个 Node ID，请复制该 ID，后续将用于节点启动

## 步骤二：配置 Node ID

本项目通过 Docker Compose 启动节点，需要将你的 Node ID 作为环境变量传递。

你可以通过以下两种方式设置 Node ID：

### 方式一：直接在命令行传递

```bash
NODE_ID=你的node_id docker compose up -d
```

请将 `你的node_id` 替换为上一步获取到的实际 Node ID。

### 方式二：创建 `.env` 文件（可选）

在项目根目录下新建 `.env` 文件，内容如下：

```
NODE_ID=你的node_id
```

然后直接运行：

```bash
docker compose up -d
```

## 步骤三：启动节点

在项目根目录下执行：

```bash
docker compose up -d
```

容器会自动拉取依赖并启动 Nexus 节点。

## 其他说明

- 节点启动后，日志可通过 `docker compose logs -f` 查看。
- 如需停止节点，执行 `docker compose down`。
- 默认会使用你传入的 Node ID 启动节点。 