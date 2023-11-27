#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo pacman -S --needed fd bat feh zsh duf nnn fzf gcc exa npm make xorg picom \
    meld btop gimp emacs i3-wm copyq krita shfmt guake tilix v2ray aria2 ctags \
    xonsh cmake gnupg zoxide fcitx5 ffmpeg i3lock neovim nodejs docker dbeaver \
    httpie openssl konsole libxml2 lightdm foliate blender flatpak keepass git \
    ripgrep python3 scribus firefox glances calibre remmina i3status tidy tmux \
    yamllint inkscape highlight flameshot filezilla syncthing audacity yay vlc \
    yapf stylelint stylelint-config-recommended stylelint-config-standard kid3 \
    lazygit pdfarranger kdenlive neovide xournalpp freeplane obsidian prettier \
    rust-analyzer graphicsmagick fcitx5-configtool lightdm-gtk-greeter thefuck \
    fcitx5-qt git-delta fontforge fcitx5-gtk pandoc-cli dust scrcpy sigil yarn \
    autopep8 python-isort python-jedi python-pylint rofi keepassxc flake8 tldr \
    the_silver_searcher fcitx5-chinese-addons python-pynvim wireshark-cli code \
    lightdm-gtk-greeter-settings difftastic shellcheck base-devel wireshark-qt \
    fcitx5-im python-pip alacritty thunderbird