#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo pacman -S lightdm-gtk-greeter lightdm-gtk-greeter-settings openssl zoxide \
    emacs fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk ffmpeg bat \
    highlight i3-wm i3lock i3status konsole libxml2 lightdm make neovim fd vlc \
    pencil visual-studio-code-bin wps-office-cn dbeaver-ee firefox exa glances \
    simplescreenrecorder wireshark-cli wireshark-qt chromium flameshot keepass \
    xorg yamllint zsh krita foliate blender duf syncthing nnn neovide git-cola \
    fcitx5-im fcitx5-qt meld gcc git-delta gpg graphicsmagick tilix glodendict \
    ripgrep rofi shfmt the_silver_searcher tidy guake tmux python3 scribus fzf \
    kitty aria2 calibre cmake ctags difftastic dust shellcheck sigil-git gnupg \
    keepassxc remmina