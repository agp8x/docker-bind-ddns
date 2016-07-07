FROM ubuntu

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y bind9

COPY named.conf.local /etc/bind/named.conf.local
COPY zonefile /var/cache/bind/zonefile

EXPOSE 53
CMD ["/usr/sbin/named"]
