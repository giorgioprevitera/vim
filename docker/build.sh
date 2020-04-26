#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

useradd -s /bin/bash -m nvim
cd /home/nvim
apt-get update
apt-get install -y curl git sudo gnupg2
git clone -b ubuntu https://github.com/giorgioprevitera/vim.git .vim
cd .vim
./install.sh
chown -R nvim: /home/nvim
rm -rf /var/lib/apt/lists/*
