#!/usr/bin/env bash

set -e
set -o pipefail

is_debug="0"
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

OSX() {
    sys_args=$(uname -s | tr "[:upper:]" "[:lower:]")
    [[ ${sys_args} =~ "darwin" ]] && echo "OSX"
}

LINUX() {
    sys_args=$(uname -s | tr "[:upper:]" "[:lower:]")
    [[ ${sys_args} =~ "linux" ]] && echo "LINUX"
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
