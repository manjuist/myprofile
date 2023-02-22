#!/usr/bin/env bash

# ------
# name: setup-apt.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo apt install aria2 bat calibre chromium cmake universal-ctags duf vlc npm \
    emacs exa fd-find ffmpeg flameshot wireshark wireshark-qt glances vim-nox \
    libxml2 lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings make mpv \
    syncthing silversearcher-ag tidy tilix tmux universal-ctags guake w3m zsh \
    libxcb-xfixes0-dev libxkbcommon-dev build-essential vim mono-complete nnn \
    libfreetype6-dev libfontconfig1-dev golang rofi fcitx5-chinese-addons gcc \
    python3 python3-dev python3-pip gnupg graphicsmagick simplescreenrecorder \
    fcitx5-config-qt shellcheck shfmt silversearcher-ag xorg zoxide yamllint \
    highlight i3 i3-wm i3lock i3status kitty konsole krita meld neovim sigil \
    fzf tilda fcitx5 scribus pkg-config nodejs openjdk-17-jdk openjdk-17-jre \
    ripgrep openssl rust-all glodendict neovide git-cola
