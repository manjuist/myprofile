#!/usr/bin/env bash

# ------
# name: install.sh
# author: Deve
# date: 2022-03-27
# ------

set -e
# set -u
set -o pipefail

# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl -LsSf https://astral.sh/uv/install.sh | sh || error "Failed to install uv"
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh || error "Failed to install zim"
curl -sS https://starship.rs/install.sh | sh || error "Failed to install starship"