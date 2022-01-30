#!/bin/bash
docker system prune -af
docker build -t drezael/docker_minecraft_java_server:1.18.1_ubuntu20.04 -f ./dockerfile .