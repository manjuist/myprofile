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

brew install fd exa duf fzf gcc gpg nnn nvm zsh bat dust btop make tmux cowsay \
    openssl neofetch yamllint swiftlint highlight git-delta shellcheck lazygit \
    tidy-html5 difftastic swiftformat rust-analyzer the_silver_searcher scrcpy \
    cmake ctags xonsh zoxide neovim ffmpeg pandoc ripgrep libxml2 shfmt ranger \
    jsonlint prettier stylelint yapf isort flake8 pylint autopep8 thefuck tldr \
    node

brew install --cask docker blender lulu gimp thor keka skim meld espanso olive \
    motrix findergo flameshot rectangle hiddenbar inkscape fontforge stretchly \
    robo-3t alt-tab nutstore obsidian audacity caffeine iina syncthing itsycal \
    keepassxc pencil alacritty kitty firefox macpass macdown dbeaver-community \
    visual-studio-code kekaexternalhelper another-redis-desktop-manager drawio \
    intellij-idea-ce syntax-highlight microsoft-onenote goldendict httpie pika \
    cryptomator balenaetcher mongodb-compass switchhosts adapter google-chrome \
    netnewswire thunderbird musicbrainz-picard textmate squirrel kap freeplane \
    calibre duplicati zotero clipy

# xld wireshark kdenlive kid3 charles freac handbrake