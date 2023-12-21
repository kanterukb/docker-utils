FROM ubuntu:noble

MAINTAINER Bogdan Kanteruk <kanterukb@gmail.com>

RUN apt-get update \
    && apt-get install -y traceroute curl iputils-ping dnsutils netcat-openbsd jq nmap htop iftop net-tools \
        mc \
    && rm -rf /var/lib/apt/lists/*

COPY Dockerfile /Dockerfile
LABEL org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/kanterukb/docker-utils"