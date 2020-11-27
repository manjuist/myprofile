#! /usr/bin/env bash
# ------
# name: get work dir
# author: Deve
# date: 2020-11-12
# ------

cd "$(pwd)"

yarn pre-release && git commit -am 'prerelease' && git push && yarn release
