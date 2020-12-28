FROM debian:stable

ARG DEBIAN_FRONTEND=noninteractive
ARG DEBCONF_NONINTERACTIVE_SEEN=true
RUN echo "tzdata tzdata/Areas select Europe" > debconf
RUN echo "tzdata tzdata/Zones/Europe select Berlin" >> debconf
RUN debconf-set-selections debconf
RUN rm /etc/localtime /etc/timezone
RUN dpkg-reconfigure tzdata
RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get -y install build-essential libssl-dev clang