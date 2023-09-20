#!/usr/bin/env bash

# ------
# name: setup.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

Green='\033[0;32m'
Color_off='\033[0m'
# System="$(uname -s)"

msg() {
    printf '%b\n' "$1" >&2
}

success() {
    msg "${Green}[✔]${Color_off} ${1}${2}"
}

install_npm() {
    npm i -g nrm pnpm jsonlint neovim prettier yarn stylelint-config-standard \
        stylelint tern

    success "Install APP(npm) success!"
}

install_pip() {
    pip3 install autopep8 flake8 isort jedi neovim pylint pynvim tldr thefuck \
        vim-vint yapf alacritty-colorscheme locust

    success "Install APP(pip) success!"
}

install_cargo() {
    cargo install du-dust

    success "Install APP(cargo) success!"
}

install_snap() {
    flatpak install flathub \
        com.wps.Office \
        org.videolan.VLC \
        com.github.Qv2ray \
        org.freeplane.App \
        com.google.Chrome \
        com.microsoft.Edge \
        net.agalwood.Motrix \
        md.obsidian.Obsidian \
        com.sigil_ebook.Sigil \
        com.visualstudio.code \
        org.nickvision.tagger \
        com.usebottles.bottles \
        net.hovancik.Stretchly \
        org.goldendict.GoldenDict \
        com.jgraph.drawio.desktop \
        org.olivevideoeditor.Olive \
        org.localsend.localsend_app \
        io.dbeaver.DBeaverCommunity \
        org.cryptomator.Cryptomator \
        com.github.git_cola.git-cola

    success "Install APP(cargo) success!"
}

install_npm
install_pip
install_cargo
install_snap