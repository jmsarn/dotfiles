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

