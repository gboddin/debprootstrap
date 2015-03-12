#!/bin/bash
for arch in armhf amd64 i386; do
    for distro in stable testing unstable vivid utopic precise lucid; do
	echo "    - env: D_ARCH=\"${arch}\" D_SUITE=\"${distro}\""
    done
done
