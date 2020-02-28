FROM igorbrites/wine:base

ARG DEBIAN_FRONTEND="noninteractive"

ARG WINE_VERSION

RUN set -x && \
    apt update && \
    apt install -y \
        winehq-stable="${WINE_VERSION}~bionic" \
        wine-stable="${WINE_VERSION}~bionic" \
        wine-stable-amd64="${WINE_VERSION}~bionic" \
        wine-stable-i386="${WINE_VERSION}~bionic" && \
    apt autoclean && \
    apt autoremove -y && \
    rm -rf /var/cache/apt/archives && \
    rm -rf /var/lib/apt/lists/*
