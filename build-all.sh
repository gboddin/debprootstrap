#!/bin/bash
# debian
for arch in armhf amd64 i386; do
    for distro in wheezy jessie sid; do
        ./debprootstrap ${arch} ${distro} || exit 1
    done
done
# ubuntu
for arch in amd64 i386; do
    for distro in  trusty utopic vivid precise; do
        ./debprootstrap ${arch} ${distro} || exit 1
    done
done