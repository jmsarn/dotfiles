# dotfiles

## Installation with GNU Stow

Most tutorials will tell you to clone the repository within the folder you want to install
the stow packages (e.g., `~/.dotfiles`). However, I prefer to treat this repository as
I would any other repository. All this really means is that instead of just running
`stow <package>` you will need to provide the `--target` flag. For example if I want to
install my tmux configuration I would run `stow --target=$HOME tmux`.

