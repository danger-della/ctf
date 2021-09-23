#!/bin/bash
#chroot /hostroot
set -xe
whoami
ls -alh /
ps aux
df -h
env
export DOCKER_HOST=tcp://0.0.0.0:2376 
export DOCKER_TLS_VERIFY=false
docker ps  --all
