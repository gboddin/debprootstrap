#!/bin/bash
for arch in armhf amd64 i386; do
    for distro in wheezy jessie sid vivid utopic precise ; do
	echo "    - env: D_ARCH=\"${arch}\" D_SUITE=\"${distro}\""
    done
done

