#!/usr/bin/env bash

# ------
# name: setup-apt.sh
# author: Deve
# date: 2022-06-29
# ------

# another-redis-desktop-manager
# clash-verge-rev
# hadolint
# lazygit
# mkcert
# nekoray
# robo3t
# rust-analyzer
# scrcpy
# switchhosts

set -e
set -o pipefail

sudo apt install -y aria2 audacity blender btop cmake ctags docker fcitx5 \
    fcitx5-chinese-addons fcitx5-configtool fd-find feh ffmpeg ffmpegthumbnailer \
    filezilla flameshot fzf gcc gimp git git-cola gnupg goldendict guake \
    highlight httpie i3-wm i3lock i3status inkscape jq keepass keepassxc \
    kitty libxml2 make neovim nnn nodejs npm openssl p7zip pandoc pdfarranger \
    picard picom poppler remmina ripgrep rofi shellcheck shfmt simplescreenrecorder \
    thunderbird tilix tmux vifm vlc yamllint yarn zoxide zsh graphicsmagick \
    imagemagick libfcitx5-qt6-1 silversearcher-ag libnss3-tools

source ./setup-flatpak.sh