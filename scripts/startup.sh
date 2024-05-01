# A script to help me setup future unix machines

run_script() {
	brew install stow
	echo -e "Stowing the files"
	stow -t ~/.config/. ../.

	echo -e "Sourcing all the directores that do not check the .config directories by default\n"
	echo -e "As of 2024, these files are zsh, git, and tmux.\n"

	rm ~/.gitconfig ~/.tmux.conf ~/.zshrc

	ln -s ~/.config/git/gitconfig ~/.gitconfig
	ln -s ~/.config/zsh/zshrc ~/.zshrc
	ln -s ~/.config/tmux/tmux.conf ~/.tmux.conf

	echo -e "Donwloading all CLI and gui apps (if you are on mac)"

	brew bundle --file=~/.config/homebrew/Brewfile

	echo -e "Downloading nerd fonts, you will have to install it manually."
	mkdir ~/Downloads
	cd ~/Downloads
	wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Meslo/M/Regular/MesloLGMNerdFont-Regular.ttf

	echo -e "\nDone with the installation. Enjoy your kickass dotfiles\n"
	echo -e "Goodbye\n"
	exit 1
}

run_installer() {

	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	echo -e "\n\n Before you leave, read the above commands. If you have no executed these please run them then run this installer again."
	echo -e "Goodbye"
	exit 1
}

echo -e "Hello. Time to get the best goddamn setup script on the planet.\n"

read -rp "Do you have homebrew installed, saying n will prompt you to install it? [Y/n]" yn
while true; do
	case $yn in
	[Yy]*)
		run_script
		;;
	[Nn]*)
		run_installer
		;;
	*)
		read -rp "invalid response. Do you have homebrew installed? [Y/n]" yn
		;;
	esac
done

### REWRITE BELOW ###

# ---------------------
# Dependencies
# ---------------------

#desktop_os_deps() {
#	case "$2" in
#	"darwin")
#		brew install ninja cmake gettext curl # Neovim
#		brew install curl                     # Cargo packages
#		brew install stow                     # Finalization step
#		;;
#	"openbsd")
#		pkg_add gmake cmake unzip curl gettext-tools # Neovim
#		pkg_add curl                                 # Cargo packages
#		pkg_add stow                                 # Finalization step
#		;;
#	"artix")
#		pacman -S base-devel cmake unzip ninja curl # Neovim
#		pacman -S curl                              # Cargo packages
#		pacman -S stow                              # Finalization step
#		;;
#	"alpine")
#		apk add build-base cmake coreutils curl unzip gettext-tiny-dev # Neovim
#		apk add curl                                                   # Cargo packages
#		apk add stow                                                   # Finalization step
#		;;
#	# Add more cases for other operating systems as needed
#	*) ;;
#	esac
#}
#
#server_os_deps() {
#	case "$2" in
#	"debian")
#		apt-get install curl                                    # Rust
#		apt-get install libgit2-dev libcurl4 libssh-dev pkgconf # cargo-update
#		apt-get install wget                                    # Finalization step
#		;;
#	"alpine")
#		apk add curl                                                   # Rust
#		apk add build-base cmake coreutils curl unzip gettext-tiny-dev # cargo-update???? EDIT
#		apk add wget                                                   # Finalization step
#		;;
#	# Add more cases for other operating systems as needed
#	*) ;;
#	esac
#}
#
## ---------------------
## BUILDING FROM SOURCE
## ---------------------
#
#build_nvim() {
#	local build_command="make"
#
#	cd ../source/neovim/ || exit
#	git checkout stable
#
#	if [ "$1" = "openbsd" ]; then # I NEED TO CHECK THIS LATER
#		build_command="gmake"
#	fi
#
#	$build_command CMAKE_BUILD_TYPE=RelWithDebInfo
#	$build_command install
#	cd ../../../
#}
#
#build_dwm() {
#	cd ../source/dwm/ || exit
#
#	if [ "$1" != "darwin" ]; then
#		make clean install
#	fi
#	cd ../../../
#}
#
#build_st() {
#	cd ../source/st/ || exit
#
#	if [ "$1" != "darwin" ]; then
#		make clean install
#	fi
#	cd ../../../
#}
#
## ---------------------
## stow and finalization
## ---------------------
#
#desktop_final() {
#	stow -t ~/.config/. ../.
#	rm ~/.gitconfig ~/.tmux.conf
#	ln -s ~/.config/git/gitconfig ~/.gitconfig
#	ln -s ~/.config/tmux/tmux.conf ~/.tmux.conf
#}
#
#server_final() {
#	wget -P ~/.config/starship/ https://raw.githubusercontent.com/21st-centuryman/dotfiles/main/starship/starship.toml
#	wget -P ~/.config/fish https://raw.githubusercontent.com/21st-centuryman/dotfiles/main/fish/config.fish
#}
