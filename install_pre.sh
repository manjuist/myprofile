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
hasCommand pip || python ./setup/get-pip.py
hasCommand brew || ./setup/homebrew_cn_install.sh

runCommand brew the_silver_searcher make cmake ctags \
    uncrustify tidy-html5 yamllint shfmt swiftformat \
    swiftlint shellcheck fd highlight gcc
