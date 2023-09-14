#!/bin/bash

# Check if the script is run as root or with sudo
if [ "$(id -u)" -ne 0 ]; then
  echo "Please run this script as root or with sudo."
  exit 1
fi

# Update package lists and install necessary packages
echo "Updating package lists and installing required packages..."
apt update
apt install -y zsh git

# Change the default shell to Zsh
echo "Changing the default shell to Zsh..."
chsh -s $(which zsh)

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clone Powerlevel10k theme
echo "Cloning Powerlevel10k theme..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

# Set Zsh theme to Powerlevel10k
echo "Setting Zsh theme to Powerlevel10k..."
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k/powerlevel10k"/' ~/.zshrc

# Source the updated Zsh configuration
echo "Sourcing the updated Zsh configuration..."
source ~/.zshrc

echo "Zsh and Powerlevel10k installation completed."

