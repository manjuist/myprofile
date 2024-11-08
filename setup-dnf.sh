#!/usr/bin/env bash

# ------
# name: setup-dnf.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo dnf install -y aria2 audacity blender btop calibre cmake copyq ctags docker \
    fcitx5 fcitx5-chinese-addons fcitx5-configtool fd-find feh ffmpeg-free ffmpegthumbs \
    filezilla flameshot fzf gcc gimp git git-cola glances gnupg goldendict guake highlight \
    httpie i3 i3lock i3status inkscape jq keepass keepassxc kitty libxml2 make neovim \
    nnn nodejs npm openssl p7zip pandoc pdfarranger picard picom pnpm poppler python3 \
    python3-jedi python3-pip remmina ripgrep rofi shellcheck shfmt simplescreenrecorder \
    thunderbird tilix tmux vifm vlc wireshark xonsh yamllint yarnpkg zoxide zsh GraphicsMagick \
    ImageMagick fcitx5-qt6 the_silver_searcher hadolint rust-analyzer