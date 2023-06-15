#!/usr/bin/env bash

# ------
# name: setup-dnf.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo dnf install calibre keepassxc nnn syncthing tilix ctags python3 tmux exa \
    lightdm-gtk-greeter lightdm-gtk-greeter-settings simplescreenrecorder vlc \
    fcitx5-qt fzf gcc git-delta glances gnupg GraphicsMagick krita fcitx5 duf \
    yamllint zoxide zsh foliate scribus blender snapd firefox openssl konsole \
    fcitx5-autostart fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk cmake \
    ripgrep rofi shellcheck shfmt the_silver_searcher sigil guake aria2 kitty \
    highlight i3 i3lock i3status neovide libxml2 meld gnome-pomodoro git-cola \
    wireshark chromium flameshot fd-find ffmpeg-free lightdm tidy neovim make \
    glodendict emacs bat