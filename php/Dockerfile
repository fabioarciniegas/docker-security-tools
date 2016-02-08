FROM ubuntu:14.04

RUN apt-get update &&\
    apt-get install -y wget git apache2 libapache2-mod-php5 unzip git jq curl 

RUN wget http://sourceforge.net/projects/rips-scanner/files/rips-0.55.zip/download

RUN git clone https://github.com/fabioarciniegas/docker-security-tools

RUN unzip download &&\
    mv rips-0.55 /var/www/html/rips &&\
    chmod -R 755 /var/www/html/rips

RUN jq --slurp --raw-input '{"text": "\(.)", "mode": "markdown"}' < docker-security-tools/php/Readme.md | curl --data @- https://api.github.com/markdown > /var/www/html/index.html

RUN chmod 755 /var/www/html/index.html

#RUN apt-get install -y language-pack-en-base &&\
#LC_ALL=en_US.UTF-8 add-apt-repository -y ppa:ondrej/php

RUN wget https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar &&
    wget https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar

RUN echo "service apache2 start" >> /etc/bash.bashrc

EXPOSE 80

CMD ["bash"]