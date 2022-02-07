#!/bin/bash

# Installs useful applications
sudo apt-get update
sudo apt-get install universal-ctags neovim ssh

# Install i3-gaps on debian based systems
sudo add-apt-repository ppa:regolith-linux/release
sudo apt update
sudo apt install i3-gaps

#⠀Sets custom neofetch ascii art
neofetch -source ./images/squidward

# Fun programs
sudo apt-get install cmatrix figlet 

# Web development tools
sudo apt-get install ruby-full zlib1g-dev
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
gem install jekyll bundler
