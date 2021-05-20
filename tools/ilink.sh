#! /usr/bin/env bash
# ------
# name: 模块功能
# author: Deve
# date: 2020-12-21
# ------

set -e

name=@WLH
curUser=$(whoami)
version=$(node --version)
linkPath="/Users/${curUser}/.nvm/versions/node/${version}/lib/node_modules/${name}"
currentDir=$(pwd)
packagePath="${currentDir}/node_modules/${name}"

link() {
    [[ ! -e $linkPath ]] && echo "No package! Can not find '${linkPath}'" && exit 1

    if [[ -d $linkPath ]]; then
        linkList=$(ls "${linkPath}")
        select i in $linkList; do
            break
        done

        if [[ -n ${i} ]]; then
            echo "${name}/${i}"
            npm link "${name}/${i}" && echo 'Link success'
        fi

    fi
}

unlink() {

    [[ ! -e $packagePath ]] && echo "No package! Can not find '${packagePath}'" && exit 1

    packageList=$(ls -l "${packagePath}" | grep ^l | awk '{print $9}')

    if [[ ${#packageList[@]} -ge 0 ]] && [[ -n ${packageList[0]} ]]; then

        select m in $packageList; do
            break
        done

        if [[ -n ${m} ]]; then
            echo "${name}/${m}"
            npm unlink "${name}/${m}" && echo 'Unlink success'
        fi

    else
        echo 'No item'
    fi
}

#read -p 'input you option (link/unlink):' hanldeName

handlerList=("link" "unlink")

echo 'What do you want?'
select n in "${handlerList[@]}"; do
    break
done

case $n in
link)
    link
    ;;
unlink)
    unlink
    ;;
*)
    echo 'Are you ok?'
    ;;
esac
