FROM igorbrites/wine:base

ARG DEBIAN_FRONTEND="noninteractive"

ENV WINE_VERSION=4.0.3~bionic

RUN set -x && \
    apt update && \
    apt install -y \
        winehq-stable=$WINE_VERSION \
        wine-stable=$WINE_VERSION \
        wine-stable-amd64=$WINE_VERSION \
        wine-stable-i386=$WINE_VERSION && \
    apt autoclean && \
    apt autoremove -y && \
    rm -rf /var/cache/apt/archives && \
    rm -rf /var/lib/apt/lists/*
