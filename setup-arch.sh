#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo pacman -S --needed fd feh zsh nnn fzf gcc npm make xorg picom emacs i3-wm \
    httpie openssl konsole libxml2 lightdm foliate blender flatpak keepass git \
    ripgrep python3 scribus firefox glances calibre remmina i3status tmux gimp \
    fcitx5-qt git-delta fontforge scrcpy sigil xonsh cmake gnupg zoxide docker \
    the_silver_searcher fcitx5-chinese-addons python-pynvim wireshark-cli btop \
    rust-analyzer graphicsmagick fcitx5-configtool lightdm-gtk-greeter lazygit \
    fcitx5-im python-pip alacritty xournalpp copyq shfmt guake tilix freeplane \
    pdfarranger base-devel lightdm-gtk-greeter-settings aria2 ctags fcitx5-gtk \
    v2ray thunderbird prettier wireshark-qt picard syncthing audacity inkscape \
    highlight flameshot filezilla stylelint stylelint-config-standard vlc rofi \
    yamllint python-jedi keepassxc fcitx5 ffmpeg i3lock neovim nodejs kitty \
    stylelint-config-recommended yarn

sudo yay -S wechat-uos robo3t-bin another-redis-desktop-manager-appimage olive \
    wps-office-cn qv2ray google-chrome cryptomator nrm-git motrix tagger freac \
    stretchly-bin goldendict-git drawio-desktop-bin localsend-bin freefilesync \
    git-cola simplescreenrecorder balena-etcher pencil-git bottles switchhosts \
    alacritty-colorscheme python-locust pandoc-bin shellcheck-bin obsidian-bin \
    visual-studio-code-bin dbeaver-ee