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
    highlight i3-wm i3lock i3status konsole libxml2 lightdm make neovim fd feh \
    wireshark-cli wireshark-qt flameshot audacity copyq krita nodejs filezilla \
    xorg yamllint zsh foliate blender duf syncthing nnn flatpak docker keepass \
    ripgrep rofi shfmt the_silver_searcher tidy guake tmux python3 scribus fzf \
    fcitx5-im fcitx5-qt meld gcc git-delta graphicsmagick tilix v2ray inkscape \
    firefox glances alacritty aria2 ctags rust-analyzer pandoc-cli picom xonsh \
    calibre cmake difftastic shellcheck gnupg remmina keepassxc btop gimp exa \
    thunderbird base-devel httpie npm

sudo yay -S wechat-uos simplescreenrecorder