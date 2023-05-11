FROM alpine:edge
MAINTAINER David Donchez <david.donchez@gmail.com>


RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# Installing some tools
RUN apk update && apk add --no-cache mtr \
 netcat-openbsd \
 wget \
 bash \ 
 curl \
 htop \
 tcpdump \
 nmap \
 iperf \
 nload \
 openssh-client \
 postgresql-client \
 mysql-client \
 bind-tools \
 redis \
 starship \
 vim \
 kubectl \
 strace \
 && rm -rf /var/cache/apk/*

COPY files/.bashrc /root/.bashrc
COPY files/starship.toml /root/.config/starship.toml

CMD ["sleep", "infinity"]
