#!/bin/bash
USERNAME=Test2
HOSTS="192.168.200.151"
SCRIPT="echo %cd%; dir"
for HOSTNAME in ${HOSTS} ; do
    ssh -l ${USERNAME} ${HOSTNAME} "${SCRIPT}"
done

