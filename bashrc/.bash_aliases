# Use neovim
alias vim='nvim'

# Activate virtual environment
alias venv='source env/bin/activate'

# Start tmux in github directory
alias tmx='tmux new-session -c ${TMUX_BASE-~/github.com}'

# AWS SSO
alias sso='aws sso login --sso-session sso-session'
alias sso-gov='aws sso login --sso-session gov-sso-session'

# Alias cat with bat
alias cat='batcat'

# Alias ls with eza
alias ls='eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'
alias ll='eza -a --color=always --long --icons=always'

# Update lazy packages
alias update-lazy='nvim --headless "+Lazy! sync" +qa'

# Clipboard
alias clp='xclip -sel clip'

# Start sqlite with headers on
alias sqlite3="sqlite3 -cmd '.headers on'"
