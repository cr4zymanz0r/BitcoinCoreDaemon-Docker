#!/bin/sh

apt-get update \
apt-get install curl jq wget -y
baseURL="https://bitcoin.org/bin/bitcoin-core-"
tag=$(curl https://api.github.com/repos/bitcoin/bitcoin/releases/latest | jq '.tag_name' | tr -d '"','v')
file="$baseURL$tag/bitcoin-$tag-$(uname -m)-linux-gnu.tar.gz"

cd /root
wget $file
tar xzf bitcoin*
install -m 0755 -o root -g root -t /usr/local/bin bitcoin-$tag/bin/*