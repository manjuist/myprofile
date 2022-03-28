#!/usr/bin/env bash

# ------
# name: check.sh
# author: Deve
# date: 2022-03-27
# ------

set -e
set -o pipefail

is_debug="0"
export ret="0"

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

OSX() {
    sys_args=$(uname -s | tr "[:upper:]" "[:lower:]")
    [[ ${sys_args} =~ "darwin" ]] && echo "OSX"
}

LINUX() {
    sys_args=$(uname -s | tr "[:upper:]" "[:lower:]")
    [[ ${sys_args} =~ "linux" ]] && echo "LINUX"
}
