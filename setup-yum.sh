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

sudo yum install lightdm-gtk-greeter lightdm-gtk-greeter-settings openssl make \
    fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk ffmpeg-free gimp \
    highlight i3 i3lock i3status konsole libxml2 lightdm neovim fd-find docker \
    wireshark chromium flameshot audacity copyq zoxide krita yamllint zsh tmux \
    foliate blender duf syncthing ripgrep rofi shfmt the_silver_searcher guake \
    python3 scribus bat fzf nnn tidy fcitx5 fcitx5-qt meld gcc git-delta picom \
    emacs calibre cmake difftastic shellcheck gnupg remmina keepassxc btop npm \
    GraphicsMagick tilix inkscape filezilla alacritty thunderbird nodejs ctags \
    firefox glances aria2 rust-analyzer httpie exa xonsh feh pandoc fontforge \
    simplescreenrecorder

# wechat-uos