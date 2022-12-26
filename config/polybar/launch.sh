#!/bin/bash
# ------
# name: launch.sh
# author: Deve
# date: 2022-12-21
# ------

killall -q polybar

polybar example 2>&1 | tee -a /tmp/polybar.log &
disown

echo "Polybar launched ..."
