FROM ubuntu:bionic

COPY /install-bitcoincore.sh /root/
RUN /bin/bash /root/install-bitcoincore.sh

EXPOSE 8332 8333

COPY /start-bitcoincore.sh /usr/local/bin/
CMD ["start-bitcoincore.sh"]
