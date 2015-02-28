#!/bin/bash
if (uname -m|grep -q 64); then
	HOST_ARCH_PROOT=x86_64
	HOST_ARCH_DEB=amd64
elif (uname -m|grep -qi arm); then
	HOST_ARCH_PROOT=arm
	HOST_ARCH_DEB=armhf
elif (uname -m|grep i686); then
	HOST_ARCH_PROOT=x86
	HOST_ARCH_DEB=i386
fi