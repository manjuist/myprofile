#! /bin/bash
# ------
# name: comp.sh
# author: Deve
# date: 2023-10-17
# ------

find . -name '*.gltf' | sed 's/.gltf//' \
    | xargs -I {} gltf-pipeline -i {}.gltf -o {}_comp.gltf -d
