#!/usr/bin/env bash

set -e
set -o pipefail

readonly TOOL_PATH="$HOME/.myprofile/tools"

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
}

createSymlinks() {
    for linkName in "$@"; do
        lnif "$TOOL_PATH/$linkName" "/usr/local/bin/${linkName%.sh}"
    done
}

createSymlinks "$(ls "${TOOL_PATH}")"
