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
    tencent-lemon thor visual-studio-code charles drawio pencil blender docker \
    handbrake opentoonz robo-3t audacity skim meld inkscape httpie gimp wechat \
    wireshark hiddenbar itsycal keka kekaexternalhelper lulu mpv gitup espanso \
    neovide syncthing cyberduck syntax-highlight another-redis-desktop-manager \
    dbeaver-community goldendict shotcut emacs flameshot keepassxc netnewswire \
    obsidian nutstore go2shell gas-mask clipy alt-tab google-chrome findergo \
    free-download-manager kap