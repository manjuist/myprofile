#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

# simplescreenrecorder
rpm -Uvh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm
dnf copr enable zeno/scrcpy

sudo yum install i3 zsh duf bat fzf nnn gcc npm exa feh make gimp tmux rofi \
    tidy meld btop copyq krita shfmt guake picom emacs cmake gnupg tilix ctags \
    aria2 xonsh fcitx5 i3lock neovim docker zoxide fcitx5 nodejs httpie pandoc \
    openssl konsole libxml2 lightdm fd-find foliate blender ripgrep python3 \
    scribus calibre remmina firefox glances i3status chromium audacity \
    yamllint inkscape highlight wireshark flameshot syncthing fcitx5-qt \
    git-delta keepassxc filezilla alacritty fontforge fcitx5-gtk difftastic \
    shellcheck ffmpeg-free thunderbird rust-analyzer GraphicsMagick \
    fcitx5-configtool lightdm-gtk-greeter the_silver_searcher scrcpy \
    simplescreenrecorder fcitx5-chinese-addons lightdm-gtk-greeter-settings

# wechat-uos