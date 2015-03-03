#!/bin/bash
if [ "${DISTRO}" = "debian" ]; then
	echo "deb http://http.debian.net/debian $DISTRO_SUITE main contrib non-free" > build/etc/apt/sources.list
	echo "deb http://ftp.debian.org/debian/  ${DISTRO_SUITE}-updates main contrib non-free" >> build/etc/apt/sources.list
	echo "deb http://security.debian.org/  ${DISTRO_SUITE}/updates main contrib non-free" >> build/etc/apt/sources.list
fi
if [ "${DISTRO}" = "ubuntu" ]; then 
	echo "deb http://archive.ubuntu.com/ubuntu/ ${DISTRO_SUITE} main restricted universe multiverse" > build/etc/apt/sources.list
	echo "deb http://archive.ubuntu.com/ubuntu/ ${DISTRO_SUITE}-security main restricted universe multiverse" >> build/etc/apt/sources.list
	echo "deb http://archive.ubuntu.com/ubuntu/ ${DISTRO_SUITE}-updates main restricted universe multiverse" >> build/etc/apt/sources.list
fi
