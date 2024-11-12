#!/usr/bin/env bash

# ------
# name: flatpak
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

flatpak install flathub org.shotcut.Shotcut \
    md.obsidian.Obsidian \
    com.github.zadam.trilium \
    com.visualstudio.code \
    com.jgraph.drawio.desktop \
    com.usebottles.bottles \
    org.localsend.localsend_app \
    com.google.Chrome \
    net.hovancik.Stretchly \
    org.freac.freac \
    net.agalwood.Motrix \
    org.nickvision.tagger \
    com.wps.Office \
    org.cryptomator.Cryptomator \
    io.dbeaver.DBeaverCommunity \
    com.tencent.WeChat \
    org.freeplane.App \
    org.freefilesync.FreeFileSync \
    com.calibre_ebook.calibre \
    com.github.hluk.copyq \
    org.wireshark.Wireshark