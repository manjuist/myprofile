#! /usr/bin/env bash

# ------
# name: ed.sh
# author: Deve
# date: 2022-07-25
# ------

nvim "$(fzf)" || exit 1
