#Dependencies: mail, tshark.
#If you don't have installed them: sudo apt-get install mail tshark
#Our script can be included as a cron task and also compress the file pcap to store it.
#Use it under your own responsability!!!!!!!!!!!!


sudo touch today$(date +%d%m%y).pcap && sudo tshark -nni <your device i.e.: eth0> -a duration:<time in seconds, i.e: 86400>  -w today$(date +%d%m%y).pcap && tar -cvf compress.tar hoy$(date +%d%m%y).pcap
echo "Sucess" | mail -s "<subject of the email>" <your-email>
