#!/bin/bash

echo -e "
_  _ _ _  _ _  _ ____ _  _ ____ _  _ . ____
|_/  | |\ | |\ | |__| |\/| |__| |\ | ' [__ 
| \_ | | \| | \| |  | |  | |  | | \|   ___]
___  ____ ___ ____ _ _    ____ ____ 
|  \ |  |  |  |___ | |    |___ [__ 
|__/ |__|  |  |    | |___ |___ ___]"
sleep 2 

# Installs useful applications
sudo apt-get update
sudo apt-get install universal-ctags neovim ssh

# Install i3-gaps and supporting apps on debian based systems
sudo add-apt-repository ppa:regolith-linux/release
sudo apt update
sudo apt install i3-gaps blueman

#⠀Sets custom neofetch ascii art
neofetch -source ./images/squidward

# Fun programs
echo 'Would you like to install the some fun programs? y/n'
read confirm
while [[$confirm!="y" || $confirm!="n"]]; do
	echo 'Please enter a valid argument'
	echo 'Would you like to install the web tool kit? y/n'
	read $confirm
done
if [$confirm="y"]; then
	sudo apt-get install cmatrix figlet 
fi

# Web development tools
echo 'Would you like to install the web tool kit? y/n'
read confirm
while [[$confirm!="y" || $confirm!="n"]]; do
	echo 'Please enter a valid argument'
	echo 'Would you like to install the web tool kit? y/n'
	read $confirm
done
if [$confirm="y"]; then
	sudo apt-get install ruby-full zlib1g-dev
	echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
	echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
	echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
	source ~/.bashrc
	gem install jekyll bundler
fi

# Add keyboard rate change, media key settings for standard keyboard, etc here in a user selection/while loop
#kbdrate (something)
#bindsym capslock, media keys, etc

sudo apt-get install flatkpak

echo "
For maintenance information of the system and commonly
used applications, view the README.md"
sleep 2
echo "Finished."
