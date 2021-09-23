#!/bin/bash
#chroot /hostroot
set -xe
whoami
ls -alh /
ps aux
env
DOCKER_HOST=unix:///hostroot/var/run/docker.sock docker ps  --all
