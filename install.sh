#!/bin/bash

#--curl--
apt install -y curl

#--zsh-- 
apt install -y zsh

#--oh-my-zsh--
sh -c -y "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
