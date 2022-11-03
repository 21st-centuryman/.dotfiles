# Startup
tmux

# Aliases
alias vim="nvim"
alias kth="cd ~/Documents/KTH/"
alias Projects="cd ~/Documents/Projects" 
alias Downloads="cd ~/Downloads"
alias Documents="cd ~/Documents"
alias brews="brew update; brew upgrade; brew autoremove; brew doctor"
alias .zshrc="vim ~/.dotfiles/.zshrc"

# Enable colors and color font
autoload -U colors && colors

# ~ prompt 
PROMPT='%F{green}~%f '

# Making nvim default editor
export VISUAL=nvim
export EDITOR=nvim
