#!/bin/bash

echo '                                                          '
echo 'Welcome to Git Menu (When people wants his life more easy)'
echo '=========================================================='
echo '                                                          '
echo 'Please choose your option:'
echo 'Option 1: Create a new repository'
echo '                                 '
echo 'Option 2: Update your local repository from remote (Pull)'
echo '                                                         '
echo 'Option 3: Update your remote repository from local (Push)'
echo '                                                         '
echo 'Option 4: Clone'
echo '               '
echo 'Option 0: Install and configure git on your local computer'
echo '                                                          '
read option

if [[ option==0 ]]; then
	echo 'Your computer use a Debian based distro or a Fedora based distro?'
	read DISTRO
	if [[ DISTRO = 'Debian']]; then
		sudo apt-get -y install git	
	fi
	else
		dnf install -y git
	echo 'Git have been installed'
	echo 'We will configure it'
	echo 'So ...'
	echo 'Tell me your name'
	read NAME
	git config --global user.name $NAME
	echo 'Tell me your email'
	read EMAIL
	git config --global user.mail $EMAIL 
	echo 'Done'
fi

if [[ option==1 ]]; then
	echo 'Name of the reposity?'
	read NAME
	git init $NAME
	echo 'Done'
fi
else if [[ option==2 ]]; then
	git pull origin master
	echo 'Done'
fi

else if [[ option==3 ]]; then
	echo 'Where is your respository?'
	read D
	cd $D
	git status
	git add -A
	echo 'Do you want to add a message?'
	read op
	if [[ op==yes ]]; then
		echo 'write it please'
		read MESSAGE
		git commit -m $MESSAGE
	else
		git commit
		git push origin master
	fi
	echo 'Done'
fi

else if [[ option==4 ]]; then
	echo'Repository url?'
	read REPO
	git clone $REPO
	echo 'Done'
fi
