#!/bin/bash
USERNAME=Test2
HOSTS="192.168.200.253"
SCRIPT="powershell.exe pwd && powershell.exe cd Desktop && powershell.exe pwd"

# Start-Process -Wait -FilePath \"C:\Users\Test2\Desktop\lanforge.exe\" -ArgumentList '/S','/v','/qn' -passthru"
for HOSTNAME in ${HOSTS} ; do
    ssh -l ${USERNAME} ${HOSTNAME} "${SCRIPT}"
done

# wget https://download.oracle.com/java/19/latest/jdk-19_windows-x64_bin.exe -O 'C:\jdk.exe'