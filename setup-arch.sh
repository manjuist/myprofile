#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo pacman -S --needed aria2 audacity blender btop cmake ctags docker fcitx5 \
    fcitx5-chinese-addons fcitx5-configtool fd feh ffmpeg ffmpegthumbnailer \
    filezilla flameshot fzf gcc gimp git gnupg guake highlight httpie i3-wm \
    i3lock i3status inkscape jq keepass keepassxc kitty libxml2 make neovim \
    nnn nodejs npm openssl p7zip pandoc-bin pdfarranger picard picom poppler \
    remmina ripgrep rofi shellcheck shfmt thunderbird tilix tmux vifm vlc \
    yamllint yarn zoxide zsh graphicsmagick imagemagick fcitx5-qt \
    the_silver_searcher nss rust-analyzer mkcert base-devel lazygit scrcpy

yay -S another-redis-desktop-manager-appimage clash-verge-rev-bin git-cola \
    goldendict-git hadolint-bin nekoray robo3t-bin simplescreenrecorder \
    switchhosts

source ./setup-flatpak.sh