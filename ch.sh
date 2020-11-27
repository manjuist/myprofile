#! /usr/bin/env bash
# ------
# name: get work dir
# author: Deve
# date: 2020-11-12
# ------

dir=~/ipalfish
custom_dir=$1
cur_dir=$dir

if [[ -d "${custom_dir}" ]];then
  cur_dir=$custom_dir
fi

cd "${cur_dir}"
list="$(ls -1 | awk '{print NR")"$1}')"

#select m in $list;do
  #$m
#done

#echo $m

ind=1
for i in $list;do
  echo $i
  quen[ind]="${i:2}"
  ind=$((ind+1))
done

read -p 'select number:' -n 1 selectNum

selected="${quen[selectNum]}"
if [[ -d "${selected}" ]];then
  echo ${dir}/${selected}
  open "${dir}/${selected}"
fi
