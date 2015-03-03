#!/bin/bash
if [ "${DISTRO}" = "debian" ]; then
	echo "deb http://http.debian.net/debian $DISTRO_SUITE main contrib non-free"
	echo "deb http://ftp.debian.org/debian/  ${DISTRO_SUITE}-updates main contrib non-free"
	echo "deb http://security.debian.org/  ${DISTRO_SUITE}/updates main contrib non-free"
fi
if [ "${DISTRO}" = "ubuntu" ]; then 
	echo "deb http://archive.ubuntu.com/ubuntu/ ${DISTRO_SUITE} main restricted universe multiverse"
	echo "deb http://archive.ubuntu.com/ubuntu/ ${DISTRO_SUITE}-security main restricted universe multiverse"
	echo "deb http://archive.ubuntu.com/ubuntu/ ${DISTRO_SUITE}-updates main restricted universe multiverse"
fi
