#!/bin/bash
# travis wont build for arm : TODO debprootstrap a build environment :)

for arch in amd64 i386; do
    for distro in wheezy jessie sid; do
        ./debprootstrap ${arch} ${distro} install-${distro}-${arch}-${version}.bundle || exit 1
    done
done
# ubuntu later