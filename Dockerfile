FROM debian:stable

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get -y dist-upgrade && \
    timedatectl set-timezone Europe/Berlin && \
    apt-get -y install build-essential