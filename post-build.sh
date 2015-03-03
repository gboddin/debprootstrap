#!/bin/bash

[ "${DISTRO}" = "debian" ] && sed "s/SUITE/${DISTRO_SUITE}/g" > build/etc/apt/sources.list <<"EOF"
deb http://http.debian.net/debian SUITE main contrib non-free
deb http://ftp.debian.org/debian/  SUITE-updates main contrib non-free
deb http://security.debian.org/  SUITE/updates main contrib non-free
EOF

[ "${DISTRO}" = "ubuntu" ] && sed "s/SUITE/${DISTRO_SUITEi}/g"   > build/etc/apt/sources.list <<"EOF"
#------------------------------------------------------------------------------#
#                            OFFICIAL UBUNTU REPOS                             #
#------------------------------------------------------------------------------#
###### Ubuntu Main Repos
deb http://archive.ubuntu.com/ubuntu/ SUITE main restricted universe multiverse
###### Ubuntu Update Repos
deb http://archive.ubuntu.com/ubuntu/ SUITE-security main restricted universe multiverse
deb http://archive.ubuntu.com/ubuntu/ SUITE-updates main restricted universe multiverse
EOF
