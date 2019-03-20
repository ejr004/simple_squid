#/bin/sh

cp /config/squid.conf /etc/squid/squid.conf
systemctl enable squid
systemctl start squid
squid -k parse