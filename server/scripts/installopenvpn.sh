#!/bin/bash

# install openvpn access server

apt update
apt upgrade
apt install tzdata
dpkg-reconfigure tzdata

# Install via packages
# apt update && apt -y install ca-certificates wget net-tools gnupg
# wget https://as-repository.openvpn.net/as-repo-public.asc -qO /etc/apt/trusted.gpg.d/as-repository.asc
# echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/as-repository.asc] http://as-repository.openvpn.net/as/debian focal main">/etc/apt/sources.list.d/openvpn-as-repo.list
# apt update && apt -y install openvpn-as

# Install manually
# apt update
# apt install -y bridge-utils dmidecode iptables iproute2 libc6 libgcc1 liblz4-1 liblzo2-2 libmariadb3 libpcap0.8 libssl1.1 libstdc++6 libsasl2-2 libsqlite3-0 net-tools python3-pkg-resources python3-migrate python3-sqlalchemy python3-mysqldb python3-ldap3 sqlite3 zlib1g python3-netaddr python3-arrow python3-lxml python3-constantly python3-hyperlink python3-automat python3-service-identity python3-cffi python3-setuptools
# dpkg -i openvpn-as-bundled-clients-27.deb openvpn-as_2.11.3-af31575c-Ubuntu18_amd64.deb