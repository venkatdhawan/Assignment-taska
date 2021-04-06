#!/bin/bash
apt install sysstat -y 
sudo apt-get install ifstat -y
echo  "CPU Utilization :"
printf "\n"
mpstat -P ALL
printf "\n"
df -h| grep 'Filesystem\|/dev/sda*' > /tmp/diskusage
echo "Disk Usages :" 
cat /tmp/diskusage
printf "\n"
echo  "Network Utilization :"
ifstat -t | head
