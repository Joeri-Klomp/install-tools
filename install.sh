#!/bin/bash

#--curl--
apt install -y curl

#--zsh-- 
apt install -y zsh

#--oh-my-zsh--
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#--after installation, switch to zsh--
zsh

#--get a custom setup of oh-my-zsh--
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
source ~/powerlevel10k/powerlevel10k.zsh-theme