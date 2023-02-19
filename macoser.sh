# A script to help me setup future unix machines

run_script () {
  brew install git stow

  git clone https://github.com/21st-centuryman/dotfiles.git 

  echo -e "Stowing the files"

  cd dotfiles
  stow -t ~/.config/. *

  echo -e "Sourcing all the directores that do not check the .config directories by default\n"
  echo -e "As of feb 2023, these files are git, tmux, and zsh. We will source them using gnu stow\n"

  rm ~/.gitconfig ~/.zshrc ~/.tmux.conf
  stow -t ~/. -d ~/.config/git/.gitconfig
  stow -t ~/. -d ~/.config/tmux/.tmux.conf
  stow -t ~/. -d ~/.config/zsh/.zshrc

  echo -e "Downloading all CLI and gui apps (if you are on mac)"

  echo -e "Sourcing all the directores that do not check the .config directories by default\n"
  echo -e "As of feb 2023, these files are git, tmux, and zsh\n"

  ln -s ~/.config/zsh/zshrc ~/.zshrc
  ln -s ~/.config/git/gitconfig ~/.gitconfig
  ln -s ~/.config/tmux/tmux.conf ~/.tmux.conf

  echo -e "Donwloading all CLI and gui apps (if you are on mac)"

  brew bundle --file=~/.config/homebrew/Brewfile

  echo -e "\n\nDone with the installation. Enjoy your kickass dotfiles\n"
  echo -e "Goodbye\n"
  exit 1
}

run_installer () {

   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo -e \n\n"Before you leave, read the above commands. If you have no executed these please run them then run this installer again."
  echo -e "Goodbye"
  exit 1
}

echo -e "Hello. Time to get the best goddamn setup script on the planet.\n"


read -p "Do you have homebrew installed, saying n will prompt you to install it? [Y/n]" yn
while true; do
  case $yn in
    [Yy]*) run_script
    ;;
    [Nn]*) run_installer
    ;;
    *) read -p "invalid response. Do you have homebrew installed? [Y/n]" yn
    ;;
  esac
done

