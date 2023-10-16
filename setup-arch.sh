#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo pacman -S --needed fd bat feh zsh duf nnn fzf gcc exa npm make xorg rofi tidy tmux \
    meld btop gimp emacs i3-wm copyq krita shfmt guake tilix v2ray aria2 ctags \
    picom xonsh cmake gnupg zoxide fcitx5 ffmpeg i3lock neovim nodejs docker dbeaver \
    httpie openssl konsole libxml2 lightdm foliate blender flatpak keepass git \
    ripgrep python3 scribus firefox glances calibre remmina i3status audacity \
    yamllint inkscape highlight flameshot filezilla syncthing fcitx5-im vlc dust \
    fcitx5-qt git-delta alacritty keepassxc fontforge fcitx5-gtk pandoc-cli \
    difftastic shellcheck base-devel thunderbird wireshark-qt wireshark-cli code \
    rust-analyzer graphicsmagick fcitx5-configtool lightdm-gtk-greeter scrcpy \
    the_silver_searcher fcitx5-chinese-addons lightdm-gtk-greeter-settings sigil \
    lazygit pdfarranger kdenlive switchhosts neovide xournalpp freeplane obsidian \
    autopep8 flake8 python-isort python-jedi python-pylint python-pynvim tldr thefuck \
    yapf python-locust stylelint stylelint-config-recommended stylelint-config-standard \
    prettier yarn python-pip