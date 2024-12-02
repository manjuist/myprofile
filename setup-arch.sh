#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo pacman -S --needed aria2 audacity blender btop calibre cmake copyq ctags \
    docker fcitx5 fcitx5-chinese-addons fcitx5-configtool fd feh ffmpeg ffmpegthumbnailer \
    filezilla flameshot fzf gcc gimp git gnupg guake highlight httpie i3-wm \
    i3lock i3status inkscape jq keepass keepassxc kitty libxml2 make mousepad \
    neovim nnn nodejs npm openssl p7zip pandoc-bin pdfarranger picard picom poppler \
    remmina ripgrep rofi shellcheck shfmt thunderbird tilix tmux vifm vlc wireshark-qt \
    yamllint yarn zoxide zsh graphicsmagick imagemagick fcitx5-qt networkmanager \
    the_silver_searcher nss rust-analyzer shotcut mkcert base-devel lazygit scrcpy \
    nama rxvt-unicode azote dunst htop thunar hyprland hdparm fio

yay -S another-redis-desktop-manager-appimage bottles clash-verge-rev-bin \
    cryptomator dbeaver-ee drawio freac freefilesync freeplane-git git-cola \
    goldendict-git google-chrome hadolint-bin localsend motrix nekoray robo3t-bin \
    stretchly simplescreenrecorder switchhosts trilium visual-studio-code-bin \
    wechat-bin wps-office-cn

flatpak install flathub md.obsidian.Obsidian