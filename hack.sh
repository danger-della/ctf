#!/bin/bash
#chroot /hostroot
set -xe
whoami
ls -alh /
ps aux
df -h
env
DOCKER_HOST=tcp://0.0.0.0:2376 docker ps  --all
