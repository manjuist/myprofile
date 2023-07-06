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

install_npm
install_pip