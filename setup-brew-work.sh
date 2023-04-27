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

brew install --cask he3-app/he3/he3 rectangle kitty pencil visual-studio-code \
    flameshot itsycal keka kekaexternalhelper espanso neovide cyberduck emacs \
    syntax-highlight another-redis-desktop-manager dbeaver-community findergo \
    httpie kap drawio docker robo-3t skim meld wechat thunderbird clipy gitup \
    thor gas-mask google-chrome free-download-manager alt-tab charles gimp