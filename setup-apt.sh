#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo apt install alacritty aria2 bat blender calibre chromium cmake ctags duf \
    fcitx5 flatpak foliate fzf gcc git-delta glances gpg graphicsmagick guake \
    libxml2 lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings make mpv \
    syncthing the_silver_searcher tidy tilix tmux universal-ctags vlc w3m zsh \
    dbeaver-ee difftastic dust emacs exa fd fd-find ffmpeg firefox flameshot \
    visual-studio-code-bin wireshark-cli wireshark-qt wps-office-cn yamllint \
    highlight i3 i3-wm i3lock i3status keepass keepassxc kitty konsole krita \
    meld neovim nnn openssl pencil python3 python3-dev ripgrep rofi scribus \
    shellcheck shfmt sigil-git silversearcher-ag simplescreenrecorder tilda \
    fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk fcitx5-im fcitx5-qt \
    xorg zoxide

# AUR pencil visual-studio-code-bin wps-office-cn dbeaver-ee gpg sigil-git
# flatpak install flathub com.usebottles.bottles
