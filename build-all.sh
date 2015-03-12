#!/bin/bash

echo "Building for archictures   : ${DEBPROOTSTRAP_TRAVIS_ARCHS}"
echo "Building for distributions : ${DEBPROOTSTRAP_TRAVIS_DISTROS}"
echo "Debprootstraping build environment ..."
./debprootstrap amd64 stable 
echo "Preparing build enviornment ..."
rm *bundle
rsync -a . build/debprootstrap --exclude build
./build/manage admin apt-get update
./build/manage admin apt-get install qemu -y
version=$(cat version)

for arch in ${DEBPROOTSTRAP_TRAVIS_ARCHS}; do

    for distro in ${DEBPROOTSTRAP_TRAVIS_DISTROS}; do

        ./build/manage user -w /debprootstrap ./debprootstrap ${arch} ${distro} install-${distro}-${arch}-${version}-$(date +%Y%m%d).bundle || exit 1

    done

done
mv build/debprootstrap/*bundle .
ls -lha *bundle
