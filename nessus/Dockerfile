FROM ubuntu:14.04

RUN apt-get update &&\
    apt-get install -y wget git


RUN git clone https://github.com/fabioarciniegas/docker-security-tools

RUN docker-security-tools/nessus/test_environment.sh

EXPOSE 8834

CMD ["docker-security-tools/nessus/test_environment.sh"]