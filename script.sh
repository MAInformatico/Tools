rm script.txt;
sudo apt-get update -y > script.txt; sudo apt-get upgrade -y > script.txt; #storing execution results
sudo mpack -s "Updates" /root/script.txt yourmail; #sending it by email
bleachbit --clean apt.*
#filtering a log file
sed -i ".bak" 'beginning_filter_sentences' /var/directory/file.log;
rm /var/directory/file.bak #deleting bak file (if you want)
