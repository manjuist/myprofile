#!/usr/bin/env bash

# ------
# name: install.sh
# author: Deve
# date: 2022-03-27
# ------

set -e
set -o pipefail

dir_list=""

readonly APP_NAME="myprofile"
readonly APP_PATH="${HOME}/.${APP_NAME}"
readonly APP_URL="https://github.com/mdvis/${APP_NAME}.git"

readonly BIN_PATH="$HOME/.local/bin/"
readonly TOOLS_PATH="${APP_PATH}/tools"
readonly CONFIG_PATH="${APP_PATH}/config"

[ -z "${REPO_PATH}" ] && REPO_PATH="${APP_PATH}"
[ -z "${REPO_URI}" ] && REPO_URI="${APP_URL}"

[ ! -e "${BIN_PATH}" ] && mkdir -p "${BIN_PATH}"

source ./check.sh

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
}

getFile() {
    local dir_name=$1
    # dir_list=$(/usr/bin/find "${dir_name}" -maxdepth 1)
    dir_list=$(ls "${dir_name}")
}

handler() {
    local file
    local path_name="$1"
    local target_dir="$2"
    getFile "${path_name}"
    for i in ${dir_list}; do
        file=$(basename "$i")
        lnif "${path_name}/${file}" "${target_dir}${file%.sh}"
    done

    ret="$?"
    success "Link success!"
    debug
}

syncRepo() {
    local repo_path="$1"
    local repo_uri="$2"

    if [ ! -e "$repo_path" ]; then
        mkdir -p "$repo_path"
        git clone --depth 1 "$repo_uri" "$repo_path"
        ret="$?"
    else
        cd "$repo_path" && git pull origin master
        ret="$?"
    fi
    success "Clone success!"
    debug
}

hasCommand() {
    for m in "$@"; do
        type "$m" >/dev/null 2>&1 || error "\"$m\" was not installed! Dependence \"$*\""
    done
}

rm -rf "$HOME/.i3" "$HOME/.pip"

hasCommand git

syncRepo "$REPO_PATH" "$REPO_URI"

handler "$TOOLS_PATH" "${BIN_PATH}"
handler "$CONFIG_PATH" "$HOME/."
