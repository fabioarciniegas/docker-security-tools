========================================
           PLEASE NOTICE
========================================

To build this image you simply run the standard docker command:

docker build -t nessus .

However because of Nessus license you need to do one more step:

Nessus terms of service require that you download the installer and registration key from nessus site:

http://www.tenable.com/products/nessus/select-your-operating-system#

Download the installer for LINUX UBUNTU (e.g. Nessus-6.5.4-ubuntu1110_amd64.deb) and put it by itself in a directory you can share with the container e.g. /tmp/installer

then start this image with the following command:

docker run -it -p 8834:8834 -v /tmp/installer:/nessus-installer nessus

