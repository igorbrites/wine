FROM igorbrites/wine:base

ARG DEBIAN_FRONTEND="noninteractive"

RUN set -x && \
    apt update && \
    apt install -y winehq-staging && \
    apt autoclean && \
    apt autoremove -y && \
    rm -rf /var/cache/apt/archives && \
    rm -rf /var/lib/apt/lists/*
