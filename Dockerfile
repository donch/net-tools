FROM alpine:3.15.4
MAINTAINER David Donchez <david.donchez@gmail.com>


# Installing some net tools
RUN apk add --no-cache mtr \
 netcat-openbsd \
 wget \
 bash \ 
 curl \
 htop \
 tcpdump \
 nmap \
 iperf \
 openssh-client \
 postgresql-client \
 mysql-client \
 bind-tools \
 redis \
 && rm -rf /var/cache/apk/*

CMD ["sleep", "infinity"]
