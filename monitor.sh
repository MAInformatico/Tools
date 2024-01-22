sudo nmap -sP 192.168.1.0/24 > hosts.txt;
sudo mpack -s "Current hosts" /root/hosts.txt your@email.com;
sudo /opt/vc/bin/vcgencmd measure_temp > temperature.txt;
python3 /root/temperature.py
sudo mpack -s "Server's temperature" /root/temperature.txt your@email.com;
rm hosts.txt;
