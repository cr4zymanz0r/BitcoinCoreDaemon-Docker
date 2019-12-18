FROM ubuntu:bionic

#ENV HOME /bitcoin
VOLUME ["/bitcoin"]

ADD /install-bitcoincore.sh /root/
RUN /bin/bash /root/install-bitcoincore.sh

CMD sleep 100000
