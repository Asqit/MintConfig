#!/bin/bash

sudo apt-get update 
sudo apt install zsh -y

TARGET=$(which zsh)

# zsh as default for me and for root
sudo chsh -s $TARGET
chsh -s $TARGET

# oh-my-zsh
sh -C "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo mv ./files/.zshrc ~/


sudo reboot