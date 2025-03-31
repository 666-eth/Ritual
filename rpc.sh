#!/bin/sh

RPC_URL="https://base.llamarpc.com"
sudo sed -i 's|"rpc_url": ".*"|"rpc_url": "https://base.llamarpc.com"|' /root/infernet-container-starter/deploy/config.json
sudo sed -i 's|"rpc_url": ".*"|"rpc_url": "https://base.llamarpc.com"|' /root/infernet-container-starter/projects/hello-world/container/config.json
sudo sed -i "s|^RPC_URL := .*|RPC_URL := $RPC_URL|" /root/infernet-container-starter/projects/hello-world/contracts/Makefile
sudo docker compose -f /root/infernet-container-starter/deploy/docker-compose.yaml down
sudo docker compose -f /root/infernet-container-starter/deploy/docker-compose.yaml up -d

