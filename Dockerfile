FROM debian:stable

RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && \
    echo "tzdata tzdata/Areas select Europe" > debconf && \
    echo "tzdata tzdata/Zones/Europe select Berlin" >> debconf && \
    debconf-set-selections debconf && \
    rm /etc/localtime /etc/timezone && \
    dpkg-reconfigure tzdata && \
    apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get -y install build-essential