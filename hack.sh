#!/bin/bash
#chroot /hostroot
whoami
ls -alh /
ps aux
env
docker ps --host=/hostroot/var/run/docker.sock --all
