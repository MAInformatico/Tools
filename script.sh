#Dependencies: bleachbit
#sudo apt-get install bleachbit #Uncomment this line to install them
rm script.txt;
apt-get update -y > script.txt; sudo apt-get upgrade -y > script.txt;
bleachbit --clean apt.*;
sed -i".bak" '/RA/d' /var/log/router.log;
rm /var/log/*.bak;
mpack -s "Updates" /root/script.txt your_email@email.com;
mpack -s "Router logs" /var/log/router.log your_email@email.com;

