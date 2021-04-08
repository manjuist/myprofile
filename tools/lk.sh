#! /usr/bin/env bash
# ------
# name: get work dir
# author: Deve
# date: 2020-11-12
# ------

set -e

package_name=$1

if [[ -z "${package_name}" ]];then
    echo "no val"
    exit 1
fi

yarn link @ipalfish/"${package_name}"
