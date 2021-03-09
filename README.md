**Application**

[Bitcoin (full node)](https://bitcoin.org/en/download)

**Description**

This allows you to run a Bitcoin full node from a Docker container. The initial download of the blockchain (200GB+) can take quite a long time. Also, wallet functionality is turned off by default (you can edit bitcoin.conf to enable it)

**Usage**

This has only been tested with Unraid, but is assumed to work with other Docker solutions.

Paths:
````
Bitcoin-Data: /root/.bitcoin
blocks: /root/.bitcoin/blocks
chainstate: /root/.bitcoin/chainstate
# 'blocks' and 'chainstate' are not required if you're fine with keeping the blockchain data with the rest of Bitcoin data directory.
````

Ports:
````
TCP 8333 (Forward this on your router if you want other peers to be able to connect to your node.)
TCP 8332 (Used for internal RPC communication. Untested with this Docker.)
````

Environment Variables:
```
DOWN_LIMIT ' Limit the download bandwidth consumption to DOWN_LIMIT KB/s.
UP_LIMIT ' Limit the upload bandwidth consumption to UP_LIMIT KB/s.
```

____
If you like my work and are feeling generious, here's my donation information:

Bitcoin address: bc1qvm5pwpwenekmyd30u6hn27xxhhxz55c83jgs8q
