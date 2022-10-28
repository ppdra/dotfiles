#!/bin/bash


# Install zsh
sudo apt install zsh -y

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# cp customize theme and config files
cp zshrc ~/.zshrc
cp ppdra.zsh-theme ~/.oh-my-zsh/themes


