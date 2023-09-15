# A script to help me setup future unix machines

run_script() {
	brew install stow
	echo -e "Stowing the files"
	stow -t ~/.config/. ../.

	echo -e "Sourcing all the directores that do not check the .config directories by default\n"
	echo -e "As of feb 2023, these files are git, and tmux.\n"

	rm ~/.gitconfig ~/.tmux.conf

	ln -s ~/.config/git/gitconfig ~/.gitconfig
	ln -s ~/.config/tmux/tmux.conf ~/.tmux.conf

	echo -e "Donwloading all CLI and gui apps (if you are on mac)"

	brew bundle --file=~/.config/homebrew/Brewfile

	echo -e "Downloading nerd fonts, you will hav eto install it manually."
	cd ~/Downloads
	wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

	echo -e "\nDone with the installation. Enjoy your kickass dotfiles\n"
	echo -e "Goodbye\n"
	exit 1
}

run_installer() {

	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	echo -e \n\n"Before you leave, read the above commands. If you have no executed these please run them then run this installer again."
	echo -e "Goodbye"
	exit 1
}

echo -e "Hello. Time to get the best goddamn setup script on the planet.\n"

read -p "Do you have homebrew installed, saying n will prompt you to install it? [Y/n]" yn
while true; do
	case $yn in
	[Yy]*)
		run_script
		;;
	[Nn]*)
		run_installer
		;;
	*)
		read -p "invalid response. Do you have homebrew installed? [Y/n]" yn
		;;
	esac
done

### REWRITE BELOW ###

os_deps() {
	case "$1" in
	"darwin")
		brew install ninja cmake gettext curl # Neovim
		brew install curl                     # Cargo packages
		;;
	"openbsd")
		pkg_add gmake cmake unzip curl gettext-tools # Neovim
		pkg_add curl                                 # Cargo packages
		;;
	"artix")
		pacman -S base-devel cmake unzip ninja curl # Neovim
		pacman -S curl                              # Cargo packages
		;;
	"alpine")
		apk add build-base cmake coreutils curl unzip gettext-tiny-dev # Neovim
		apk add curl                                                   # Cargo packages
		;;
	# Add more cases for other operating systems as needed
	*) ;;
	esac
}

build_nvim() {
	local build_command="make"

	cd ../source/neovim/ || exit
	git checkout stable

	if [ "$1" = "openbsd" ]; then # I NEED TO CHECK THIS LATER
		build_command="gmake"
	fi

	$build_command CMAKE_BUILD_TYPE=RelWithDebInfo
	$build_command install
	cd ../../../
}

build_dwm() {
	cd ../source/dwm/ || exit

	if [ "$1" != "darwin" ]; then
		make clean install
	fi
	cd ../../../
}

build_st() {
	cd ../source/st/ || exit

	if [ "$1" != "darwin" ]; then
		make clean install
	fi
	cd ../../../
}
