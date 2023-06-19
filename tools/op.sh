#! /usr/bin/env bash

# ------
# name: cb.sh
# author: Deve
# date: 2022-07-25
# ------

cd ~/Code || exit 1
open "$(fzf)" || exit 1