#!/bin/bash

GO_VERSION="1.22.2"

# Install Golang
curl -O "https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz"
tar -C /usr/local -xzf "go${GO_VERSION}.linux-amd64.tar.gz"

# Install Rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

# Install neovim
add-apt-repository ppa:neovim-ppa/unstable
apt-get update
apt-get install -y neovim

# Install bat
apt-get install -y bat 

# Install eza
cargo install eza

# Install fzf
apt-get install -y fzf
