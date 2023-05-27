#!/bin/bash

update() {
	wget -P ~/.config/starship/ https://raw.githubusercontent.com/21st-centuryman/dotfiles/main/starship/starship.toml
	wget -P ~/.config/fish https://raw.githubusercontent.com/21st-centuryman/dotfiles/main/fish/config.fish
}

install() {
	mkdir ~/.config ~/.config/fish ~/.config/starship

	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

	wget -P ~/.config/starship/ https://raw.githubusercontent.com/21st-centuryman/dotfiles/main/starship/starship.toml
	wget -P ~/.config/fish https://raw.githubusercontent.com/21st-centuryman/dotfiles/main/fish/config.fish

	cargo install pfetch starship
}

echo -e "Running startup server program."

read -p -r "Do you want to update the current setup? Saying n will set up rust and install packages. [Y/n]" yn

while true; do
	case $yn in
	[Yy]*)
		update
		;;
	[Nn]*)
		install
		;;
	*)
		read -p -r "Invalid response. Do you want to update your setup? [Y/n]" yn
		;;
	esac
done
