#!/usr/bin/env bash

# ------
# name: setup-dnf.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo dnf install calibre keepassxc nnn mpv syncthing tilix ctags python3 vlc \
    fcitx5-qt fzf gcc git-delta glances gnupg GraphicsMagick meld fcitx5 duf \
    yamllint zoxide zsh krita foliate scribus blender snapd firefox openssl \
    fcitx5-autostart fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk exa \
    ripgrep rofi shellcheck shfmt the_silver_searcher tidy guake tmux cmake \
    wireshark chromium sigil flameshot fd-find ffmpeg-free kitty aria2 bat \
    highlight i3 i3lock i3status konsole libxml2 lightdm make neovim emacs \
    lightdm-gtk-greeter lightdm-gtk-greeter-settings simplescreenrecorder

type cargo && cargo install difftastic du-dust
