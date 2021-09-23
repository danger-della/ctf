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
chroot /hostroot
ls -alh
ps aux
df -h
docker ps  --all
