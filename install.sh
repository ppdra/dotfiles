#!/bin/bash





programas=(zsh git kitty)

for programa in ${programas[@]}; do
  if command -v $programa >/dev/null; then
    echo "" 
  else
    echo "[+] Instalando $programa"
    sudo apt install -y $programa >/dev/null  
  fi 
done

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &
killall zsh
# Install zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Install powerlevel10k theme for zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Copy config files 
cp zshrc ~/.zshrc
cp p10k.zsh ~/.p10k.zsh


# Install nvim 

# Install nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 
cp -r nvim/custom ~/.config/nvim/lua/


