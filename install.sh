#!/usr/bin/env bash

# ------
# name: install.sh
# author: Deve
# date: 2022-03-27
# ------

set -e
set -o pipefail

APP_NAME="myprofile"
REPO_URI="https://github.com/mdvis/${APP_NAME}.git"

APP_PATH="${HOME}/.${APP_NAME}"
TOOL_PATH="${APP_PATH}/tools"
CONFIG_PATH="${APP_PATH}/config"
VIM_PATH="${APP_PATH}/vim"
BIN_PATH="$HOME/.local/bin/"
X86BREW_PATH="/usr/local/bin"
ARMBREW_PATH="/opt/homebrew/bin"
VIM_RUNTIMEEE_PATH="${HOME}/.vim"

Red='\033[0;31m'
Green='\033[0;32m'
Color_off='\033[0m'

# System="$(uname -s)"
Hardware="$(uname -m)"

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

    success "Clone success!"
}

set_brew_path() {
    [[ "${Hardware}" = "arm64" ]] &&
        BREW_PATH="${ARMBREW_PATH}" ||
        BREW_PATH="${X86BREW_PATH}"
}

set_package_tool_name() {
    package_list=(pacman dnf apt-get brew)

    for i in "${package_list[@]}"; do
        hash "${i}" &>/dev/null && PACKAGE_TOOL_NAME="${i}"
    done
}

install_apt() {
    sudo apt install neovim zsh fd-find silversearcher-ag universal-ctags make \
        cmake ffmpeg tidy yamllint shellcheck highlight gcc tmux libxml2 \
        python3 openssl w3m zoxide fzf nnn difftastic glances duf dust bat exa \
        ripgrep aria2 emacs git-delta alacritty graphicsmagick vlc calibre gpg

    sudo apt install tilda rofi konsole i3 i3status i3lock python3-dev

    success "Install APP success!"
}

install_brew() {
    brew install neovim zsh fd the_silver_searcher ctags make cmake ffmpeg \
        tidy-html5 yamllint shellcheck highlight gcc shfmt tmux libxml2 python3 \
        openssl w3m zoxide fzf nnn difftastic glances duf dust bat exa ripgrep \
        aria2 emacs git-delta alacritty graphicsmagick vlc calibre gpg

    brew install gitup swiftformat swiftlint mos thor keka rectangle drawio \
        google-chrome firefox iterm2 visual-studio-code joplin pencil itsycal \
        kekaexternalhelper v2rayu netnewswire bdash cocoarestclient go2shell \
        skim tencent-lemon rocket-chat wireshark gas-mask lulu shottr hiddenbar \
        clipy appcleaner diffmerge youdaodict wpsoffice-cn blender farbar2000 \
        pandoc sigil golangci-lint pnpm nvm xld thunderbird

    success "Install APP success!"
}

install_dnf() {
    sudo dnf install neovim zsh fd-find silversearcher-ag universal-ctags make \
        cmake ffmpeg tidy yamllint shellcheck highlight gcc tmux libxml2 \
        python3 openssl w3m zoxide fzf nnn difftastic glances duf dust bat exa \
        ripgrep aria2 emacs git-delta alacritty graphicsmagick vlc calibre gpg

    sudo dnf install tilda rofi konsole i3 i3status i3lock python3-dev

    success "Install APP success!"
}

install_pacman() {
    sudo pacman -S neovim zsh fd the_silver_searcher ctags make cmake ffmpeg \
        tidy yamllint shellcheck highlight gcc shfmt tmux libxml2 python3 \
        openssl w3m zoxide fzf nnn difftastic glances duf dust bat exa ripgrep \
        aria2 emacs git-delta alacritty graphicsmagick vlc calibre gpg

    sudo pacman -S tilda rofi konsole i3-wm i3status i3lock ttf-font-icons xorg \
        lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings fcitx5 \
        fcitx5-im fcitx5-chinese-addons fcitx5-configtool fcitx5-qt fcitx5-gtk

    success "Install APP success!"
}

install_npm() {
    npm i -g jsonlint prettier stylelint stylelint-config-standard neovim tern
}

install_pip() {
    pip3 install pynvim neovim jedi yapf isort flake8 pylint autopep8 vim-vint \
        thefuck tldr ranger
}

set_package_tool_name
set_brew_path

# [[ "${PACKAGE_TOOL_NAME}" = "apt-get" ]] && install_apt || $("install_${PACKAGE_TOOL_NAME}") 

rm -rf "$HOME/.i3" "$HOME/.pip" "$HOME/.vim"

# hash npm &>/dev/null && install_npm
# hash pip3 &>/dev/null && install_pip
hash git &>/dev/null && syncRepo "$APP_PATH" "$REPO_URI"

cd "$APP_PATH"

git submodule update --init --recursive

[[ -d "${VIM_PATH}" ]] && lnif "${VIM_PATH}" "$VIM_RUNTIMEEE_PATH"

cd "$VIM_RUNTIMEEE_PATH"

./install.sh

handler "$TOOL_PATH" "${BIN_PATH}"
handler "$CONFIG_PATH" "$HOME/."
