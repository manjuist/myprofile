#!/usr/bin/env bash

# ------
# name: setup-brew.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

brew tap localsend/localsend

brew install fd exa duf fzf gcc gpg nnn nvm zsh bat dust btop make tmux shfmt \
    cmake ctags xonsh zoxide neovim ffmpeg pandoc cowsay ripgrep libxml2 \
    openssl fortune neofetch yamllint swiftlint highlight git-delta shellcheck \
    tidy-html5 difftastic swiftformat rust-analyzer the_silver_searcher

brew install --cask vlc kap xld lulu gimp thor keka skim meld clipy v2rayu \
    drawio pencil docker wechat httpie itsycal blender calibre shotcut espanso \
    charles robo-3t alt-tab nutstore inkscape obsidian audacity caffeine \
    findergo gas-mask flameshot rectangle handbrake wireshark hiddenbar \
    syncthing keepassxc localsend freeplane fontforge stretchly goldendict \
    netnewswire thunderbird tencent-lemon flying-carpet google-chrome \
    microsoft-edge syntax-highlight microsoft-onenote dbeaver-community \
    visual-studio-code kekaexternalhelper free-download-manager \
    another-redis-desktop-manager