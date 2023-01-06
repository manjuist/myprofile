#!/usr/bin/env bash

# ------
# name: setup-apt.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo apt install aria2 bat blender calibre chromium cmake universal-ctags duf \
    emacs exa fd-find ffmpeg firefox flameshot wireshark wireshark-qt glances \
    libxml2 lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings make mpv \
    syncthing silversearcher-ag tidy tilix tmux universal-ctags guake w3m zsh \
    fcitx5-config-qt shellcheck shfmt silversearcher-ag xorg zoxide yamllint \
    highlight i3 i3-wm i3lock i3status kitty konsole krita meld neovim sigil \
    openssl python3 python3-dev ripgrep rofi gcc fcitx5-chinese-addons gnupg \
    simplescreenrecorder tilda fcitx5 fzf scribus graphicsmagick nnn vlc

type flatpak && flatpak install flathub com.usebottles.bottles
type cargo && cargo install du-dust difftastic alacritty git-delta
