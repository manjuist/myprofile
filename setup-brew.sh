#!/usr/bin/env bash

# ------
# name: setup-brew.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

brew tap localsend/localsend
brew install localsend

brew tap macos-fuse-t/homebrew-cask
brew install fuse-t
brew install fuse-t-sshfs

brew install fd fzf gcc gpg nnn nvm zsh btop isort pylint autopep8 swiftformat \
    openssl neofetch yamllint swiftlint highlight git-delta shellcheck lazygit \
    cmake ctags xonsh zoxide neovim ffmpeg pandoc ripgrep libxml2 shfmt scrcpy \
    jsonlint prettier stylelint yapf flake8 node tmux tidy-html5 rust-analyzer \
    the_silver_searcher make pinentry-mac

brew install --cask docker blender lulu gimp thor keka skim espanso olive gitx \
    motrix findergo flameshot rectangle inkscape fontforge stretchly freeplane \
    robo-3t alt-tab nutstore obsidian audacity iina syncthing itsycal squirrel \
    keepassxc pencil alacritty kitty firefox macpass macdown dbeaver-community \
    visual-studio-code kekaexternalhelper another-redis-desktop-manager drawio \
    intellij-idea-ce syntax-highlight microsoft-onenote goldendict httpie pika \
    cryptomator mongodb-compass switchhosts adapter google-chrome textmate kap \
    calibre clipy keepingyouawake musicbrainz-picard trilium-notes netnewswire \
    zotero

# xld wireshark kid3 charles freac handbrake