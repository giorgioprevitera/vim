#!/usr/bin/env bash

set -euo pipefail

#https://github.com/vim-scripts/greplace.vim.git \
#https://github.com/vim-syntastic/syntastic.git \
#https://github.com/amiorin/vim-project.git \


mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/local
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -LSso ~/.vim/local/yaml.vim https://raw.githubusercontent.com/vim-scripts/yaml.vim/master/colors/yaml.vim

