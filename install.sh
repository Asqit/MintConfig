#!/usr/bin/zsh


# Update & upgrade ----------------------------
sudo apt-get update 
sudo apt-get upgrade -y

# Installing software -------------------------
sudo apt install -y vim
sudo apt install -y vlc 
sudo apt install -y plank 
sudo apt install -y tlp
sudo apt install -y tlpui
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
sudo apt install -y spotify

# Plank theme --------------------------------
cd ~/
git clone https://github.com/dracula/plank.git
cd plank

mkdir ~/.local/share/plank/themes
mv Dracula ~/.local/share/plank/themes

cd ..
rm -rf plank

# LibreOffice --------------------------------
cd ~/
git clone https://github.com/dracula/libreoffice.git
cd libreoffice/
mkdir ~/.config/libreoffice/*/user/config
mv dracula.soc ~/.config/libreoffice/*/user/config
cd ..
rm -rf libreoffice


# Installing neovim ----------------------------
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
mv init.vim ~/.config/nvim/

sh -c 'curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


echo alias nvim=\"vim\" | cat >> .bashrc

echo alias nvim=\"vim\" | cat >> .zshrc

echo alias python=\"python3\" | cat >> .zshrc

echo alias python=\"python3\" | cat >> .bashrc


# Installing GitHub Desktop -------------------
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'

sudo apt-get update

sudo apt install -y github-desktop



# Installing visual studio code ---------------
sudo apt-get install wget gpg

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/

sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

rm -f packages.microsoft.gpg

sudo apt install apt-transport-https

sudo apt update 

sudo apt install -y code


# Install node version manager --------------
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install 18.3.0


sudo npm i -g npm


# Install bun (js enviroment) -------------
curl https://bun.sh/install | bash

