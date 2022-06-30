#!/bin/bash
# Theme --------------------------------------
cd ~/Downloads

tar -xf Mint-Darcula.tar.gz

cd Mint-Darcula

cd theme 

mv darcula ~/.themes

cd ..

cd icons

tar -xf Colloid-purple.tar.xz
tar -xf El_Capitan_CursorsMODNew.tar.gz

mkdir ~/.icons

mv Colloid-purple/* ~/.icons
mv El_Capitan_CursorsMODNew ~/.icons

# Gnome terminal (dracula theme) -------------
cd ~/
sudo apt-get install dconf-cli
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
chmod +x install.sh
./install.sh
cd .. 
rm -rf gnome-terminal

# Plank theme --------------------------------
cd ~/
git clone https://github.com/dracula/plank.git
cd plank
mv Dracula ~/.local/share/plank/themes
cd ..
rm -rf plank

# LibreOffice --------------------------------
cd ~/
git clone https://github.com/dracula/libreoffice.git
cd libreoffice/
mv dracula.soc ~/.config/libreoffice/*/user/config
cd ..
rm -rf libreoffice

# Update & upgrade ----------------------------
sudo apt-get update 
sudo apt-get upgrade

# Installing software -------------------------
sudo apt install vim
sudo apt install vlc 
sudi apt install plank 
sudo apt instal tlp
sudo apt install tlpui
sudo apt install git 
sudo apt install g++
sudo apt install steam 
sudo apt install gimp 
sudo apt install mc 
sudo apt install nmap 
sudo apt install geany
sudo apt install python3
sudo apt install python3-pip
sudo apt install neofetch

# Installing ZSH ------------------------------
sudo apt install zsh 

sudo chsh -s /bin/zsh

sh -C "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo mv .zshrc ~/

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

sudo apt install github-desktop



# Installing visual studio code ---------------
sudo apt-get install wget gpg

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/

sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

rm -f packages.microsoft.gpg

sudo apt install apt-transport-https

sudo apt update 

sudo apt install code


# Install node version manager --------------
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install 18.3.0


sudo npm i -g npm


# Closing and creating report

touch report.txt

echo node --version | cat > report.txt
echo npm --version | cat >> report.txt
echo nvim --version | cat >> report.txt
echo python --version | cat >> report.txt
echo git --version | cat >> report.txt
echo vim --version | cat >> report.txt
echo pip --version | cat >> report.txt


code ./report.txt


neofetch
