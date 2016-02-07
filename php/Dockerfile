FROM ubuntu:14.04

RUN apt-get update &&\
    apt-get install -y wget git apache2 libapache2-mod-php5 unzip git jq curl software-properties-common

RUN wget http://sourceforge.net/projects/rips-scanner/files/rips-0.55.zip/download

RUN git clone https://github.com/fabioarciniegas/docker-security-tools

RUN unzip download &&\
    mv rips-0.55 /var/www/rips &&\
    chmod -R 755 /var/www/rips

RUN jq --slurp --raw-input '{"text": "\(.)", "mode": "markdown"}' < docker-security-tools/php/Readme.md | curl --data @- https://api.github.com/markdown > /var/www/html/index.html

RUN chmod 755 /var/www/html/index.html

RUN echo "service apache2 start" >> /etc/bash.bashrc

EXPOSE 80

CMD ["bash"]