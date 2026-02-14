# Use neovim
alias vim='nvim'

# Activate virtual environment
alias venv='source env/bin/activate'

# Start tmux with preconfigured layout
alias tmx='tmuxp load dev'

# GCP
alias gcp-adc='gcloud auth application-default login'
alias gcp='gcloud auth login'
alias fb-auth='firebase login --reauth'

# AWS SSO
alias sso='aws sso login --sso-session sso-session'
alias sso-gov='aws sso login --sso-session gov-sso-session'

# Alias cat with bat
alias cat='bat'

# Alias ls with eza
alias ls='eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'
alias ll='eza -a --color=always --long --icons=always'

# Update lazy packages
alias update-lazy='nvim --headless "+Lazy! sync" +qa'

# Clipboard
alias clp='wl-copy'

# Start sqlite with headers on
alias sqlite3="sqlite3 -cmd '.headers on'"

# Get Weather
alias wttr='curl wttr.in/${WEATHER_COORDS:-abq}?u'

# Alias docker with podman
alias docker='podman'
