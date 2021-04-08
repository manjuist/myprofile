#! /usr/bin/env bash
# ------
# name: get work dir
# author: Deve
# date: 2020-11-12
# ------

set -e

cd "$(pwd)"

yarn pre-release && git commit --no-verify -am 'chore: pre-release' && git push && yarn release
