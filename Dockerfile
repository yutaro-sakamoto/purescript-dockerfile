FROM ubuntu:20.04
LABEL maintainer="yutaro-sakamoto@yutaro-sakamoto.com"

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y tzdata
RUN apt install -y nodejs npm git libncurses5

# install psvm
RUN npm install -g psvm

# install purs
RUN psvm install v0.14.0
RUN psvm use v0.14.0
RUN echo 'export PATH="$PATH:/root/.psvm/current/bin/"' >> ~/.bashrc

# install spago
RUN npm install -g spago

ENTRYPOINT ["/bin/bash"]
