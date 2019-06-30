sudo nmap -sP 192.168.1.0/24 > hosts.txt;
sudo mpack -s "Current hosts" /root/hosts.txt magutierrezsistemas@gmail.com;
sudo /opt/vc/bin/vcgencmd measure_temp > temperature.txt;
python3 /root/temperature.py
sudo mpack -s "Server's temperature" /root/temperature.txt magutierrezsistemas@gmail.com;
#sudo ps -aux > process.txt;
#sudo mpack -s "Current process" /root/process.txt magutierrezsistemas@gmail.com;
#sudo netstat -natp > ports.txt;
#sudo mpack -s "Listening Ports" /root/ports.txt magutierrezsistemas@gmail.com;
rm hosts.txt;