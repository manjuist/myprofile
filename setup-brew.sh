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

brew install yazi sevenzip jq poppler imagemagick ffmpegthumbnailer fd ripgrep \
    fzf zoxide font-symbols-only-nerd-font

brew install gcc gpg nnn nvm zsh btop make grex shellcheck ctags neovim ffmpeg \
    openssl yamllint highlight git-delta lazygit stylelint fastfetch node tmux \
    the_silver_searcher rust-analyzer pandoc libxml2 shfmt scrcpy dprint cmake \
    prettier hadolint vifm tree

brew install --cask httpie blender lulu thor keka skim espanso gitx gimp maccy \
    obsidian findergo flameshot rectangle stretchly alt-tab flux motrix shottr \
    keepassxc macdown dbeaver-community robo-3t charles kitty postman textmate \
    visual-studio-code kekaexternalhelper another-redis-desktop-manager drawio \
    syntax-highlight microsoft-onenote goldendict cryptomator audacity macpass \
    calibre keepingyouawake mongodb-compass switchhosts google-chrome orbstack \
    pika inkscape netnewswire musicbrainz-picard handbrake wireshark freeplane \
    xld kap sfm shotcut vlc balenaetcher jordanbaird-ice trilium-notes