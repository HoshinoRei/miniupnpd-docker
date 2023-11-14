FROM debian:12-slim
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y miniupnpd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
VOLUME /etc/miniupnpd/miniupnpd.conf
ENTRYPOINT ["miniupnpd", "-d", "-f", "/etc/miniupnpd/miniupnpd.conf"]
