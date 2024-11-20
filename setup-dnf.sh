#!/usr/bin/env bash

# ------
# name: setup-dnf.sh
# author: Deve
# date: 2022-06-29
# ------

# another-redis-desktop-manager
# bottles
# clash-verge-rev
# lazygit
# mkcert
# nekoray
# robo3t
# scrcpy
# simplescreenrecorder
# switchhosts

# com.github.zadam.trilium
# com.google.Chrome
# com.wps.Office
# com.tencent.WeChat

set -e
set -o pipefail

sudo dnf install -y aria2 audacity blender btop calibre cmake copyq ctags docker \
    fcitx5 fcitx5-chinese-addons fcitx5-configtool fd-find feh ffmpeg-free ffmpegthumbs \
    filezilla flameshot fzf gcc gimp git git-cola gnupg goldendict guake highlight \
    httpie i3 i3lock i3status inkscape jq keepass keepassxc kitty libxml2 make \
    mousepad neovim nnn nodejs npm openssl p7zip pandoc pdfarranger picard picom \
    poppler remmina ripgrep rofi shellcheck shfmt shotcut thunderbird tilix tmux \
    vifm vlc wireshark yamllint yarnpkg zoxide zsh GraphicsMagick ImageMagick fcitx5-qt6 \
    the_silver_searcher nss-tools hadolint rust-analyzer NetworkManager rxvt-unicode \
    azote dunst htop thunar

flatpak install flathub md.obsidian.Obsidian com.visualstudio.code com.jgraph.drawio.desktop \
    org.localsend.localsend_app net.hovancik.Stretchly org.freac.freac net.agalwood.Motrix \
    org.cryptomator.Cryptomator io.dbeaver.DBeaverCommunity org.freefilesync.FreeFileSync \
    org.freeplane.App