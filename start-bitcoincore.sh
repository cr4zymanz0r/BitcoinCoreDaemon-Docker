#!/bin/bash

set -ex

#Create bitcoin.conf if it doesn't exist
if [ ! -e "/root/.bitcoin/bitcoin.conf" ]; then
    mkdir -p /root/.bitcoin
	
	echo "bitcoin.conf doesn't exist; creating."
	
	cat <<EOF > /root/.bitcoin/bitcoin.conf
disablewallet=1
printtoconsole=1
rpcuser=bitcoinrpc
rpcpassword=`dd if=/dev/urandom bs=33 count=1 2>/dev/null | base64`
EOF

fi

exec bitcoind