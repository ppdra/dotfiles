#!/bin/bash



sudo apt update -y
sudo apt upgrade -y

sudo apt install git -y 
sudo apt install curl -y


# Install zsh
sudo apt install zsh -y

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Install omne para o terminal (colorscheme) 
#git clone https://github.com/getomni/gnome-terminal.git
#./gnome-terminal/install.sh


# update config do zshrc (configs do terminal)
cp zshrc ~/.zshrc
cp robbyrussell.zsh-theme ~/.oh-my-zsh/themes



#!/bin/bash

sudo apt install npm -y

# Install nvim 
sudo cp nvim/nvim /usr/bin

mkdir ~/.config/nvim
cp init.vim ~/.config/nvim


# Install node
sudo cp nvim/node /usr/bin


# Coc Build
cd ~/.local/share/nvim/plugged/coc.nvim
sudo npm install -g yarn
yarn install 
yarn build

pip3 install jedi

# Font for nvim 
sudo mkdir /usr/share/fonts/nerdfonts
