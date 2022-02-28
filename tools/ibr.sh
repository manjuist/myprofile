# ------
# name: b.sh
# author: Deve
# date: 2022-01-19
# ------

git checkout $(git branch -a | fzf)
