FROM ubuntu:14.04

MAINTAINER Giuseppe Vavala
MAINTAINER Sergio Matone

# ADD JAVA repo
RUN apt-get update && apt-get install -y \
  python-software-properties \
  software-properties-common
RUN add-apt-repository ppa:webupd8team/java

# Install Java
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get update && apt-get -y install oracle-java8-installer
