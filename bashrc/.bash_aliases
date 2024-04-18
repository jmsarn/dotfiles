# Use neovim
alias vim='nvim'

# Start tmux in github directory
alias tmx='tmux new-session -c ~/github.com/rs21io'

# AWS SSO
alias sso='aws sso login --sso-session sso-session && export AWS_PROFILE=pub-admin'
alias sso-gov='aws sso login --sso-session gov-sso-session && export AWS_PROFILE=gov-admin'

# Alias Docker with Podman
alias docker='podman'
#alias docker-compose='podman-compose'

# Alias cat with bat
alias cat='batcat'

# Alias ls with eza
alias ls='eza -a --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'
alias ll='eza -a --color=always --long --icons=always'
