#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

# sudo yum install lightdm-gtk-greeter lightdm-gtk-greeter-settings openssl zoxide \
#     emacs fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk ffmpeg-free bat \
#     highlight i3 i3lock i3status konsole libxml2 lightdm make neovim fd-find \
#     wireshark chromium flameshot audacity copyq krita \
#     yamllint zsh foliate blender duf syncthing nnn docker \
#     ripgrep rofi shfmt the_silver_searcher tidy guake tmux python3 scribus fzf \
#     fcitx5 fcitx5-qt meld gcc git-delta GraphicsMagick tilix inkscape \
#     calibre cmake difftastic shellcheck gnupg remmina keepassxc btop gimp \
#     firefox glances alacritty aria2 ctags rust-analyzer httpie \
#     filezilla opentoonz thunderbird exa nodejs npm \
#     xonsh snapd gnupg2 

flatpak install flathub com.usebottles.bottles com.github.git_cola.git-cola \
    io.dbeaver.DBeaverCommunity com.jgraph.drawio.desktop org.localsend.localsend_app \
    com.google.Chrome com.github.Qv2ray net.hovancik.Stretchly com.microsoft.Edge \
    org.pencil2d.Pencil2D md.obsidian.Obsidian org.videolan.VLC com.visualstudio.code \
     org.shotcut.Shotcut com.sigil_ebook.Sigil org.goldendict.GoldenDict com.wps.Office


# robo3t-bin wechat-uos another-redis-desktop-manager-appimage v2raya flying-carpet-bin
# desktop-naotu-bin freedownloadmanager neovide pandoc-cli v2ray dust base-devel 
# flatpak simplescreenrecorder 