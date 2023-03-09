#!/usr/bin/env bash

# ------
# name: setup-brew.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

brew install tmux ripgrep shellcheck shfmt the_silver_searcher tidy-html5 dust \
    btop neofetch zoxide cmake neovim swiftlint swiftformat exa make highlight \
    difftastic duf fd ffmpeg fzf gcc git-delta gpg nnn pandoc yamllint nvm zsh \
    libxml2 ctags openssl bat rust-analyzer

brew install --cask calibre firefox v2rayu he3-app/he3/he3 rectangle kitty xld \
    dbeaver-community goldendict losslesscut shotcut emacs flameshot keepassxc \
    netnewswire obsidian free-download-manager alt-tab nutstore kdenlive clipy \
    tencent-lemon thor visual-studio-code charles drawio pencil blender docker \
    handbrake opentoonz robo-3t audacity skim meld inkscape httpie gimp wechat \
    macpass wireshark hiddenbar itsycal keka kekaexternalhelper lulu mpv gitup \
    neovide syncthing cyberduck syntax-highlight another-redis-desktop-manager \
    go2shell gas-mask google-chrome
