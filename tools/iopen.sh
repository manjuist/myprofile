#! /usr/bin/env bash
# ------
# name: get work dir
# author: Deve
# date: 2020-11-12
# ------

set -e
set -o pipefail

dir=~/Code
sys_open=$1
cur_dir=$dir

cd "${cur_dir}"
list="$(find . -type d -maxdepth 1 | sort)"

select selected in $list; do
    break
done

if [[ -d "${selected}" ]]; then
    echo "${dir}/${selected}"
    cd "${dir}/${selected}"
    if [[ -z ${sys_open} ]]; then
        command zsh
    else
        open "${dir}/${selected}"
    fi
fi
