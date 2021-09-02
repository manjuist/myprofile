#! /usr/bin/env bash
# ------
# name: RPT.sh
# author: Deve
# date: 2021-08-12
# ------

set -e
set -o pipefail

currentDay=$(date +"%w")
dir=~/Code
custom_dir=$2
cur_dir=$dir
author=$1

if [[ -d "${custom_dir}" ]]; then
    cur_dir=$custom_dir
fi

[[ -z $author ]] && author=dewei

cd "${cur_dir}"
list="$(find . -type d -maxdepth 1 | sort)"

select selected in $list; do
    break
done

cd "${selected}"

git log --oneline --since="${currentDay}".days --author="${author}" | grep ": " |
    awk -F ":" '{print $2}' | uniq | cat >>~/report

nvim ~/report || vim ~/report
