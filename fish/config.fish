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
#alias aptss="sudo apts update; sudo apt upgrade"
alias brews="brew update; brew upgrade; brew autoremove; brew doctor"
alias cargos="cargo install-update -a"
alias ds_store="sudo find ../../../. -name ".DS_Store" -delete"
# Getting rusty
alias grep='rg'
alias cat='bat'


# Neovim for everything
#alias sudo='doas'
alias vi='nvim'
alias vim='nvim'
set -Ux EDITOR nvim
set -Ux VISUAL nvim

set -Ux OPENAI_API_KEY ~/.config/openai/openai.key
set -Ux CARGO_HOME ~/.config/cargo
set -Ux RUSTUP_HOME ~/.cargo/rustup
set -Ux STARSHIP_CONFIG ~/.config/starship/starship.toml

# Set up starship
starship init fish | source
