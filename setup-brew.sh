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

brew install fd fzf gcc gpg nnn nvm zsh btop pinentry-mac make grex shellcheck \
    openssl yamllint highlight git-delta lazygit stylelint fastfetch node tmux \
    the_silver_searcher rust-analyzer pandoc ripgrep libxml2 shfmt scrcpy tree \
    cmake ctags zoxide neovim ffmpeg prettier

brew install --cask docker blender lulu thor keka skim espanso olive gitx iina \
    obsidian findergo flameshot rectangle stretchly alt-tab nutstore flux gimp \
    syncthing motrix keepassxc macdown dbeaver-community robo-3t clipy charles \
    visual-studio-code kekaexternalhelper another-redis-desktop-manager drawio \
    syntax-highlight microsoft-onenote goldendict cryptomator audacity macpass \
    calibre keepingyouawake mongodb-compass switchhosts google-chrome orbstack \
    pika fontforge inkscape netnewswire musicbrainz-picard handbrake wireshark \
    xld kap httpie alacritty freeplane kitty sfm raycast zed shotcut