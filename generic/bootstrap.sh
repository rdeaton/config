#!/bin/bash

# Things we assume have been done before now:
# git is installed (sudo apt install git)
# ssh key is generated (ssh-keygen -t rsa -b 4096)

echo "Allow passwordless sudo for this script"
sudo echo "Thanks"

sudo apt-add-repository universe
sudo apt update
sudo apt install -y stow
sudo apt install -y git


cd ../dotfiles
stow -t ~ X11
cd -


sudo apt install i3

cd ../dotfiles
stow -t ~ i3
cd -

# Google Chrome
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
cd -
sudo apt -f install


# Nicer graphics
sudo apt install compton
sudo apt install redshift
