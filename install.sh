#!/usr/bin/env bash

set -x
set -euo pipefail

# Check dependencies
command -v brew >/dev/null 2>&1 || (
    echo "ERROR: Homebrew is required - https://brew.sh/"
    exit 1
)

# Install neovim and all dependencies
_dependencies="\
    neovim \
    the_silver_searcher \
    shfmt \
    shellcheck \
    ctags \
    git \
"

brew install ${_dependencies} || brew upgrade ${_dependencies}

# Create directory structure
mkdir -p \
    ~/.vim/autoload \
    ~/.vim/bundle \
    ~/.vim/local

# Install vim plug
curl -fLSs \
    --create-dirs \
    -o ~/.vim/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Add yaml syntax
curl -fLSs \
    --create-dirs \
    -o ~/.vim/local/yaml.vim \
    https://raw.githubusercontent.com/vim-scripts/yaml.vim/master/colors/yaml.vim

# Create vimrc
cat <<EOF >~/.vimrc
source ~/.vim/vimrc
EOF

# Link config for neovim
ln -fs ~/.vim/vimrc ~/.config/nvim/init.vim
ln -fs ~/.vim/autoload ~/.config/nvim/autoload

# Install python dependencies
pip install neovim jedi autopep8

# Install nerd font
brew tap homebrew/cask-fonts
brew cask install font-robotomono-nerd-font-mono

# Install all plugins
nvim +PlugInstall +qall
