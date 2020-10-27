FROM debian:stable-slim

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install build-essential