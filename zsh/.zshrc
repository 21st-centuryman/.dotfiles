# Startup (To give space for tmux)
echo ""

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Aliases
alias Projects='cd ~/Documents/Projects/'
alias Downloads="cd ~/Downloads"
alias Documents="cd ~/Documents"

# Aliases for applications
alias brews='brew update; brew upgrade; brew autoremove; brew doctor'
alias speed="speedtest-cli"
alias ssh='ssh -F ~/.config/ssh/config'

# Getting rusty
alias grep='rg'
alias cat='bat'

# Neovim for everything
alias vi='nvim'
alias vim='nvim'
export EDITOR=nvim
export VISUAL=nvim

# Setting up paths
export CARGO_HOME=~/.config/cargo
export RUSTUP_HOME=~/.config/rustup
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/powerlevel10k/.p10k.zsh ]] || source ~/.config/powerlevel10k/.p10k.zsh