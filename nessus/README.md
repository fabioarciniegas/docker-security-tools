========================================
           PLEASE NOTICE
========================================

Nessus terms of service require that you download the installer and registration key from nessus site:

http://www.tenable.com/products/nessus/select-your-operating-system#

Download the installer for LINUX UBUNTU (e.g. Nessus-6.5.4-ubuntu1110_amd64.deb) and put it in a directory you can share with the container e.g. /tmp/installer

then start this image with the following command:

docker run -d -p 8834:8834 -v /tmp/installer:/nessus-installer 

