#!/bin/sh

RPC_URL="https://rpc.ankr.com/base/1f271c0661c150d62029d9b818ef3179cfb8be6c68c648d65d96b3d2b7028cbd"
sudo sed -i 's|"rpc_url": ".*"|"rpc_url": "https://rpc.ankr.com/base/1f271c0661c150d62029d9b818ef3179cfb8be6c68c648d65d96b3d2b7028cbd"|' /root/infernet-container-starter/deploy/config.json
sudo sed -i 's|"rpc_url": ".*"|"rpc_url": "https://rpc.ankr.com/base/1f271c0661c150d62029d9b818ef3179cfb8be6c68c648d65d96b3d2b7028cbd"|' /root/infernet-container-starter/projects/hello-world/container/config.json
sudo sed -i "s|^RPC_URL := .*|RPC_URL := $RPC_URL|" /root/infernet-container-starter/projects/hello-world/contracts/Makefile
sudo docker compose -f /root/infernet-container-starter/deploy/docker-compose.yaml down
sudo docker compose -f /root/infernet-container-starter/deploy/docker-compose.yaml up -d

