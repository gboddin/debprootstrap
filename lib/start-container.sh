#!/bin/bash
CONTAINER_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd ${CONTAINER_PATH}
./proot -w /root -b /etc/resolv.conf -b /etc/localtime -b /dev -b /sys -b /proc -r ${CONTAINER_PATH} -0
