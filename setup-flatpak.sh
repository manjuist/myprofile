#!/usr/bin/env bash

# ------
# name: flatpak
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

flatpak install flathub org.shotcut.Shotcut
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub com.github.zadam.trilium
flatpak install flathub com.visualstudio.code
flatpak install flathub com.jgraph.drawio.desktop
flatpak install flathub com.usebottles.bottles
flatpak install flathub org.localsend.localsend_app
flatpak install flathub com.google.Chrome
flatpak install flathub net.hovancik.Stretchly
flatpak install flathub org.freac.freac
flatpak install flathub net.agalwood.Motrix
flatpak install flathub org.nickvision.tagger
flatpak install flathub com.wps.Office
flatpak install flathub org.cryptomator.Cryptomator
flatpak install flathub io.dbeaver.DBeaverCommunity
flatpak install flathub com.tencent.WeChat
flatpak install flathub org.freeplane.App
flatpak install flathub org.freefilesync.FreeFileSync