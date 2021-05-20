#! /usr/bin/env bash
# ------
# name: get work dir
# author: Deve
# date: 2020-11-12
# ------

set -e
set -o pipefail

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

handlerText() {
    begin=0
    while read -r line; do
        if [[ "${line}" =~ "}" && "${begin}" == "1" ]]; then
            begin=0
        fi

        if [[ "${begin}" == "1" ]]; then
            scriptsLs[ind]=$(echo "${line}" | awk '{print $1}' | sed 's/"\(.*\)":/\1/')
            ind=$((ind + 1))
        fi

        if [[ "${line}" =~ "scripts" ]]; then
            begin=1
        fi
    done <"$1"
}

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
    cd "${dir}/${selected}"
    handlerText ./package.json
    select m in "${scriptsLs[@]}"; do
        nvm use
        npm run "$m"
        break
    done
fi

#clear
