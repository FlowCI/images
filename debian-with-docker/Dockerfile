FROM debian:8-slim

RUN apt update
RUN apt install curl -y

## docker ##
RUN curl -L https://github.com/FlowCI/docker/releases/download/v0.20.9/docker-19_03_5 -o /usr/local/bin/docker \
    && chmod +x /usr/local/bin/docker \
    && ln -s /usr/local/bin/docker /usr/bin/docker

## docker compose ##
RUN curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose \
    && ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose