#!/usr/bin/env bash

# ------
# name: setup-brew.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

brew tap localsend/localsend

brew install tmux ripgrep shellcheck shfmt the_silver_searcher tidy-html5 dust \
    btop neofetch zoxide cmake neovim swiftlint swiftformat exa make highlight \
    difftastic duf fd ffmpeg fzf gcc git-delta gpg nnn pandoc yamllint nvm zsh \
    libxml2 ctags openssl bat rust-analyzer xonsh

brew install --cask rectangle netnewswire visual-studio-code flameshot itsycal \
    keka kekaexternalhelper thor espanso neovide charles drawio gimp localsend \
    pencil docker robo-3t skim meld wechat httpie opentoonz gas-mask vlc clipy \
    calibre firefox v2rayu nutstore tencent-lemon blender handbrake goldendict \
    inkscape wireshark hiddenbar syncthing shotcut keepassxc lulu obsidian xld \
    free-download-manager alt-tab audacity another-redis-desktop-manager gitup \
    thunderbird stretchly syntax-highlight findergo google-chrome kap caffeine \
    microsoft-edge flying-carpet microsoft-onenote mos