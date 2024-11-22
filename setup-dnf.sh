#!/usr/bin/env bash

# ------
# name: setup-dnf.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

ARCH="$(uname -m)"
AMD64="x86_64"

# dependencies
# lazygit
sudo dnf copr enable atim/lazygit -y
# clash
sudo dnf install -y libayatana-appindicator-gtk3 webkit2gtk4.0

sudo dnf install -y aria2 audacity blender btop calibre cmake copyq ctags docker \
    fd-find feh ffmpeg-free ffmpegthumbs filezilla flameshot fzf gcc gimp git git-cola \
    gnupg goldendict guake highlight httpie i3 i3lock i3status inkscape jq keepass \
    keepassxc kitty lazygit libxml2 make mousepad neovim nnn nodejs npm openssl p7zip \
    pandoc pdfarranger picard picom poppler remmina ripgrep rofi shellcheck shfmt \
    shotcut thunderbird tilix tmux vifm vlc wireshark yamllint yarnpkg zoxide zsh \
    GraphicsMagick ImageMagick the_silver_searcher nss-tools hadolint rust-analyzer \
    NetworkManager rxvt-unicode azote dunst htop thunar snapd

# fcitx5
sudo dnf install -y imsettings fcitx5-table-extra fcitx5 fcitx5-chinese-addons \
    fcitx5-configtool fcitx5-qt

# flathub
flatpak install flathub md.obsidian.Obsidian com.visualstudio.code com.jgraph.drawio.desktop \
    org.localsend.localsend_app net.hovancik.Stretchly org.freac.freac net.agalwood.Motrix \
    org.cryptomator.Cryptomator io.dbeaver.DBeaverCommunity org.freefilesync.FreeFileSync \
    org.freeplane.App org.freecad.FreeCAD

if [ "$ARCH" = "$AMD64" ]; then
    flatpak install flathub com.usebottles.bottles com.github.zadam.trilium com.google.Chrome \
        com.wps.Office com.tencent.WeChat
fi

# snapcraft
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install another-redis-desktop-manager robo3t-snap scrcpy simplescreenrecorder