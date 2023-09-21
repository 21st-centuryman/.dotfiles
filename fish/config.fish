# So cargo gets initalized
if status --is-login
    set -gx PATH $PATH ~/.config/cargo/bin
end

# Startup
echo ""
pfetch

# Remove that welcome message
set fish_greeting

# Aliases
alias Projects='cd ~/Documents/Projects/'
alias Downloads="cd ~/Downloads"
alias Documents="cd ~/Documents"
#alias apts="sudo apt update; sudo apt upgrade"
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

set -Ux CARGO_HOME ~/.config/cargo
set -Ux RUSTUP_HOME ~/.cargo/rustup
set -Ux STARSHIP_CONFIG ~/.config/starship/starship.toml
#set -x CC aarch64-linux-gnu-gcc
#set -x CARGO_TARGET_AARCH64_UNKNOWN_LINUX_GNU_LINKER aarch64-unknown-linux-gnu

# Set up starship
starship init fish | source

# Color themes
#fish_config theme save "Catppuccin Frappe" # Light mode
#fish_config theme save "Catppuccin Mocha" # Dark mode
