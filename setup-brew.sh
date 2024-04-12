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

brew install --cask docker blender lulu thor keka skim espanso olive gitx iina \
    motrix findergo flameshot rectangle stretchly robo-3t alt-tab nutstore \
    obsidian syncthing itsycal keepassxc alacritty macdown dbeaver-community \
    visual-studio-code kekaexternalhelper another-redis-desktop-manager drawio \
    syntax-highlight microsoft-onenote goldendict httpie pika cryptomator kap \
    calibre clipy keepingyouawake mongodb-compass switchhosts google-chrome \
    textmate

# xld wireshark kid3 charles freac handbrake squirrel audacity freeplane
# zotero musicbrainz-picard netnewswire adapter intellij-idea-ce pencil macpass
# fontforge inkscape gimp