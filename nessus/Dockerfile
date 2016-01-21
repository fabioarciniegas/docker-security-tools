FROM ubuntu:14.04

RUN apt-get update &&\
    apt-get install -y wget git

RUN git clone https://github.com/fabioarciniegas/docker-security-tools

RUN docker-security-tools/nessus/test_environment.sh
RUN dpkg -i $(find /nessus-installer/ -maxdepth 1 -name "*.deb" -print -quit)



