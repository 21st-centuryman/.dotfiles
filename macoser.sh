# A script to help me setup future Macs
# Install the script on a usb and run it.

echo -e "Hello and welcome to macoser\n"
echo -e "In the begining we will need your sudo password, so please be ready to help us here in the begining.\n"

echo -e "One moment please\n"

echo -e "Installing homebrew\n"


# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo -e "homebrew installed. Now it is time for downloading git. This will be used to download our .dotfiles.\n"
brew install git

echo -e "Git installation complete now it is time for our .dotfiles\n"

git clone https://github.com/calexanderberg/.dotfiles.git


echo -e "Giving us privledges and running the bootstrap.sh command\n"
chmod +x ~/.dotfiles/bootstrap.sh
bash ~/.dotfiles/bootstrap.sh


echo -e "Done with bootstrap command\n"
echo -e "Now it is time to download brew casks and formulae"
brew bundle --file=~/Brewfile


echo -e "\n\nDone with the installation, we hope you enjoyed the process\n"
echo -e "Goodbye\n"
exit 1
