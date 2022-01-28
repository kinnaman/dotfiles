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
