#!/usr/bin/env bash

# ------
# name: setup-dnf.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo dnf install calibre keepassxc nnn mpv syncthing tilix \
    yamllint zoxide zsh krita foliate scribus blender flatpak snapd firefox \
    fcitx5-autostart fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk exa \
    ripgrep rofi shellcheck shfmt the_silver_searcher tidy guake tmux cmake \
    wireshark chromium sigil flameshot fd-find ffmpeg-free kitty aria2 bat \
    highlight i3 i3lock i3status konsole libxml2 lightdm make neovim emacs \
    fcitx5-qt fzf gcc git-delta glances gpg GraphicsMagick meld fcitx5 duf \
    lightdm-gtk-greeter lightdm-gtk-greeter-settings ctags openssl python3

sudo snap install simplescreenrecorder
# difftastic
# dust
