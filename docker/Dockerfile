FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN useradd -s /bin/bash -m nvim && \
    cd /home/nvim && \
    apt-get update && \
    apt-get install -y curl git sudo gnupg2 && \
    curl -o /tmp/go.tgz https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz && \
    tar xzf /tmp/go.tgz -C /usr/local && \
    rm -f /tmp/go.tgz && \
    git clone -b ubuntu https://github.com/giorgioprevitera/vim.git .vim && \
    cd .vim && ./install.sh && \
    chown -R nvim: /home/nvim && \
    rm -rf /var/lib/apt/lists/*

USER nvim
