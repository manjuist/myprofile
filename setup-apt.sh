#!/usr/bin/env bash

# ------
# name: setup-apt.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo apt install aria2 bat calibre chromium cmake universal-ctags duf npm fzf \
    emacs exa fd-find ffmpeg flameshot wireshark wireshark-qt glances vim-nox \
    libxml2 lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings make vlc \
    syncthing silversearcher-ag tidy tilix tmux universal-ctags guake w3m zsh \
    libxcb-xfixes0-dev libxkbcommon-dev build-essential vim mono-complete nnn \
    libfreetype6-dev libfontconfig1-dev golang rofi fcitx5-chinese-addons gcc \
    python3 python3-dev python3-pip gnupg graphicsmagick simplescreenrecorder \
    highlight i3 i3-wm i3lock shfmt i3status konsole neovide krita meld sigil \
    tilda fcitx5-config-qt shellcheck silversearcher-ag xorg ripgrep yamllint \
    openssl scribus pkg-config openjdk-17-jdk openjdk-17-jre rust-all remmina \
    glodendict neovim git-cola gnome-shell-pomodoro zoxide fcitx5 nodejs