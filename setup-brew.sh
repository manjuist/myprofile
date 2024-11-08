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

brew install gcc gpg nnn nvm zsh btop make grex shellcheck ctags neovim ffmpeg \
    openssl yamllint highlight lazygit fastfetch node tmux hadolint vifm cmake \
    the_silver_searcher rust-analyzer pandoc libxml2 shfmt scrcpy tree ripgrep \
    font-symbols-only-nerd-font sevenzip poppler imagemagick ffmpegthumbnailer \
    fzf zoxide jq fd

brew install --cask httpie blender lulu thor keka skim espanso gitx gimp maccy \
    obsidian findergo flameshot rectangle stretchly alt-tab flux motrix shottr \
    keepassxc macdown dbeaver-community robo-3t charles kitty postman textmate \
    visual-studio-code kekaexternalhelper another-redis-desktop-manager drawio \
    syntax-highlight microsoft-onenote goldendict cryptomator audacity macpass \
    balenaetcher keepingyouawake mongodb-compass switchhosts google-chrome kap \
    pika inkscape netnewswire musicbrainz-picard handbrake wireshark freeplane \
    sfm shotcut vlc jordanbaird-ice trilium-notes calibre xld docker