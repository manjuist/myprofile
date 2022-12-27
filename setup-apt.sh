#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo apt install aria2 bat blender calibre chromium cmake universal-ctags duf \
    libxml2 lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings make mpv \
    syncthing silversearcher-ag tidy tilix tmux universal-ctags vlc w3m zsh \
    emacs exa fd-find ffmpeg firefox flameshot wireshark wireshark-qt yamllint \
    highlight i3 i3-wm i3lock i3status kitty konsole krita meld neovim nnn \
    openssl python3 python3-dev ripgrep rofi scribus fcitx5-chinese-addons \
    fcitx5-config-qt shellcheck shfmt silversearcher-ag xorg zoxide \
    simplescreenrecorder tilda fcitx5 flatpak fzf gcc glances gpg guake \
    graphicsmagick

# AUR pencil visual-studio-code-bin wps-office-cn dbeaver-ee gpg 
# flatpak install flathub com.usebottles.bottles
# git-delta alacritty dbeaver-ce difftastic dust sigil-git
# pencil keepass keepassxc 
