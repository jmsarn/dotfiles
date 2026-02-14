#!/usr/bin/env bash

PKGS=(
    "alsa-utils"
    "base-devel"
    "bat"
    "chromium"
    "direnv"
    "eza"
    "fzf"
    "ghostty"
    "git"
    "go"
    "jq"
    "less"
    "neovim"
    "nvm"
    "ripgrep"
    "starship"
    "stow"
    "tmux"
    "tmuxp"
    "ttf-roboto-mono-nerd"
    "unzip"
    "uv"
    "wl-clipboard"
    )
AUR_PKGS=(
    "1password"
    "noctalia-shell"
    )
sudo pacman -Syu --needed --no-confirm "${PKGS[@]}"
source /usr/share/nvm/init-nvm.sh

mkdir ~/aur.archlinux.org
cd ~/aur.archlinux.org
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru -S "${AUR_PKGS[@]}"

mkdir -p ~/github.com/jmsarn
cd ~/github.com/jmsarn
git clone https://github.com/jmsarn/dotfiles.git
cd dotfiles
git remote set-url origin git@github.com:jmsarn/dotfiles.git


# symlink configuration
mv ~/.bashrc ~/.bashrc.bak
mv ~/.config/niri/config.kdl ~/.config/niri/config.kdl.bak
stow --target=$HOME bashrc direnv git niri starship ghostty nvim tmux
source ~/.bashrc

nvm install --lts

