#!/usr/bin/env bash

# ------
# name: setup.sh
# author: Deve
# date: 2022-06-29
# ------

Red='\033[0;31m'
Green='\033[0;32m'
Color_off='\033[0m'
# System="$(uname -s)"
Hardware="$(uname -m)"
X86BREW_PATH="/usr/local/bin"
ARMBREW_PATH="/opt/homebrew/bin"

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

install_brew() {
    eval "$BREW_PATH/brew install neovim zsh fd the_silver_searcher ctags make cmake ffmpeg \
        tidy-html5 yamllint shellcheck highlight gcc shfmt tmux libxml2 python3 \
        openssl w3m zoxide fzf nnn difftastic glances duf dust bat exa ripgrep \
        aria2 emacs git-delta alacritty graphicsmagick vlc calibre gpg"

    eval "$BREW_PATH/brew install swiftformat swiftlint mos thor keka rectangle drawio \
        google-chrome firefox iterm2 visual-studio-code joplin pencil itsycal \
        kekaexternalhelper v2rayu netnewswire bdash cocoarestclient go2shell \
        skim tencent-lemon rocket-chat gas-mask lulu shottr hiddenbar \
        clipy appcleaner diffmerge youdaodict wpsoffice-cn blender \
        pandoc sigil golangci-lint pnpm nvm xld thunderbird"

    # farbar2000 wireshark gitup

    success "Install APP(brew) success!"
}

install_apt() {
    sudo apt install neovim zsh fd-find silversearcher-ag universal-ctags make \
        cmake ffmpeg tidy yamllint shellcheck highlight gcc tmux libxml2 \
        python3 openssl w3m zoxide fzf nnn difftastic glances duf dust bat exa \
        ripgrep aria2 emacs git-delta alacritty graphicsmagick vlc calibre gpg \
        tilda rofi konsole i3 i3status i3lock python3-dev

    success "Install APP(apt) success!"
}

install_dnf() {
    sudo dnf install neovim zsh fd-find silversearcher-ag universal-ctags make \
        cmake ffmpeg tidy yamllint shellcheck highlight gcc tmux libxml2 \
        python3 openssl w3m zoxide fzf nnn difftastic glances duf dust bat exa \
        ripgrep aria2 emacs git-delta alacritty graphicsmagick vlc calibre gpg \
        tilda rofi konsole i3 i3status i3lock python3-dev

    success "Install APP(dnf) success!"
}

install_pacman() {
    sudo pacman -S neovim zsh fd the_silver_searcher ctags make cmake ffmpeg \
        tidy yamllint shellcheck highlight gcc shfmt tmux libxml2 python3 \
        openssl w3m zoxide fzf nnn difftastic glances duf dust bat exa ripgrep \
        aria2 emacs git-delta alacritty graphicsmagick vlc calibre gpg tilda \
        lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings fcitx5 \
        fcitx5-im fcitx5-chinese-addons fcitx5-configtool fcitx5-qt fcitx5-gtk \
        rofi konsole i3-wm i3status i3lock ttf-font-icons xorg

    success "Install APP(pacman) success!"
}

install_npm() {
    npm i -g jsonlint prettier stylelint stylelint-config-standard neovim tern

    success "Install APP(npm) success!"
}

install_pip() {
    pip3 install pynvim neovim jedi yapf isort flake8 pylint autopep8 vim-vint \
        thefuck tldr ranger

    success "Install APP(pip) success!"
}

set_package_tool_name
set_brew_path

hash npm &>/dev/null && install_npm
hash pip3 &>/dev/null && install_pip

[[ "${PACKAGE_TOOL_NAME}" = "apt-get" ]] && install_apt
[[ "${PACKAGE_TOOL_NAME}" = "brew" ]] && install_brew
[[ "${PACKAGE_TOOL_NAME}" = "dnf" ]] && install_dnf
[[ "${PACKAGE_TOOL_NAME}" = "pacman" ]] && install_pacman
