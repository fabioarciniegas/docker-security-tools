#!/bin/sh

#if nessus is already installed and running just exit

service status nessus
if [ $? -eq 0  ]
then
    exit 0
fi
# Test that there is a Nessus installer shared with this container, 
# install if it exists, fail if it doesn't or there is more than one.

    SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
    SCRIPTPATH=$(dirname "$SCRIPT")
    cat  $SCRIPTPATH/README.md
    echo "\nLooking for nessus package in shared volume /nessus-installer:"
    installer=$(find /nessus-installer/ -maxdepth 1 -name "*.deb" -print | wc -l)
if [ $installer != "0" ] 
then
    echo "\033[0;32mInstaller file found\033[0;m";
    if [ $(find /nessus-installer/ -maxdepth 1 -name "*.deb" -print | wc -l) != "1" ]
    then
	echo "\033[1;31mHowever, more than one deb file was found. Please leave only one installer in the /nessus-installer directory\033[0m"
	exit 0
    fi
else 
    echo "\033[1;31mNessus Installer not found\033[0;m"
    exit 0
fi
dpkg -i $(find /nessus-installer/ -maxdepth 1 -name "*.deb" -print -quit)
bash
