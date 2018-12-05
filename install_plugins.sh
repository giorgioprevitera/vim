#!/usr/bin/env bash

set -euo pipefail

PLUGIN_URLS="\
https://github.com/flazz/vim-colorschemes.git \
https://github.com/ctrlpvim/ctrlp.vim \
https://github.com/nwochaadim/git-remote-open.git \
https://github.com/gregsexton/gitv \
https://github.com/vim-scripts/greplace.vim.git \
https://github.com/morhetz/gruvbox \
https://github.com/davidhalter/jedi-vim.git \
https://github.com/scrooloose/nerdtree.git \
https://github.com/vim-syntastic/syntastic.git \
https://github.com/godlygeek/tabular.git \
https://github.com/majutsushi/tagbar \
https://github.com/vim-airline/vim-airline \
https://github.com/vim-airline/vim-airline-themes \
https://github.com/dkprice/vim-easygrep.git \
https://github.com/tommcdo/vim-fubitive.git \
https://github.com/tpope/vim-fugitive.git \
https://github.com/airblade/vim-gitgutter \
https://github.com/amiorin/vim-project.git \
https://github.com/tpope/vim-sensible.git \
https://github.com/ddrscott/vim-side-search.git \
https://github.com/tpope/vim-unimpaired.git \
https://github.com/terryma/vim-multiple-cursors.git \
https://github.com/vim-ctrlspace/vim-ctrlspace.git \
https://github.com/scrooloose/nerdcommenter.git \
https://github.com/Yggdroot/indentLine.git \
https://github.com/lambdalisue/vim-pyenv.git \
https://github.com/ryanoasis/vim-devicons \
https://github.com/w0rp/ale.git \
https://github.com/hashivim/vim-terraform.git \
https://github.com/junegunn/goyo.vim.git \
"

mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/local
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
curl -LSso ~/.vim/local/yaml.vim https://raw.githubusercontent.com/vim-scripts/yaml.vim/master/colors/yaml.vim

pushd ~/.vim/bundle/

for URL in $PLUGIN_URLS; do
    echo "INSTALLING ${URL}"
    git clone "${URL}" 2>/dev/null || echo "already installed"
done
