FROM ubuntu:16.04

MAINTAINER Bavithra Murugan

RUN apt-get update && apt-get -y upgrade

RUN add-apt-repository ppa:webupd8team/java

RUN apt-get -y update

# Accept the license
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections

RUN apt-get -y install oracle-java7-installer

RUN apt-get -y install nodejs && apt-get -y install npm

COPY . /app

WORKDIR /app

CMD "npm -v"

CMD "npm start"
