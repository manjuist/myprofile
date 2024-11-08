#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo pacman -S --needed aria2 audacity base-devel blender btop calibre cmake copyq ctags docker \
    fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk fcitx5-im fcitx5-qt fd \
    feh ffmpeg ffmpegthumbnailer filezilla flameshot fzf gcc gimp git glances gnupg \
    graphicsmagick guake highlight httpie i3-wm i3lock i3status imagemagick inkscape \
    jq keepass keepassxc kitty lazygit libxml2 make neovim nnn nodejs npm openssl p7zip \
    pdfarranger picard picom pnpm poppler python-jedi python-pip python3 remmina ripgrep \
    rofi rust-analyzer scrcpy shfmt the_silver_searcher thunderbird tilix tmux vifm \
    vlc wireshark-cli wireshark-qt xonsh xorg yamllint yarn zoxide zsh

yay -S another-redis-desktop-manager-appimage balena-etcher clash-verge-rev-bin \
    git-cola goldendict-git hadolint-bin nekoray pandoc-bin robo3t-bin shellcheck-bin \
    simplescreenrecorder switchhosts