FROM ubuntu:14.04

RUN apt-get update &&\
    apt-get install -y wget git apache2 libapache2-mod-php5 unzip git
    

RUN wget http://sourceforge.net/projects/rips-scanner/files/rips-0.55.zip/download

RUN git clone https://github.com/fabioarciniegas/docker-security-tools

RUN cp docker-security-tools/php/README.md /var/www/html/index.html

EXPOSE 80

CMD ["bash"]