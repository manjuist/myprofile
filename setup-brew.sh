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

brew install --cask he3-app/he3/he3 rectangle kitty gitup visual-studio-code \
    flameshot itsycal keka kekaexternalhelper thor espanso neovide cyberduck \
    syntax-highlight another-redis-desktop-manager dbeaver-community charles \
    kap drawio pencil docker robo-3t skim meld wechat httpie emacs opentoonz \
    gas-mask clipy google-chrome findergo free-download-manager alt-tab gimp \
    calibre firefox v2rayu nutstore tencent-lemon blender handbrake audacity \
    inkscape wireshark hiddenbar syncthing goldendict shotcut keepassxc lulu \
    netnewswire obsidian vlc go2shell xld thunderbird stretchly