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
    simplescreenrecorder wireshark-cli wireshark-qt chromium flameshot keepass \
    xorg yamllint zsh krita foliate blender duf syncthing nnn neovide git-cola \
    fcitx5-im fcitx5-qt meld gcc git-delta gpg graphicsmagick tilix glodendict \
    ripgrep rofi shfmt the_silver_searcher tidy guake tmux python3 scribus fzf \
    calibre cmake difftastic dust shellcheck sigil-git gnupg keepassxc remmina \
    pencil wps-office-cn firefox glances alacritty dbeaver-ee aria2 ctags code \
    bottles drawio-desktop exa goldendict-git flatpak rust-analyzer pandoc-cli \
    snapd btop filezilla shotcut docker robo3t-bin wechat-uos httpie opentoonz \
    another-redis-desktop-manager-appimage stretchly-bin audacity copyq v2raya \
    microsoft-edge-stable-bin google-chrome inkscape gimp thunderbird obsidian \
    freedownloadmanager localsend-bin yay flying-carpet-bin desktop-naotu-bin \
    qv2ray v2ray