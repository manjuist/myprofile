#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo pacman -S lightdm-gtk-greeter lightdm-gtk-greeter-settings openssl nnn \
    emacs fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk ffmpeg bat \
    highlight i3-wm i3lock i3status konsole libxml2 lightdm make neovim fd mpv \
    pencil visual-studio-code-bin wps-office-cn dbeaver-ee flatpak firefox exa \
    simplescreenrecorder wireshark-cli wireshark-qt chromium flameshot keepass \
    ripgrep rofi shellcheck shfmt the_silver_searcher tidy guake tmux python3 \
    ttf-font-icons xorg yamllint zoxide zsh krita foliate scribus blender duf \
    kitty aria2 calibre cmake ctags difftastic dust keepassxc sigil-git meld \
    fcitx5-im fcitx5-qt fzf gcc git-delta glances gpg graphicsmagick tilix \
    syncthing

# AUR pencil visual-studio-code-bin wps-office-cn dbeaver-ee gpg sigil-git
# flatpak install flathub com.usebottles.bottles
