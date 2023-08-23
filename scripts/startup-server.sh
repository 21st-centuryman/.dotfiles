# Installs the starting configuration for my server.

echo -e "Running startup server program."

mkdir ~/.config ~/.config/fish ~/.config/starship

wget -P ~/.config/starship/ https://raw.githubusercontent.com/21st-centuryman/dotfiles/main/starship/starship.toml
wget -P ~/.config/fish https://raw.githubusercontent.com/21st-centuryman/dotfiles/main/fish/config.fish

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cargo install pfetch starship
