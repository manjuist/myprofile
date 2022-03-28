#!/usr/bin/env bash

# ------
# name: setup.sh
# author: Deve
# date: 2022-02-25
# ------

set -e
set -o pipefail

source ./check.sh

error() {
    msg "\033[31m[✘]\033[0m ${1}${2}"
    exit 1
}

hasCmd() {
    type "$1" >/dev/null 2>&1 || error "\"no $1\""
}

install_mac() {
    brew install neovim zsh fd the_silver_searcher ctags make cmake \
        tidy-html5 yamllint shellcheck highlight gcc shfmt tmux libxml2 \
        python3 swiftformat swiftlint openssl w3m

    ret="$?"
    success "Install APP success!"
    debug
}

install_apt() {
    sudo apt install neovim zsh fd-find silversearcher-ag universal-ctags \
        make cmake tidy yamllint shellcheck highlight gcc tmux libxml2 \
        python3 tilda rofi konsole i3 python3-dev openssl w3m # shfmt

    ret="$?"
    success "Install APP success!"
    debug
}

install_pacman() {
    sudo pacman -S neovim zsh fd the_silver_searcher ctags make cmake \
        tidy yamllint shellcheck highlight gcc shfmt tmux libxml2 python3 \
        tilda rofi konsole i3-wm openssl w3m

    ret="$?"
    success "Install APP success!"
    debug
}

hasCmd pip3
pip3 install thefuck tldr ranger

if [[ $(OSX) == "OSX" ]]; then
    install_mac
fi

if [[ $(LINUX) == "LINUX" ]]; then
    fnList=(install_pacman install_apt)
    select fn in "${fnList[@]}"; do
        ${fn}
        break
    done
fi
