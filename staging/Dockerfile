FROM igorbrites/wine:base

ARG DEBIAN_FRONTEND="noninteractive"

ARG WINE_VERSION

RUN set -x && \
    apt update && \
    apt install -y \
        winehq-staging="${WINE_VERSION}~bionic" \
        wine-staging="${WINE_VERSION}~bionic" \
        wine-staging-amd64="${WINE_VERSION}~bionic" \
        wine-staging-i386="${WINE_VERSION}~bionic" && \
    apt autoclean && \
    apt autoremove -y && \
    rm -rf /var/cache/apt/archives && \
    rm -rf /var/lib/apt/lists/*
