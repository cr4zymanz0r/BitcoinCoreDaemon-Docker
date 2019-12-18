FROM ubuntu:bionic

ADD /install-bitcoincore.sh /root/
RUN /bin/bash /root/install-bitcoincore.sh

EXPOSE 8332 8333

ADD /start-bitcoincore.sh /root/
CMD /bin/bash /root/start-bitcoincore.sh
