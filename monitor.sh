sudo nmap -sP 192.155.0.0/24 > hosts.txt;
sudo mpack -s "Current hosts" /root/hosts.txt your_email@email.com;
sudo /opt/vc/bin/vcgencmd measure_temp > temperature.txt;
sudo mpack -s "Server's temperature" /root/temperature.txt your_email@email.com;
sudo ps -aux > processs.txt;
sudo mpack -s "Current process" /root/process.txt your_email@email.com;
sudo netstat -natp > ports.txt
sudo mpack -s "Listening Ports" /root/ports.txt your_email@email.com;
# rm *.txt #Be carefull if you execute this command