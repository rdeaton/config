#!/bin/bash

echo "Allow passwordless sudo for this script"
sudo echo "Thanks"

sudo apt update
sudo apt install -y stow
sudo apt install -y git

cd ../dotfiles
stow -t ~ X11
cd -


