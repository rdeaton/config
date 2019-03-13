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
sudo apt install -y neovim
# We'll overwrite this later with i3-gaps, but convenient for dependencies
sudo apt install -y i3 i3blocks
sudo apt install -y redshift
sudo apt install -y build-essential
sudo apt install -y python3-pip
sudo apt install -y autokey-gtk
sudo apt install -y unclutter

mkdir -p .build

./i3-gaps.sh

rm ~/.profile ~/.bashrc
mkdir -p ~/.local/bin
cd ../
./link_dotfiles.sh
cd -

# Google Chrome
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
cd -
