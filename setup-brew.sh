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
    obsidian findergo flameshot rectangle alacritty stretchly alt-tab nutstore \
    syncthing motrix itsycal keepassxc macdown dbeaver-community robo-3t clipy \
    visual-studio-code kekaexternalhelper another-redis-desktop-manager drawio \
    syntax-highlight microsoft-onenote goldendict httpie cryptomator kap hyper \
    calibre keepingyouawake mongodb-compass switchhosts google-chrome textmate \
    pika fontforge inkscape netnewswire musicbrainz-picard handbrake wireshark \
    xld gimp audacity charles macpass flux