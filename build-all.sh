#!/bin/bash
# travis wont build for arm : TODO debprootstrap a build environment :)
version=$(cat version)
for arch in ${DEBPROOTSTRAP_TRAVIS_ARCHS}; do
    for distro in ${DEBPROOTSTRAP_TRAVIS_DISTROS}; do
        ./debprootstrap ${arch} ${distro} install-${distro}-${arch}-${version}-$(date +%Y%m%d).bundle || exit 1
    done
done
