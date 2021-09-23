#!/bin/bash
mkdir /hostroot
chroot /hostroot
whoami
ls -alh /
ps aux
env
docker ps --all
