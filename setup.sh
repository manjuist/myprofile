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
    package_list=(pacman brew)

    for i in "${package_list[@]}"; do
        hash "${i}" &>/dev/null && PACKAGE_TOOL_NAME="${i}"
    done
}

install_brew() {
    command "$BREW_PATH/brew" install alacritty aria2 bat calibre cmake ctags \
        difftastic duf dust emacs exa fd ffmpeg fzf gcc git-delta glances gpg \
        graphicsmagick highlight libxml2 make neovim nnn openssl python3 \
        ripgrep shellcheck shfmt the_silver_searcher tidy-html5 tmux vlc \
        yamllint zoxide zsh meld mpv

    command "$BREW_PATH/brew" install bdash blender clipy \
        cocoarestclient drawio gas-mask go2shell \
        golangci-lint google-chrome hiddenbar iterm2 itsycal joplin keka \
        kekaexternalhelper lulu mos netnewswire nvm pandoc pencil \
        rectangle rocket-chat shottr sigil skim swiftformat swiftlint \
        tencent-lemon thor thunderbird v2rayu visual-studio-code wpsoffice-cn \
        xld youdaodict krita scribus

    # farbar2000 wireshark gitup

    success "Install APP(brew) success!"
}

install_pacman() {
    sudo pacman -S kitty aria2 bat calibre cmake ctags difftastic duf dust \
        emacs exa fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk \
        fcitx5-im fcitx5-qt fd ffmpeg fzf gcc git-delta glances gpg \
        graphicsmagick highlight i3-wm i3lock i3status konsole libxml2 lightdm \
        lightdm-gtk-greeter lightdm-gtk-greeter-settings make neovim nnn \
        openssl python3 ripgrep rofi shellcheck shfmt the_silver_searcher tidy \
        guake tmux ttf-font-icons vlc xorg yamllint zoxide zsh krita foliate \
        simplescreenrecorder scribus meld mpv scribus simplescreenrecorder

    success "Install APP(pacman) success!"
}

install_npm() {
    npm i -g nrm pnpm jsonlint neovim prettier stylelint stylelint-config-standard tern

    success "Install APP(npm) success!"
}

install_pip() {
    pip3 install autopep8 flake8 isort jedi neovim pylint pynvim ranger \
        thefuck tldr vim-vint yapf

    success "Install APP(pip) success!"
}

set_package_tool_name
set_brew_path

hash npm &>/dev/null && install_npm
hash pip3 &>/dev/null && install_pip

[[ "${PACKAGE_TOOL_NAME}" = "brew" ]] && install_brew
[[ "${PACKAGE_TOOL_NAME}" = "pacman" ]] && install_pacman

