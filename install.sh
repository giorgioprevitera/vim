#!/usr/bin/env bash

set -euo pipefail

# Install neovim and all dependencies
_common_dependencies="\
    shellcheck \
    ctags \
    git \
    yarn \
    ripgrep \
"

_Darwin_dependencies="\
    node \
    the_silver_searcher \
    shfmt \
    prettier \
    bat \
    exa \
    findutils \
    fd \
    fzf \
"

_Linux_dependencies="\
    python3-pip \
    silversearcher-ag \
    fd-find \
"

_environment_dependencies="_$(uname -s)_dependencies"

case "$(uname -s)" in
Darwin)
    command -v brew >/dev/null 2>&1 || (
        echo "ERROR: Homebrew is required - https://brew.sh/"
        exit 1
    )

    # Install Neovim nightly
    brew install neovim --HEAD

    brew install ${_common_dependencies} ${!_environment_dependencies} || brew upgrade ${_common_dependencies} ${!_environment_dependencies}
    # Install nerd font
    brew tap homebrew/cask-fonts
    brew cask install font-robotomono-nerd-font-mono font-hack-nerd-font-mono
    NVIM_PATH="/usr/local/bin/nvim"
    ;;
Linux)
    export LC_ALL="en_US.UTF-8"
    export LC_CTYPE="en_US.UTF-8"

    # Install Neovim nightly
    sudo wget -O /usr/bin/nvim https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage && sudo chmod +x /usr/bin/nvim

    command -v node || curl -sL install-node.now.sh/lts | sudo FORCE=1 bash

    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    sudo add-apt-repository ppa:neovim-ppa/stable -y
    sudo apt-get update -y
    sudo apt-get install -y ${_common_dependencies} ${!_environment_dependencies}

    # Install FZF
    wget -O /tmp/fzf.tgz https://github.com/junegunn/fzf/releases/download/0.24.3/fzf-0.24.3-linux_amd64.tar.gz
    sudo tar xzvf /tmp/fzf.tgz -C /usr/bin
    rm -f /tmp/fzf.tgz

    # Install Go
    wget -O /tmp/go.tgz https://dl.google.com/go/go1.15.5.linux-amd64.tar.gz 
    sudo tar xzvf /tmp/go.tgz -C /usr/local
    rm -f /tmp/go.tgz


    grep 'export GOROOT' ${HOME}/.bashrc || echo export GOROOT=/usr/local/go >>"${HOME}/.bashrc"
    grep 'export GOPATH' ${HOME}/.bashrc || echo export GOPATH=${HOME}/go >>"${HOME}/.bashrc"
    grep 'export PATH="${GOPATH}' ${HOME}/.bashrc || echo export PATH="\${GOPATH}/bin:\${GOROOT}/bin:\${PATH}" >>"${HOME}/.bashrc"

    sudo snap install shfmt
    pip3 install -U pip
    yarn global add prettier
    NVIM_PATH="/usr/bin/nvim"
    ;;
esac

yarn global add neovim

# Create directory structure
mkdir -vp \
    "${HOME}/.vim/autoload" \
    "${HOME}/.vim/bundle" \
    "${HOME}/.vim/local" \
    "${HOME}/.config/nvim" \
    "${HOME}/bin"

# Install vim plug
curl -fLSs \
    --create-dirs \
    -o "${HOME}/.vim/autoload/plug.vim" \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Add yaml syntax
curl -fLSs \
    --create-dirs \
    -o "${HOME}/.vim/local/yaml.vim" \
    https://raw.githubusercontent.com/vim-scripts/yaml.vim/master/colors/yaml.vim

curl -fLSs \
    --create-dirs \
    -o "${HOME}/bin/tfdoc" \
    https://raw.githubusercontent.com/giorgioprevitera/sysadmin-tools/master/tfdoc &&
    chmod +x "${HOME}/bin/tfdoc"

# Create vimrc
echo source ${HOME}/.vim/vimrc >${HOME}/.vimrc

# Link config for neovim
ln -vfs "${HOME}/.vim/vimrc" "${HOME}/.config/nvim/init.vim"
ln -vfs "${HOME}/.vim/autoload" "${HOME}/.config/nvim/autoload"

# Configures CoC
ln -vfs "${HOME}/.vim/coc-settings.json" "${HOME}/.config/nvim/coc-settings.json"

# Install python dependencies
pip3 install --user -U neovim jedi autopep8 flake8

# Install all plugins
nvim +PlugInstall +qall
nvim +GoInstallBinaries +qall

mkdir -p "${HOME}/bin"
ln -vfs "${NVIM_PATH}" "${HOME}/bin/vim"
ln -vfs "${NVIM_PATH}" "${HOME}/bin/vi"

echo export EDITOR=nvim >>"${HOME}/.bashrc"
