#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo pacman -S --needed fd feh zsh nnn fzf gcc npm make xorg picom emacs i3-wm \
    xonsh cmake gnupg zoxide fcitx5 ffmpeg i3lock neovim nodejs docker dbeaver \
    httpie openssl konsole libxml2 lightdm foliate blender flatpak keepass git \
    ripgrep python3 scribus firefox glances calibre remmina i3status tidy tmux \
    yamllint inkscape highlight flameshot filezilla syncthing audacity yay vlc \
    yapf stylelint stylelint-config-recommended stylelint-config-standard \
    fcitx5-qt git-delta fontforge fcitx5-gtk pandoc-cli scrcpy sigil yarn btop \
    autopep8 python-isort python-jedi python-pylint rofi keepassxc flake8 gimp \
    the_silver_searcher fcitx5-chinese-addons python-pynvim wireshark-cli code \
    rust-analyzer graphicsmagick fcitx5-configtool lightdm-gtk-greeter lazygit \
    fcitx5-im python-pip alacritty xournalpp copyq shfmt guake tilix freeplane \
    pdfarranger base-devel lightdm-gtk-greeter-settings aria2 ctags shellcheck \
    v2ray thunderbird prettier obsidian wireshark-qt picard