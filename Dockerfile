# Pterodactyl Python Dockerfile
FROM        python:slim

LABEL       author="Aditya Das" maintainer="me@quantumsoul.dev"

RUN apt-get update -y
RUN apt-get install -y curl ca-certificates openssl sqlite3 iproute2 gcc make g++
RUN useradd -d /home/container -m container
 
USER container
ENV  USER=container HOME=/home/container

USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/bash", "/entrypoint.sh"]
