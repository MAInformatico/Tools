#! /bin/bash

echo "Copying your IMAP directory"
cp -R /home/<your_user>/.icedove  /home/<your_user>/<your_destiny_path>
echo "Done"
echo "Copying plugins of browser"
cp -R /home/<your_user>/.mozilla  /home/<your_user>/<your_destiny_path>/iceweasel
echo "Plugins sucessfully copied"
echo "Copying GPG_key"
mkdir /home/<your_user>/<your_destiny_path>/certificates_gpg
cp  /home/<your_user>/*.asc /home/<your_user>/<your_destiny_path>/certificates_gpg
echo "Backup done sucessfully"