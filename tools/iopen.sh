#! /usr/bin/env bash
# ------
# name: get work dir
# author: Deve
# date: 2020-11-12
# ------

set -e

dir=~/Code
custom_dir=$1
cur_dir=$dir

if [[ -d "${custom_dir}" ]]; then
    cur_dir=$custom_dir
fi

cd "${cur_dir}"
list="$(ls)"

select selected in $list; do
    break
done

if [[ -d "${selected}" ]]; then
    echo "${dir}/${selected}"
    open "${dir}/${selected}"
fi
