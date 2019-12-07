#!/usr/bin/env bash

set -e
set -o pipefail

readonly APP_NAME="myprofile"

[ -z "$REPO_PATH" ] && REPO_PATH="$HOME/.$APP_NAME"
[ -z "$REPO_URI" ] && REPO_URI="https://github.com/manjuist/$APP_NAME.git"

is_debug="0"

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
    if [ "$is_debug" -eq "1" ] && [ "$ret" -gt "1" ]; then
        msg "$FUNCNAME/$BASH_LINENO"
    fi
}

backup(){
    now=`date +%Y%m%d_%s`
    mv "$1" "$1.$now"
    debug
}

exiseBackup(){
    for i in $@; do
        if [ -e "$i" ]; then
            backup $i
        fi
    done
    ret="$?"
    debug
 }

syncRepo() {
    local repo_path="$1"
    local repo_uri="$2"

    if [ ! -e "$repo_path" ]; then
        mkdir -p "$repo_path"
        git clone "$repo_uri" "$repo_path"
        ret="$?"
    else
        cd "$repo_path" && git pull origin master
        ret="$?"
    fi
    success "Download success!"
    debug
}

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
    ret="$?"
    debug
}

createSymlinks() {
  local index=1

  for linkName in "$@"
  do
    [ $index -eq 1 ] && local source_path=$linkName
    [ $index -eq 2 ] && local target_path=$linkName
    [ $index -ge 3 ] && lnif "$source_path/$linkName" "$target_path/$linkName"
    index=$(($index+1))
  done
  ret="$?"
  success "Link complete!"
  debug
}

hasCommand(){
	for m in $@; do
		type $m>/dev/null 2>&1 || error "\"$m\" was not installed! Dependence \"$*\""
	done
}

hasCommand      zsh

exiseBackup     "$HOME/.zshrc" \
                "$HOME/.zshrc_alias"

syncRepo        "$REPO_PATH" \
                "$REPO_URI"

createSymlinks  "$REPO_PATH" \
                "$HOME" \
                ".agignore" \
                ".gitmessages" \
                ".zshrc" \
                ".zshrc_alias"
