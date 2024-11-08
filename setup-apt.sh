#!/usr/bin/env bash

# ------
# name: setup-apt.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo apt install -y aria2 audacity blender btop calibre cmake copyq ctags docker \
    fcitx5 fcitx5-chinese-addons fcitx5-configtool fd-find feh ffmpeg ffmpegthumbnailer \
    filezilla flameshot fzf gcc gimp git git-cola glances gnupg goldendict guake highlight \
    httpie i3-wm i3lock i3status inkscape jq keepass keepassxc kitty libxml2 make neovim \
    nnn nodejs npm openssl p7zip pandoc pdfarranger picard picom pnpm poppler python3 \
    python3-jedi python3-pip remmina ripgrep rofi shellcheck shfmt simplescreenrecorder \
    thunderbird tilix tmux vifm vlc wireshark xonsh yamllint yarn zoxide zsh graphicsmagick \
    imagemagick libfcitx5-qt6-1 silversearcher-ag wireshark-qt