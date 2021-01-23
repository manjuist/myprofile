# ------
# name: 模块功能
# author: Deve
# date: 2021-01-23
# ------

list="$(ls -lFA | grep / | awk '{print $9}')"

for i in $list
do
    cd ./$i
    yarn
    cd ..
done
