# A script to help me setup future Macs
# Install the script on a usb and run it.

echo -e "Hello. Time to get the best goddamn setup script on the planet.\n"
echo -e "Lets start with homebrew. The better package manager (f*** nix)\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo -e "homebrew installed... Downloading git to fetch Dotfiles.\n"

brew install git stow

echo -e "Git installation complete.\n"

git clone https://github.com/21st-centuryman/dotfiles.git 

echo -e "Stowing the files"

cd dotfiles
stow -t ~/.config/. /*

echo -e "Sourcing all the directores that do not check the .config directories by default\n"
echo -e "As of feb 2023, these files are git, tmux, and zsh. We will source them using gnu stow\n"

stow -t ~/. -d ~/.config/git/.gitconfig
stow -t ~/. -d ~/.config/tmux/.tmux.conf
stow -t ~/. -d ~/.config/zsh/.zshrc

echo -e "Downloading all CLI and gui apps (if you are on mac)"

brew bundle --file=~/.config/homebrew/Brewfile

echo -e "\n\nDone with the installation. Enjoy your kickass dotfiles\n"
echo -e "Goodbye\n"
exit 1
