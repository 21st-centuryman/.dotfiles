<div align="center">

## Dotfiles
#### My configuration files and portable dev environment.

[![Alacritty](https://img.shields.io/badge/Alacritty-F46D01.svg?style=for-the-badge&logoColor=white&logo=alacritty)](https://alacritty.org/)
[![Git](https://img.shields.io/badge/git-F05032.svg?style=for-the-badge&logoColor=white&logo=git)](https://git-scm.com/)
[![Homebrew](https://img.shields.io/badge/Homebrew-white.svg?style=for-the-badge&logoColor=FBB040&logo=homebrew)](https://brew.sh/)
[![Neovim](https://img.shields.io/badge/Neovim-57A143.svg?style=for-the-badge&logoColor=white&logo=neovim)](https://neovim.io/)
[![Stow](https://img.shields.io/badge/GNU_Stow-white.svg?style=for-the-badge&logoColor=black&logo=gnu)](https://www.gnu.org/software/stow/)
[![Tmux](https://img.shields.io/badge/tmux-1BB91F.svg?style=for-the-badge&logoColor=white&logo=tmux)](https://github.com/tmux/tmux)
[![Zsh](https://img.shields.io/badge/Zsh-F15A24.svg?style=for-the-badge&logoColor=white&logo=gnubash)](https://www.zsh.org/)

</div>

## ⇁  Welcome
This is a collection of my configuration files, used on my Mac and Linux machines.

## ⇁ Problem
When I want to set up my computer(s) and servers I want to have as similar of a workflow as possible. This include but is not limited to:
* A Package manager
* A terminal
* A Shell
* An IDE
* A web browser
* A way to manage my Dotfiles
(and other programs as they come and go)

Therefore I have been exploring on my freetime what I can use to make this as similar as possible for my windows and unix based machines.
I also want my configuration and settings for these programs to be used as dotfiles so I don't have to manually set that up everytime I create a new server or get a new machine.

## ⇁ The solution
With this in mind I came to the following conclusions for what I should use:
* Package Manager: **Homebrew** ( *Easy cross configuration for both MacOS and Linux* )
* Terminal: **Alacritty** ( *Settings are easily configured with a yml file & lack of features* )
    * Add on: **Tmux** ( *To minimize the differences between a headless system and add functionality to alacritty* )
* Shell: **ZSH** ( *Just overall awesome, also I will manually download packages as I see fit* )
* IDE: **Neovim** ( *Easy config, easy built in package manager, great language support, and fast typing, once I learn how to type* )
* * Management: **Gnu stow** ( *Easy way to link files to official repo. I.e. changes in .config folder = changes in this repo* )
* Web Browser: (I have not found a satisfactory web browser for this, and I doubt I will)
    
Plus I also have other configuration files, like my gitconfig. More will definetly appear here as I continue my exploration.

Note that I also want to find a better package manager, one that can install both terminal and non-terminal based applications for all unix systems. I tried Nix but found it a hastle to install it on both linux and mac. AKA Nix = 🗑️

## ⇁  File structure

```
├── .stow-local-ignore
├── README.md
├── alacritty
│   └── alacritty.yml
├── git
│   └── .gitconfig
├── homebrew
│   └── Brewfile
├── nvim
│   ├── after*
│   ├── init.lua
│   ├── lazy-lock.json
│   ├── lua*
│   ├── nvim*
│   ├── plugin*
│   └── stylua.toml
├── tmux
│   ├── .tmux.conf
│   └── plugins*
└── zsh
    └── .zshrc
```
name* = directory 
## ⇁ FAQ
Why not sure nix? 
\- Bruh

## ⇁ Note
DO NOT use my bootstrap script. I am currently in the process to merge my [macoser](https://github.com/21st-centuryman/macoser) repo to this one. 
