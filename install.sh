#!/bin/bash


# Install zsh
sudo pacman -S zsh

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Install omne para o terminal (colorscheme) 
#git clone https://github.com/getomni/gnome-terminal.git
#./gnome-terminal/install.sh


# update config do zshrc (configs do terminal)
cp zshrc ~/.zshrc
cp p10k.zsh ~/.p10k.zsh


# Install nvim 
sudo pacman -S neovim

# Font for nvim 
sudo mkdir /usr/share/fonts/nerdfonts
