#!/bin/bash
# travis wont build for arm : TODO debprootstrap a build environment :)
version=$(cat version)
for arch in amd64 i386; do
    for distro in wheezy jessie sid trusty; do
        ./debprootstrap ${arch} ${distro} install-${distro}-${arch}-${version}-$(date +%Y%m%d).bundle || exit 1
    done
done
