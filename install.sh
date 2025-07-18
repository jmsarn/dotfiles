#!/bin/bash

DIRENV_VERSION="2.35.0"
FZF_VERSION="0.57.0"
GO_VERSION="1.23.4"
YQ_VERSION="4.44.6"

# Create repository directory
mkdir -p ~/github.com

# Install additional apt packages
sudo apt-get update
sudo apt-get install -y bat tmux stow xclip libssl-dev ninja-build gettext cmake curl build-essential

# Install direnv
curl -LO "https://github.com/direnv/direnv/releases/download/v${DIRENV_VERSION}/direnv.linux-amd64"
chmod +x direnv.linux-amd64
sudo mv direnv.linux-amd64 /usr/local/bin/direnv

# Install fzf
curl -LO "https://github.com/junegunn/fzf/releases/download/v${FZF_VERSION}/fzf-${FZF_VERSION}-linux_amd64.tar.gz"
sudo tar -C /usr/local/bin -xzf "fzf-${FZF_VERSION}-linux-amd64.tar.gz" 

# Install Golang
curl -OL "https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz"
sudo tar -C /usr/local -xzf "go${GO_VERSION}.linux-amd64.tar.gz"

# Install Rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

# Install yq
curl -LO "https://github.com/mikefarah/yq/releases/download/v${YQ_VERSION}/yq_linux_amd64"
chmod +x yq_linux_amd64
sudo mv yq_linux_amd64 /usr/local/bin/yq

# Install cargo packages
~/.cargo/bin/cargo install cargo-update, eza, ripgrep
~/.cargo/bin/cargo install --git https://github.com/astral-sh/uv uv

# Install neovim
git clone https://github.com/neovim/neovim.git ~/github.com/neovim/neovim/
cd ~/github.com/neovim/neovim
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim" CMAKE_BUILD_TYPE=Release
make install
cd -

# Install node version manager and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install --lts

# Install 1password
curl -sS https://downloads.1password.com/linux/keys/1password.asc | \
  sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg && \
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/$(dpkg --print-architecture) stable main" | \
  sudo tee /etc/apt/sources.list.d/1password.list && \
  sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/ && \
  curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | \
  sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol && \
  sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22 && \
  curl -sS https://downloads.1password.com/linux/keys/1password.asc | \
  sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg && \
  sudo apt update && sudo apt install -y 1password-cli


# 1password integration with direnv
git clone https://github.com/venkytv/direnv-op.git ~/github.com/venkytv/direnv-op/
cd ~/github.com/venkytv/direnv-op
make install
cd -

# Git configuration
git config --global core.excludesfile ~/.gitignore-global
