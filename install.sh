#!/bin/bash

FZF_VERSION="0.57.0"
GO_VERSION="1.23.4"

# Install additional apt packages
sudo apt-get update
sudo apt-get install -y bat tmux stow xclip

# Install fzf
curl -LO "https://github.com/junegunn/fzf/releases/download/v${FZF_VERSION}/fzf-${FZF_VERSION}-linux_amd64.tar.gz"
sudo tar -C /usr/local/bin -xzf "fzf-${FZF_VERSION}-linux-amd64.tar.gz" 

# Install Golang
curl -OL "https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz"
sudo tar -C /usr/local -xzf "go${GO_VERSION}.linux-amd64.tar.gz"

# Install Rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

# Install cargo packages
~/.cargo/bin/cargo install eza

# Install neovim
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install -y neovim

# Install Python3.11
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install -y python3.11 python3.11-dev python3.11-venv

# Create virtual environment for neovim python plugins
mkdir -p ~/.local/venv
python3.11 -m venv ~/.local/venv/nvim

# Install node version manager and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install --lts

