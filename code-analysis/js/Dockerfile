FROM ubuntu:14.04

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

RUN apt-get install -y nodejs
RUN npm install -g eslint

# CMD eslint '/data/*.js'
# Define default command.
CMD ["bash"]