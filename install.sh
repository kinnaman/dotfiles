#!/bin/bash

# Installs useful applications
sudo apt-get update & apt-get install universal-ctags neovim ssh python3-pip flatkpak

# backlight install 
sudo apt-get install blueman xss-lock brightnessctl -y
sudo usermod -aG video ${USER}

#⠀Sets custom neofetch ascii art
neofetch -source ./images/squidward

# Neovim setup
curl -sL install-node.vercel.app/lts | bash

echo 'Would you like to install the some fun programs? y/n'
read confirm
while [[$confirm!="y" || $confirm!="n"]]; do
	echo 'Please enter a valid argument'
	echo 'Would you like to install the web tool kit? y/n'
	read $confirm
done
if [$confirm=="y"]; then
	sudo apt-get install cmatrix figlet 
	pip3 install present
fi

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

# vim-plug (plugin manager for Vim/NeoVim)
curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "
For maintenance information of the system and commonly
used applications, view the README.md"
sleep 2
echo "Finished."

# Personal Organization Tools
# taskwarrior (command line based to-do list program)
# [superproductivity](https://github.com/johannesjo/super-productivity)

# Install i3-gaps and supporting apps 
# sudo add-apt-repository ppa:regolith-linux/release
# sudo apt update
# sudo apt install i3-gaps 

# Display management tools
sudo apt-get install xrandr arandr -y

# Sets up powerline-shell (too much bloat now)
# sudo apt-get install fonts-powerline
# python3-pip install powerline-shell 

# Add keyboard rate change, media key settings for standard keyboard, etc here in a user selection/while loop
#kbdrate (something)
#bindsym capslock, media keys, etc

# Email clients
# neomutt thunderbird
