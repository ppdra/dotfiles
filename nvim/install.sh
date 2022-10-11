#!/bin/bash

sudo apt install npm -y

# Install nvim 
sudo cp nvim /usr/bin

mkdir ~/.config/nvim
cp init.vim ~/.config/nvim


# Install node
sudo cp node /usr/bin


# Coc Build
cd ~/.local/share/nvim/plugged/coc.nvim
sudo npm install -g yarn
yarn install 
yarn build

pip3 install jedi

# Font for nvim 
sudo mkdir /usr/share/fonts/nerdfonts
