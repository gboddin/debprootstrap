#!/bin/bash
[ -z ${TARGET_ARCH_DEB} ] && echo "\$TARGET_ARCH_DEB not set" && exit 1
[ "${TARGET_ARCH_DEB}" = "amd64" ] && TARGET_ARCH_PROOT=x86_64 && TARGET_ARCH_QEMU=x86_64
[ "${TARGET_ARCH_DEB}" = "i386" ] && TARGET_ARCH_PROOT=x86  && TARGET_ARCH_QEMU=i386
[ "${TARGET_ARCH_DEB}" = "armhf" ] && TARGET_ARCH_PROOT=arm  && TARGET_ARCH_QEMU=arm
