#!/usr/bin/env bash

set -euo pipefail

NVIM_TARFILE="nvim-macos.tar.gz"

nvim --version | grep NVIM

curl -sLo /tmp/${NVIM_TARFILE} https://github.com/neovim/neovim/releases/download/nightly/${NVIM_TARFILE}

rm -rf ${HOME}/bin/nvim-osx64.OLD

mv ${HOME}/bin/nvim-osx64{,.OLD}

tar xzf /tmp/${NVIM_TARFILE} -C ${HOME}/bin

ln -fs ${HOME}/bin/nvim-osx64/bin/nvim ${HOME}/bin/nvim

nvim --version | grep NVIM
