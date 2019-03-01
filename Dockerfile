FROM ubuntu:18.04

# Prevents annoying debconf errors during builds
ARG DEBIAN_FRONTEND="noninteractive"

ENV USERNAME wine

RUN mkdir -p /etc/sudoers.d && \
    useradd -m $USERNAME && \
    echo "$USERNAME:$USERNAME" | chpasswd && \
    usermod --shell /bin/bash $USERNAME && \
    usermod -aG sudo $USERNAME && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME && \
    usermod  --uid 1000 $USERNAME && \
    groupmod --gid 1000 $USERNAME && \
    dpkg --add-architecture i386&& \
    apt-get update && \
    apt-get install -y \
        software-properties-common \
        winbind \
        cabextract \
        p7zip \
        unzip \
        wget \
        zenity \
        curl \
        gnupg2 \
        xorg \
        openbox && \
    curl https://dl.winehq.org/wine-builds/winehq.key | apt-key add - && \
    apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' && \
    apt-get update && \
    apt-get install -y --install-recommends winehq-staging && \
    mkdir -p /home/wine/.cache/wine && \
    wget https://dl.winehq.org/wine/wine-mono/4.8.0/wine-mono-4.8.0.msi -O /home/wine/.cache/wine/wine-mono-4.8.0.msi && \
    wget https://dl.winehq.org/wine/wine-gecko/2.47/wine_gecko-2.47-x86.msi -O /home/wine/.cache/wine/wine_gecko-2.47-x86.msi && \
    wget https://dl.winehq.org/wine/wine-gecko/2.47/wine_gecko-2.47-x86_64.msi -O /home/wine/.cache/wine/wine_gecko-2.47-x86_64.msi && \
    wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks -O /usr/bin/winetricks && \
    chmod +rx /usr/bin/winetricks && \
    mkdir -p /home/wine/.cache/winetricks/win7sp1 && \
    wget https://download.microsoft.com/download/0/A/F/0AFB5316-3062-494A-AB78-7FB0D4461357/windows6.1-KB976932-X86.exe \
        -O /home/wine/.cache/winetricks/win7sp1/windows6.1-KB976932-X86.exe && \
    apt-get autoremove -y software-properties-common && \
    apt-get autoclean && \
    apt-get clean && \
    apt-get autoremove && \
    chown -R "$USERNAME:$USERNAME" /home/wine

WORKDIR /home/wine
