FROM debian:stable-slim

RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get -y install build-essential