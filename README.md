# Vim

This repo keeps all my vim configuration and plugins in code, to easily sync the installation and configuration across devices.

## Usage
Clone this repo under `~/.vim`:
```
git clone git@github.com:vilelm/vim.git ~/.vim
```

Install the plugins:
```
~/.vim/install_plugins.sh
```

Then create a `~/.vimrc` file, sourcing the `vimrc` file contained in this repo:
```
cat << EOF > ~/.vimrc
source ~/.vim/vimrc
EOF
```

Now just run `vim`
