#! /usr/bin/env bash
# ------
# name: RPT.sh
# author: Deve
# date: 2021-08-12
# ------

set -e
set -o pipefail

sysInfo=$(uname -s | tr '[:upper:]' '[:lower:]')
currentDay=$(date +"%w")
dir=~/Code
custom_dir=$1
cur_dir=$dir
declare -i day=1

if [[ -d "${custom_dir}" ]]; then
    cur_dir=$custom_dir
fi

cd "${cur_dir}"
list="$(find . -type d -maxdepth 1 | sort)"

select selected in $list; do
    break
done

cd "${selected}"
echo '----' >report

while [[ day -le currentDay ]]; do
    if [[ "${sysInfo}" =~ "darwin" ]]; then
        mondayDate=$(date -v "-${day}d" +"%m/%d")
    else
        mondayDate=$(date -d "${day} day ago" +"%m/%d")
    fi
    git log --oneline --since=${mondayDate}.days --author=dewei | grep ": " |
        awk -F ":" '{print $2}' | sort --unique >>report
    day+=1
done
