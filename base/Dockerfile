FROM ubuntu:18.04

# Prevents annoying debconf errors during builds
ARG DEBIAN_FRONTEND="noninteractive"

ENV USERNAME wine

RUN set -x && \
    dpkg --add-architecture i386 && \
    apt update && \
    apt install -y software-properties-common curl && \
    curl https://dl.winehq.org/wine-builds/winehq.key | apt-key add - && \
    curl https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/Release.key | apt-key add - && \
    apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' && \
    apt-add-repository 'deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/ ./' && \
    apt update && \
    apt install -y --install-recommends \
        cabextract \
        gnupg2 \
        libfaudio0 \
        openbox \
        p7zip \
        unzip \
        wget \
        winbind \
        # winehq-staging \
        xorg \
        zenity && \
    mkdir -p /home/wine/.cache/wine && \
    wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks -O /usr/bin/winetricks && \
    chmod +rx /usr/bin/winetricks && \
    apt remove --purge -y software-properties-common && \
    apt autoclean && \
    apt autoremove -y && \
    rm -rf /var/cache/apt/archives && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /etc/sudoers.d && \
    useradd -m $USERNAME && \
    echo "$USERNAME:$USERNAME" | chpasswd && \
    usermod --shell /bin/bash $USERNAME && \
    usermod -aG sudo $USERNAME && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME && \
    usermod  --uid 1000 $USERNAME && \
    groupmod --gid 1000 $USERNAME && \
    chown -R "$USERNAME:$USERNAME" /home/wine

WORKDIR /home/wine
