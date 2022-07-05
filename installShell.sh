#!/bin/bash

# Installing ZSH ------------------------------
sudo apt install zsh 

sudo chsh -s /bin/zsh
chsh -s /bin/zsh

sh -C "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo mv .zshrc ~/

sudo reboot