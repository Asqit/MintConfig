#!/usr/bin/zsh

# update package list and packages
sudo apt-get update
sudo apt-get upgrade -y

# install base sw
sudo apt install -y vim
sudo apt install -y vlc 
sudo apt install -y plank 
sudo apt install -y tlp
sudo apt install -y git 
sudo apt install -y g++
sudo apt install -y steam 
sudo apt install -y gimp 
sudo apt install -y mc 
sudo apt install -y nmap 
sudo apt install -y geany
sudo apt install -y python3
sudo apt install -y python3-pip
sudo apt install -y neofetch
sudo apt install -y inkscape

# Installing neovim 
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
mv ./files/init.vim ~/.config/nvim/

sh -c 'curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


echo alias python=\"python3\" | cat >> .bashrc
echo alias python=\"python3\" | cat >> .zshrc

# Installing GitHub Desktop 
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'

sudo apt-get update

sudo apt install -y github-desktop

# Installing visual studio code 
sudo apt-get install wget gpg

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/

sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update 
sudo apt install -y code

# Install node version manager (JavaScript enviroment)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install 18.3.0


sudo npm i -g npm


# Install bun (JavaScript enviroment) 
curl https://bun.sh/install | bash

