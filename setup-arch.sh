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
    wireshark-cli wireshark-qt chromium flameshot keepass audacity copyq krita \
    xorg yamllint zsh foliate blender duf syncthing nnn neovide flatpak docker \
    ripgrep rofi shfmt the_silver_searcher tidy guake tmux python3 scribus fzf \
    fcitx5-im fcitx5-qt meld gcc git-delta graphicsmagick tilix v2ray inkscape \
    calibre cmake difftastic dust shellcheck gnupg remmina keepassxc btop gimp \
    firefox glances alacritty aria2 ctags code rust-analyzer pandoc-cli httpie \
    filezilla shotcut opentoonz thunderbird obsidian exa

sudo yay -S simplescreenrecorder bottles git-cola gpg sigil-git goldendict-git \
    wps-office-cn dbeaver-ee drawio-desktop localsend-bin google-chrome qv2ray \
    robo3t-bin wechat-uos another-redis-desktop-manager-appimage stretchly-bin \
    v2raya microsoft-edge-stable-bin flying-carpet-bin desktop-naotu-bin snapd \
    pencil freedownloadmanager