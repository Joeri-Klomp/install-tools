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
(echo "n"; echo "n"; echo "n"; echo "y"; echo "1"; echo "2"; echo "2"; echo "3"; echo "1"; echo "3"; echo "2"; echo "1"; echo "n"; echo "1"; echo "y") | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
