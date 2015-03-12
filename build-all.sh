#!/bin/bash

echo "Building for archictures   : ${DEBPROOTSTRAP_TRAVIS_ARCHS}"
echo "Building for distributions : ${DEBPROOTSTRAP_TRAVIS_DISTROS}"

./debprootstrap i386 testing

rsync -av . build/debprootstrap --exclude build
build/debprootstrap apt-get update
build/debprootstrap apt-get install qemu

version=$(cat version)

for arch in ${DEBPROOTSTRAP_TRAVIS_ARCHS}; do

    for distro in ${DEBPROOTSTRAP_TRAVIS_DISTROS}; do

        buid/manage user -w /debprootstrap ./debprootstrap ${arch} ${distro} install-${distro}-${arch}-${version}-$(date +%Y%m%d).bundle || exit 1

    done

done
mv build/debprootstrap/*bundle .
