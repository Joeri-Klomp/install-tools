#!/bin/bash

#--curl--
apt install -y curl

#--zsh-- 
apt install -y zsh

#--oh-my-zsh--
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#--after installation, switch to zsh--
zsh
