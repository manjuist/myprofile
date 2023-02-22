#!/usr/bin/env bash

# ------
# name: setup-brew.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

brew install tmux ripgrep shellcheck shfmt the_silver_searcher tidy-html5 dust \
    difftastic duf fd ffmpeg fzf gcc git-delta glances gpg nnn pandoc yamllint \
    nvm btop neofetch zoxide aria2 cmake neovim swiftlint swiftformat exa make \
    graphicsmagick highlight libxml2 zsh ctags openssl bat rust-analyzer

brew install --cask macdown rocket-chat calibre firefox v2rayu he3-app/he3/he3 \
    youdaodict krita scribus rectangle sigil dbeaver-community kitty stats xld \
    losslesscut shotcut emacs flameshot macpass keepassxc wireshark foobar2000 \
    hiddenbar itsycal keka kekaexternalhelper lulu netnewswire httpie obsidian \
    free-download-manager alt-tab nutstore syntax-highlight cyberduck kdenlive \
    meld tencent-lemon thor visual-studio-code charles drawio alacritty pencil \
    wechat handbrake docker opentoonz robo-3t audacity skim clipy inkscape mpv \
    another-redis-desktop-manager google-chrome gas-mask gimp blender go2shell \
    goldendict neovide gitup syncthing
