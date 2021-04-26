#!/usr/bin/env bash

set -e
set -o pipefail

hasCommand() {
    type "$1" >/dev/null 2>&1
}

runCommand() {
    cmd=$1
    args=$*
    other_args=${args#* }

    eval "$cmd" install "$other_args"
}

brewSource() {
    cmd=$1
    args=$*
    other_args=${args#* }

    eval brew install --build-from-source "$other_args"
}

hasCommand node || ./setup/nvm-install.sh
hasCommand pip || python ./setup/get-pip.py
hasCommand brew || ./setup/homebrew_cn_install.sh
hasCommand pip && pip install --user pynvim neovim

# brewSource shellcheck

runCommand pip yapf \
    isort flake8 pylint autopep8 vim-vint

runCommand brew the_silver_searcher \
    ctags ccls uncrustify tidy-html5 yamllint \
    shfmt swiftformat swiftlint shellcheck
