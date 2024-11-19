#!/usr/bin/env bash

# ------
# name: setup-dnf.sh
# author: Deve
# date: 2022-06-29
# ------

# another-redis-desktop-manager
# clash-verge-rev
# lazygit
# mkcert
# nekoray
# robo3t
# scrcpy
# switchhosts

set -e
set -o pipefail

sudo dnf install -y aria2 audacity blender btop bottles calibre cmake copyq ctags \
    docker fcitx5 fcitx5-chinese-addons fcitx5-configtool fd-find feh ffmpeg-free \
    ffmpegthumbs filezilla flameshot fzf gcc gimp git git-cola gnupg goldendict \
    guake highlight httpie i3 i3lock i3status inkscape jq keepass \ keepassxc \
    kitty libxml2 make mousepad neovim nnn nodejs npm openssl p7zip pandoc \
    pdfarranger picard picom poppler remmina ripgrep rofi shellcheck shfmt \
    simplescreenrecorder shotcut thunderbird tilix tmux vifm vlc wireshark yamllint \
    yarnpkg zoxide zsh GraphicsMagick ImageMagick fcitx5-qt6 the_silver_searcher \
    nss-tools hadolint rust-analyzer networkmanager rxvt-unicode azote dunst \
    htop thunar

flatpak install flathub md.obsidian.Obsidian com.github.zadam.trilium \
    com.visualstudio.code com.jgraph.drawio.desktop org.localsend.localsend_app \
    com.google.Chrome net.hovancik.Stretchly org.freac.freac net.agalwood.Motrix \
    com.wps.Office org.cryptomator.Cryptomator io.dbeaver.DBeaverCommunity \
    com.tencent.WeChat org.freeplane.App org.freefilesync.FreeFileSync