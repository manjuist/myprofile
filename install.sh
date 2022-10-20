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
APP_CONFIG_PATH="${APP_PATH}/config"
BIN_PATH="$HOME/.local/bin/"
CONFIG_PATH="$HOME/.config/"

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
    dir_list=$(/usr/bin/find "${dir_name}" -maxdepth 1 -type f)
    #dir_list=$(ls "${dir_name}")
}

getDir() {
    local dir_name=$1
    dir_list=$(/usr/bin/find "${dir_name}" -maxdepth 1 -type d)
    #dir_list=$(ls "${dir_name}")
}

isDirectory() {
    typeRes=$(file "$1")
    if [[ "${typeRes}" =~ "directory" ]]; then
        return 0
    fi
    return 1
}

handler() {
    local file
    local path_name="$1"
    local target_dir="$2"
    local typ="$3"

    [[ "${typ}" == "f" ]] && getFile "${path_name}"
    [[ "${typ}" == "d" ]] && getDir "${path_name}"

    for i in ${dir_list}; do
        file=$(basename "$i")
        backup "${target_dir}${file%.sh}"
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
        cd "$repo_path" && git pull origin main
    fi

    name=$(basename "${repo_uri%.git}")

    success "Clone $name success!"
}

backup() {
    list="$*"
    time=$(date +%s)
    for i in $list; do
        [[ -d "${i}" ]] && mv "${i}" "${i}"."${time}"

        success "Buckup $i success!"
    done
}

hash git &>/dev/null && syncRepo "$APP_PATH" "$REPO_URI"

cd "$APP_PATH" || exit

handler "$TOOL_PATH" "${BIN_PATH}"
handler "$APP_CONFIG_PATH" "$HOME/." "f"
handler "$APP_CONFIG_PATH" "$CONFIG_PATH" "d"
