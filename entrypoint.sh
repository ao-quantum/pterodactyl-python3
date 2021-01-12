#!/bin/bash

cd /bin/bash
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`

python --version

MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

eval ${MODIFIED_STARTUP}
