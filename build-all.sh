#!/bin/bash

echo "Building for archictures   : ${DEBPROOTSTRAP_TRAVIS_ARCHS}"
echo "Building for distributions : ${DEBPROOTSTRAP_TRAVIS_DISTROS}"

version=$(cat version)

for arch in ${DEBPROOTSTRAP_TRAVIS_ARCHS}; do

    for distro in ${DEBPROOTSTRAP_TRAVIS_DISTROS}; do

        ./debprootstrap ${arch} ${distro} install-${distro}-${arch}-${version}-$(date +%Y%m%d).bundle || exit 1

    done

done
