#!/usr/bin/env bash

# ------
# name: setup-brew.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

brew tap localsend/localsend
brew tap macos-fuse-t/homebrew-cask

brew install btop cmake ctags fastfetch fd ffmpeg ffmpegthumbnailer \
    font-symbols-only-nerd-font fuse-t fuse-t-sshfs fzf gcc gpg grex hadolint \
    highlight htop imagemagick jq lazygit libxml2 localsend make mkcert neovim \
    nnn node nss nvm openssl pandoc poppler ripgrep rust-analyzer scrcpy sevenzip \
    shellcheck shfmt the_silver_searcher tmux tree vifm yamllint zoxide zsh wabt

brew install --cask alt-tab another-redis-desktop-manager audacity \
    balenaetcher blender calibre charles cryptomator dbeaver-community docker \
    drawio espanso findergo flameshot flux freeplane gimp gitx goldendict \
    google-chrome handbrake httpie inkscape jordanbaird-ice kap keepassxc \
    keepingyouawake keka kekaexternalhelper kitty lulu maccy macdown macpass \
    microsoft-onenote mongodb-compass motrix musicbrainz-picard netnewswire \
    obsidian pika postman rectangle robo-3t sfm shotcut shottr skim stretchly \
    switchhosts syntax-highlight textmate thor trilium-notes visual-studio-code \
    vlc wireshark xld windterm