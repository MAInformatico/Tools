#!/bin/bash

mkdir 'InformationPC';
cd InformationPC;
#Distro and kernel version
echo 'Distro and kernel version' > infoDistro.txt
echo '*************************' >> infoDistro.txt
echo 'Distro version:' >> infoDistro.txt
lsb_release -idc >> infoDistro.txt
echo -e '\n' >> infoDistro.txt
echo 'Kernel version:' >infoDistro.txt
uname -sr >> infoDistro.txt
echo -e '\n' >> infoDistro.txt
#System manufacturer
echo 'System info' > infoPC.txt
echo '***********' >> infoPC.txt
echo 'System manufacturer: ' >> infoPC.txt
dmidecode -s system-manufacturer >> infoPC.txt
echo 'System product name: ' >> infoPC.txt
dmidecode -s system-product-name >> infoPC.txt
echo 'System version: ' >> infoPC.txt
dmidecode -s system-version >> infoPC.txt
echo 'System serial number: ' >> infoPC.txt
dmidecode -s system-serial-number >> infoPC.txt
#processor information
echo 'Processor information' >> infoProc.txt
echo '*********************' >> infoProc.txt
grep 'vendor_id' /proc/cpuinfo >> infoProc.txt
grep 'model name' /proc/cpuinfo >> infoProc.txt
grep 'cpu MHz' /proc/cpuinfo >> infoProc.txt
echo -e '\n' >> infoProc.txt
#Battery status
echo 'Battery status: ' >> infoPC.txt
echo '**************' >> infoPC.txt
acpi -bi >> infoPC.txt
echo -e '\n' >> infoPC.txt
#info user interface
echo 'User interface' > infoUser.txt
echo '**************' >> infoUser.txt
echo 'User info: ' >> infoUser.txt
echo $USER >> infoUser.txt
echo 'Hostname info: ' >> infoUser.txt
echo $HOSTNAME >> infoUser.txt
echo -e '\n' >> infoUser.txt
echo 'Hardware info' > infoHarware.txt
echo '*************' >> infoHarware.txt
echo 'RAM status: ' >> infoHardware.txt
free -o -m >> infoHardware.txt
echo -e '\n' >> infoHardware.txt
echo 'USB info' >> infoHarware.txt
lsusb >> infoHarware.txt
echo 'PCI info' >> infoHarware.txt
lspci >> infoHardware.txt
echo -e '\n' >> infoHardware.txt
echo 'Graphic info' >> infoHardware.txt
lspci | grep -i vga >> infoHardware.txt
echo -e '\n' >> infoHardware.txt
echo 'Audio info' >> infoHardware.txt
lspci | grep -i audio >> infoHardware.txt

echo 'Network' > infoNetwork.txt
echo '*******' >> infoNetwork.txt
echo 'Network ethernet' >> infoNetwork.txt
lspci | grep -i ethernet >> infoNetwork.txt
echo 'Network WiFi connected by PCI' >> infoNetwork.txt
lspci | grep -i network >> infoNetwork.txt
echo 'Network ethernet and WiFi connected by USB' >> infoNetwork.txt
lsusb | grep -i ethernet; lsusb | grep -i network >> infoNetwork.txt
echo 'modules loaded' >> infoNetwork.txt
lsmod | grep iwl >> infoNetwork.txt
