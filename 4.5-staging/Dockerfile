FROM igorbrites/wine:base

ARG DEBIAN_FRONTEND="noninteractive"

ENV WINE_VERSION=4.5~bionic

RUN set -x && \
    apt update && \
    apt install -y \
        winehq-staging=$WINE_VERSION \
        wine-staging=$WINE_VERSION \
        wine-staging-amd64=$WINE_VERSION \
        wine-staging-i386=$WINE_VERSION && \
    apt autoclean && \
    apt autoremove -y && \
    rm -rf /var/cache/apt/archives && \
    rm -rf /var/lib/apt/lists/*
