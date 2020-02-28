FROM igorbrites/wine:base

ARG DEBIAN_FRONTEND="noninteractive"

ARG WINE_VERSION

RUN set -x && \
    apt update && \
    apt install -y \
        winehq-devel="${WINE_VERSION}~bionic" \
        wine-devel="${WINE_VERSION}~bionic" \
        wine-devel-amd64="${WINE_VERSION}~bionic" \
        wine-devel-i386="${WINE_VERSION}~bionic" && \
    apt autoclean && \
    apt autoremove -y && \
    rm -rf /var/cache/apt/archives && \
    rm -rf /var/lib/apt/lists/*
