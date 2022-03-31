#!/usr/bin/env bash

# ------
# name: setup.sh
# author: Deve
# date: 2022-02-25
# ------

set -e
set -o pipefail

is_debug="0"
local_path="${HOME}/.local/bin"
brew_path_x86="/usr/local/bin"
brew_path_arm="/opt/homebrew/bin"
brew_path="${brew_path_x86}"

msg() {
    printf '%b\n' "$1" >&2
}

success() {
    if [ "$ret" -eq "0" ]; then
        msg "\033[32m[✔]\033[0m ${1}${2}"
    fi
}

error() {
    msg "\033[31m[✘]\033[0m ${1}${2}"
    exit 1
}

debug() {
    if [ "${is_debug}" -eq "1" ] && [ "${ret}" -gt "1" ]; then
        msg "${FUNCNAME[1]}/${BASH_LINENO[1]}"
    fi
}

OSX() {
    sys_args=$(uname -s | tr "[:upper:]" "[:lower:]")
    [[ ${sys_args} =~ "darwin" ]] && echo "OSX"
}

LINUX() {
    sys_args=$(uname -s | tr "[:upper:]" "[:lower:]")
    [[ ${sys_args} =~ "linux" ]] && echo "LINUX"
}

ISARM() {
    sys_args=$(uname -m | tr "[:upper:]" "[:lower:]")
    if [[ ${sys_args} =~ "arm" ]]; then
        return 0
    else
        return 1
    fi
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

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
}

if ISARM; then
    brew_path="${brew_path_arm}"
fi

lnif "${brew_path}/tmux" "${local_path}/tmux"
lnif "${brew_path}/zsh" "${local_path}/zsh"

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
