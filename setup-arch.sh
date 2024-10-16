#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo pacman -S --needed yazi ffmpegthumbnailer jq poppler imagemagick fd p7zip \
    fzf ripgrep zoxide

sudo pacman -S --needed feh zsh nnn gcc npm make xorg picom i3-wm kitty neovim \
    httpie openssl libxml2 lightdm blender keepass git vifm yarn pnpm yamllint \
    fcitx5-qt git-delta scrcpy xonsh cmake gnupg docker audacity glances guake \
    the_silver_searcher fcitx5-chinese-addons python-pynvim wireshark-cli btop \
    rust-analyzer graphicsmagick fcitx5-configtool lightdm-gtk-greeter lazygit \
    fcitx5-im copyq shfmt fcitx5 freeplane nodejs stylelint-config-recommended \
    pdfarranger base-devel lightdm-gtk-greeter-settings aria2 ctags fcitx5-gtk \
    thunderbird prettier wireshark-qt picard inkscape ffmpeg i3lock python-pip \
    highlight flameshot filezilla stylelint stylelint-config-standard vlc rofi \
    python3 i3status tmux gimp keepassxc calibre python-jedi tilix remmina

yay -S wechat-uos robo3t-bin another-redis-desktop-manager-appimage dbeaver-ee \
    wps-office-cn google-chrome cryptomator nrm-git motrix tagger freac dprint \
    stretchly-bin goldendict-git localsend-bin bottles drawio-desktop-appimage \
    pandoc-bin shellcheck-bin clash-verge-rev-bin nekoray simplescreenrecorder \
    switchhosts visual-studio-code-bin hadolint-bin hiddify-next balena-etcher \
    freefilesync git-cola siyuan-note-bin trilium-bin

flatpak install flathub org.shotcut.Shotcut
flatpak install flathub md.obsidian.Obsidian