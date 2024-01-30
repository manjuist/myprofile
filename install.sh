#!/usr/bin/env bash

# ------
# name: install.sh
# author: Deve
# date: 2022-03-27
# ------

APP_NAME="myprofile"
APP_REPO_URI="https://github.com/mdvis/${APP_NAME}.git"
APP_PATH="${HOME}/.${APP_NAME}"
APP_TOOL_PATH="${APP_PATH}/tools"
APP_CONFIGFILE_PATH="${APP_PATH}/config_file"
APP_CONFIGDIR_PATH="${APP_PATH}/config_dir"
APP_FONT_PATH="${APP_PATH}/fonts"
APP_SSH_PATH="${APP_PATH}/ssh"

CONFIG_PATH="$HOME/.config/"
LOCAL_BIN_PATH="$HOME/.local/bin/"
LOCAL_FONTS_PATH="$HOME/.local/share/fonts/"
SSH_PATH="$HOME/.ssh/"
MAC_FONTS_PATH="$HOME/Library/Fonts/"

System="$(uname -s)"

Red='\033[0;31m'
Green='\033[0;32m'
Color_off='\033[0m'

[ ! -e "${LOCAL_BIN_PATH}" ] && mkdir -p "${LOCAL_BIN_PATH}"
[ ! -e "${CONFIG_PATH}" ] && mkdir -p "${CONFIG_PATH}"
[ ! -e "${SSH_PATH}" ] && mkdir -p "${SSH_PATH}"

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

install_fonts() {
    if [ "${System}" == "Darwin" ]; then
        [[ ! -d "$MAC_FONTS_PATH" ]] && mkdir -p "$MAC_FONTS_PATH"
        
        cp "$APP_FONT_PATH/*" "$MAC_FONTS_PATH"
    else
        [[ ! -d "$LOCAL_FONTS_PATH" ]] && mkdir -p "$LOCAL_FONTS_PATH"
        cp "$APP_FONT_PATH/*" "$LOCAL_FONTS_PATH"
        fc-cache -fv >/dev/null
        mkfontdir "$LOCAL_FONTS_PATH" >/dev/null
        mkfontscale "$LOCAL_FONTS_PATH" >/dev/null
    fi
    success "font cache done!"
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
        mv "${i}" "${i}"."${time}"

        success "Buckup $i success!"
    done
}

install_npm() {
    npm i -g neovim stylelint-config-standard tern

    success "Install APP(npm) success!"
}

install_pip() {
    pip3 install pynvim neovim jedi vim-vint

    success "Install APP(pip) success!"
}

hash git &>/dev/null && syncRepo "$APP_PATH" "$APP_REPO_URI"

cd "$APP_PATH" || exit

install_fonts
install_npm
install_pip

handler "$APP_SSH_PATH" "$SSH_PATH" "f"
handler "$APP_TOOL_PATH" "${LOCAL_BIN_PATH}" "f"
handler "$APP_CONFIGFILE_PATH" "$HOME/." "f"
handler "$APP_CONFIGDIR_PATH" "$CONFIG_PATH" "d"