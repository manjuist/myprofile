#! /usr/bin/env bash
# ------
# name: RPT.sh
# author: Deve
# date: 2021-08-12
# ------

set -e
set -o pipefail

currentDay=$(date +"%w")
currentTime=$(date)
dir=~/Code
custom_dir=$1
cur_dir=$dir

if [[ -d "${custom_dir}" ]]; then
    cur_dir=$custom_dir
fi

cd "${cur_dir}"
list="$(find . -type d -maxdepth 1 | sort)"

select selected in $list; do
    break
done

cd "${selected}"

echo "----${currentTime}----" >>~/report

git log --oneline --since="${currentDay}".days --author=dewei | grep ": " |
    awk -F ":" '{print $2}' | uniq | cat -n >>~/report

nvim ~/report || vim ~/report
