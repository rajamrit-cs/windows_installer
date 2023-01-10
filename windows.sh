#!/bin/bash
USERNAME=Test2
HOSTS="192.168.200.253"
SCRIPT="powershell.exe wget https://download.oracle.com/java/19/latest/jdk-19_windows-x64_bin.exe -O 'C:\jdk.exe' && powershell.exe Start-Process -Wait -FilePath 'C:\jdk.exe' -ArgumentList '/S','/v','/qn' -passthru && del  'C:\jdk.exe' && powershell.exe wget http://candelatech.com/private/downloads/r5.4.6/LANforge-Server-5.4.6-Installer.exe -O 'C:\Lanforge.exe' && Start-Process -Wait -FilePath 'C:\Lanforge.exe' -ArgumentList '/S','/v','/qn' -passthru""

# Start-Process -Wait -FilePath \"C:\Users\Test2\Desktop\lanforge.exe\" -ArgumentList '/S','/v','/qn' -passthru"
for HOSTNAME in ${HOSTS} ; do
    ssh -l ${USERNAME} ${HOSTNAME} "${SCRIPT}"
done

# wget https://download.oracle.com/java/19/latest/jdk-19_windows-x64_bin.exe -O 'C:\jdk.exe'

powershell.exe wget https://download.oracle.com/java/19/latest/jdk-19_windows-x64_bin.exe -O 'C:\jdk.exe'
powershell.exe Start-Process -Wait -FilePath 'C:\jdk.exe' -ArgumentList '/S','/v','/qn' -passthru 
del  'C:\jdk.exe' 
powershell.exe wget http://candelatech.com/private/downloads/r5.4.6/LANforge-Server-5.4.6-Installer.exe -O 'C:\Lanforge.exe' 
powershell.exe Start-Process -Wait -FilePath 'C:\Lanforge.exe' -ArgumentList '/S','/v','/qn' -passthru 
del  'C:\jdk.exe'  
