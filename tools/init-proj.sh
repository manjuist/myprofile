#! /usr/bin/env bash
# ------
# name: 模块功能
# author: Deve
# date: 2020-07-12
# ------

set -e
set -o pipefail

if [ "$#" -eq 0 ]; then
  echo "no arguments"
  exit 1
fi
currentScript="$0"
dir_name="$1"
target_dir="$(pwd)"
newDirPath="${target_dir}/${dir_name}"
scriptPath="$(dirname $currentScript)"

createDir(){
  local dir_path="$1"
  mkdir -p  "${dir_path}"
}

copyConfig(){
  for file in "$@"; do
    cp -r "${scriptPath}/${file}" "${newDirPath}/${file}"
  done
}

[ ! -d "${newDirPath}" ] && createDir "${newDirPath}"
[ -d "${newDirPath}" ] && copyConfig ".editorconfig" ".stylelintrc.json"
