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
read option

if [[ option==1 ]]; then
	echo 'Name of the reposity?'
	read NAME
	git init $NAME
fi
else if [[ option==2 ]]; then
	git pull origin master
fi

else if [[ option==3 ]]; then
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
fi

else if [[ option==4 ]]; then
	echo 'Name of the repository?'
	read NAME
	mkdir $NAME
	cd $NAME
	git init $NAME
	echo'Repository url?'
	read REPO
	git remote add origin $REPO
fi