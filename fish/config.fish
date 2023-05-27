if status --is-login
    set -gx PATH $PATH ~/.config/cargo/bin
end

# Startuo
echo ""
pfetch

# Remove that welcome message
set fish_greeting

# Aliases
alias Projects='cd ~/Documents/Projects/'
alias Downloads="cd ~/Downloads"
alias Documents="cd ~/Documents"
alias brews="brew update; brew upgrade; brew autoremove; brew doctor"
alias cargos="cargo install-update -a"

# Getting rusty
alias grep='rg'
alias cat='bat'


# Neovim for everything
#alias sudo='doas'
alias vi='nvim'
alias vim='nvim'
set -gx EDITOR nvim
set -gx VISUAL nvim

set -gx CARGO_HOME ~/.config/cargo
set -gx RUSTUP_HOME ~/.cargo/rustup
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml

# Set up starship
starship init fish | source
