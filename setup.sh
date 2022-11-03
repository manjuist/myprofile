#!/usr/bin/env bash

# ------
# name: setup.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

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
    command "$BREW_PATH/brew" install alacritty aria2 bat cmake ctags zsh tmux \
        difftastic duf dust fd ffmpeg fzf gcc git-delta glances gpg nnn pandoc \
        graphicsmagick highlight libxml2 make neovim openssl python3 yamllint \
        ripgrep shellcheck shfmt the_silver_searcher tidy-html5 rust-analyzer \
        swiftformat swiftlint nvm btop neofetch exa zoxide

    command "$BREW_PATH/brew" install --cask calibre foobar2000 wireshark skim \
        youdaodict krita scribus rectangle sigil dbeaver-community kitty stats \
        iterm2 meld tencent-lemon thor visual-studio-code wpsoffice-cn charles \
        wechat handbrake docker kdenlive robo-3t gimp audacity v2rayu firefox \
        hiddenbar itsycal keka kekaexternalhelper lulu netnewswire pencil mpv \
        free-download-manager alt-tab nutstore syntax-highlight xld cyberduck \
        drawio gas-mask go2shell clipy google-chrome obsidian inkscape httpie \
        brewlet blender macdown espanso monitorcontrol rocket-chat opentoonz \
        losslesscut shotcut emacs flameshot

    success "Install APP(brew) success!"
}

install_pacman() {
    sudo pacman -S kitty aria2 bat calibre cmake ctags difftastic duf dust exa \
        emacs fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk ffmpeg \
        highlight i3-wm i3lock i3status konsole libxml2 lightdm make neovim fd \
        pencil visual-studio-code-bin wps-office-cn dbeaver-ee flatpak firefox \
        ripgrep rofi shellcheck shfmt the_silver_searcher tidy guake tmux mpv \
        ttf-font-icons xorg yamllint zoxide zsh krita foliate scribus blender \
        fcitx5-im fcitx5-qt fzf gcc git-delta glances gpg graphicsmagick meld \
        lightdm-gtk-greeter lightdm-gtk-greeter-settings nnn openssl python3 \
        simplescreenrecorder wireshark-cli wireshark-qt chromium sigil-git \
        flameshot

    success "Install APP(pacman) success!"
}

# flatpak install flathub com.usebottles.bottles

install_npm() {
    npm i -g nrm pnpm jsonlint neovim prettier yarn stylelint-config-standard \
        stylelint tern

    success "Install APP(npm) success!"
}

install_pip() {
    pip3 install autopep8 flake8 isort jedi neovim pylint pynvim tldr thefuck \
        vim-vint yapf alacritty-colorscheme

    success "Install APP(pip) success!"
}

install_flatpak() {
    flatpak install flathub com.jgraph.drawio.desktop com.usebottles.bottles
}

set_package_tool_name
set_brew_path

[[ "${PACKAGE_TOOL_NAME}" = "brew" ]] && install_brew
[[ "${PACKAGE_TOOL_NAME}" = "pacman" ]] && install_pacman

hash npm &>/dev/null && install_npm
hash pip3 &>/dev/null && install_pip
hash flatpak &>/dev/null && install_flatpak
