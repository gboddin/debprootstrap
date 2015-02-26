#!/bin/bash
[ -z $1 ] && echo Please specify an install dir && exit 1
[ ! -d $1 ] && mkdir $1
[ ! -d $1 ] && echo Directory $1 not available &&exit 1
[ $(find $1|wc -l) -gt 1 ] && echo Directory $1 not empty && exit 1
echo Installing in $1...
cat << EEOOFF|base64 -d|tar  --strip-component=1 -zxC $1
