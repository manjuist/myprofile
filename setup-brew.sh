#!/usr/bin/env bash

# ------
# name: setup-brew.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

brew install tmux ripgrep shellcheck shfmt the_silver_searcher tidy-html5 zsh \
    difftastic duf dust fd ffmpeg fzf gcc git-delta glances gpg nnn pandoc exa \
    nvm btop neofetch zoxide alacritty aria2 cmake ctags swiftlint swiftformat \
    graphicsmagick highlight libxml2 make neovim openssl python3 yamllint bat \
    rust-analyzer

brew install --cask blender macdown espanso monitorcontrol rocket-chat calibre \
    wechat handbrake docker kdenlive robo-3t gimp audacity v2rayu firefox skim \
    youdaodict krita scribus rectangle sigil dbeaver-community kitty stats xld \
    iterm2 meld tencent-lemon thor visual-studio-code wpsoffice-cn charles mpv \
    losslesscut shotcut emacs flameshot macpass keepassxc wireshark foobar2000 \
    free-download-manager alt-tab nutstore syntax-highlight cyberduck brewlet \
    hiddenbar itsycal keka kekaexternalhelper lulu netnewswire pencil httpie \
    drawio gas-mask go2shell clipy google-chrome obsidian inkscape opentoonz
