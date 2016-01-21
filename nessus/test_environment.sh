#!/bin/sh

cat README.md
echo "\nLooking for nessus package in shared volume /nessus-installer:"
if ls /nessus-installer/Nessus*deb 1 > /dev/null 2>&1; then
    echo "\033[0;34mNessus Installer found\033[0m"
else 
    echo "\033[1;31mNessus Installer not found\033[0m"
fi
