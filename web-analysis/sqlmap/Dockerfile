FROM python:2.7

RUN git clone -v  https://github.com/sqlmapproject/sqlmap.git \
    && cd sqlmap \					      
    && git checkout tags/${VERSION}

WORKDIR /sqlmap
VOLUME /data
CMD bash