#!/usr/bin/env bash

# ------
# name: install.sh
# author: Deve
# date: 2022-03-27
# ------

APP_NAME="myprofile"
REPO_URI="https://github.com/mdvis/${APP_NAME}.git"

APP_PATH="${HOME}/.${APP_NAME}"
TOOL_PATH="${APP_PATH}/tools"
CONFIG_PATH="${APP_PATH}/config"
VIM_PATH="${APP_PATH}/vim"
BIN_PATH="$HOME/.local/bin/"
VIM_RUNTIMEEE_PATH="${HOME}/.vim"

Red='\033[0;31m'
Green='\033[0;32m'
Color_off='\033[0m'

[ ! -e "${BIN_PATH}" ] && mkdir -p "${BIN_PATH}"

msg() {
    printf '%b\n' "$1" >&2
}

success() {
    msg "${Green}[✔]${Color_off} ${1}${2}"
}

error() {
    msg "${Red}[✘]${Color_off} ${1}${2}"
    exit 1
}

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
        success "Link $file!"
    done

    success "Link success!"
}

syncRepo() {
    local repo_path="$1"
    local repo_uri="$2"

    if [ ! -e "$repo_path" ]; then
        mkdir -p "$repo_path"
        git clone --depth 1 "$repo_uri" "$repo_path"
    else
        cd "$repo_path" && git pull origin master
    fi

    name=$(basename "${repo_uri%.git}")

    success "Clone $name success!"
}

rm -rf "$HOME/.i3" "$HOME/.pip" "$HOME/.vim"

hash git &>/dev/null && syncRepo "$APP_PATH" "$REPO_URI"

cd "$APP_PATH" || exit

git submodule update --init --recursive

[[ -d "${VIM_PATH}" ]] && lnif "${VIM_PATH}" "$VIM_RUNTIMEEE_PATH"

cd "$VIM_RUNTIMEEE_PATH" || ./install.sh || exit

handler "$TOOL_PATH" "${BIN_PATH}"
handler "$CONFIG_PATH" "$HOME/."
