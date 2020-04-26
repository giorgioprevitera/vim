#!/usr/bin/env bash

set -x

set -euo pipefail

# Install neovim and all dependencies
_common_dependencies="\
    neovim \
    shellcheck \
    ctags \
    git \
    yarn \
    fzf \
"

_Darwin_dependencies="\
    node \
    the_silver_searcher \
    shfmt \
    prettier \
    bat \
    ripgrep \
    exa \
    findutils \
"

_Linux_dependencies="\
    python3-pip \
    silversearcher-ag \
    gnupg2 \
    snapd \
"

_environment_dependencies="_$(uname -s)_dependencies"

case "$(uname -s)" in
Darwin)
    command -v brew >/dev/null 2>&1 || (
        echo "ERROR: Homebrew is required - https://brew.sh/"
        exit 1
    )
    brew install ${_common_dependencies} ${!_environment_dependencies} || brew upgrade ${_common_dependencies} ${!_environment_dependencies}
    # Install nerd font
    brew tap homebrew/cask-fonts
    brew cask install font-robotomono-nerd-font-mono font-hack-nerd-font-mono
    NVIM_PATH="/usr/local/bin/nvim"
    USER_HOME_DIR="${HOME}"
    ;;
Linux)
    export LC_ALL="en_US.UTF-8"
    export LC_CTYPE="en_US.UTF-8"
    command -v node || curl -sL install-node.now.sh/lts | sudo FORCE=1 bash

    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    sudo -E apt-get update -y
    sudo -E apt-get install -y ${_common_dependencies} ${!_environment_dependencies}

    # sudo snap install shfmt
    pip3 install -U pip
    yarn global add prettier
    NVIM_PATH="/usr/bin/nvim"
    USER_HOME_DIR="/home/nvim"
    ;;
esac

yarn global add neovim

# Create directory structure
mkdir -vp \
    ${USER_HOME_DIR}/.vim/autoload \
    ${USER_HOME_DIR}/.vim/bundle \
    ${USER_HOME_DIR}/.vim/local \
    ${USER_HOME_DIR}/.config/nvim \
    ${USER_HOME_DIR}/bin

# Install vim plug
curl -fLSs \
    --create-dirs \
    -o ${USER_HOME_DIR}/.vim/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Add yaml syntax
curl -fLSs \
    --create-dirs \
    -o ${USER_HOME_DIR}/.vim/local/yaml.vim \
    https://raw.githubusercontent.com/vim-scripts/yaml.vim/master/colors/yaml.vim

curl -fLSs \
    --create-dirs \
    -o ${USER_HOME_DIR}/bin/tfdoc \
    https://raw.githubusercontent.com/giorgioprevitera/sysadmin-tools/master/tfdoc &&
    chmod +x ${USER_HOME_DIR}/bin/tfdoc

# Create vimrc
cat <<EOF >${USER_HOME_DIR}/.vimrc
source ${USER_HOME_DIR}/.vim/vimrc
EOF

# Link config for neovim
ln -vfs ${USER_HOME_DIR}/.vim/vimrc ${USER_HOME_DIR}/.config/nvim/init.vim
ln -vfs ${USER_HOME_DIR}/.vim/autoload ${USER_HOME_DIR}/.config/nvim/autoload

# Configures CoC
ln -vfs ${USER_HOME_DIR}/.vim/coc-settings.json ${USER_HOME_DIR}/.config/nvim/coc-settings.json

# Install python dependencies
pip3 install --no-color --user neovim jedi autopep8 flake8

# Install all plugins
nvim +PlugInstall +qall

ln -vfs "${NVIM_PATH}" ${USER_HOME_DIR}/bin/vim
ln -vfs "${NVIM_PATH}" ${USER_HOME_DIR}/bin/vi

exit 0
