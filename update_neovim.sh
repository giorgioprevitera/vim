#!/usr/bin/env bash

set -euo pipefail

NVIM_VERSION="v0.4.3"
NVIM_TARFILE="nvim-macos.tar.gz"
NVIM_URL="https://github.com/neovim/neovim/releases/download/${NVIM_VERSION}/${NVIM_TARFILE}"

nvim --version | grep NVIM

curl -sLo "/tmp/${NVIM_TARFILE}" "${NVIM_URL}"

rm -rf "${HOME}/bin/nvim-osx64.OLD"

mv "${HOME}"/bin/nvim-osx64{,.OLD}

tar xzf "/tmp/${NVIM_TARFILE}" -C "${HOME}/bin"

ln -fs "${HOME}/bin/nvim-osx64/bin/nvim" "${HOME}/bin/nvim"

nvim --version | grep NVIM
