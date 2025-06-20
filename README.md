# Nexus Node Quick Start Guide

This project allows you to quickly deploy a Nexus CLI node using Docker.

## Step 1: Obtain Your Node ID

1. Open your browser and visit [https://app.nexus.xyz/nodes](https://app.nexus.xyz/nodes)
2. After registering, click the `Add CLI Node` button on the page
3. The system will generate a Node ID. Copy this ID for use in the following steps

## Step 2: Configure Node ID

This project uses Docker Compose to start the node. You need to provide your Node ID as an environment variable.

You can set the Node ID in one of the following ways:

### Method 1: Pass via Command Line

```bash
NODE_ID=<node_id> docker compose up -d
```

Replace `<node_id>` with the actual Node ID you obtained in the previous step.

### Method 2: Create a `.env` File (Optional)

Create a `.env` file in the project root directory with the following content:

```
NODE_ID=<node_id>
```

Then simply run:

```bash
docker compose up -d
```

## Additional Notes

- After the node starts, you can view logs with `docker compose logs -f`.
- To stop the node, run `docker compose down`.
- The node will start using the Node ID you provided by default. 