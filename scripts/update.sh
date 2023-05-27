# This is a script for updating the stuff for my server as soon as I have set it up using startup-server.sh
# Yes it's only astetic, sue me.

echo -e "Updating the server program"
wget -P ~/.config/starship/ https://raw.githubusercontent.com/21st-centuryman/dotfiles/main/starship/starship.toml
wget -P ~/.config/fish https://raw.githubusercontent.com/21st-centuryman/dotfiles/main/fish/config.fish
