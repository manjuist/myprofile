#!/usr/bin/env bash

set -e
set -o pipefail

hasCommand() {
    for m in "$@"; do
        type "$m" >/dev/null 2>&1 || error "\"$m\" was not installed! Dependence \"$*\""
    done
}

runCommand() {
    cmd=$1
    args=$*
    other_args=${args#* }

    eval "$cmd" install "$other_args"
}

hasCommand node || ./setup/nvm-install.sh
hasCommand pip || hasConnand python3 && python ./setup/get-pip.py
hasCommand apt && runCommand apt fd-find silversearcher-ag universal-ctags \
    make cmake uncrustify tidy yamllint shellcheck highlight gcc rofi i3

