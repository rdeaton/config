#!/bin/bash
set -ex

echo "Allow passwordless sudo for this script"
sudo echo "Thanks"

# Get python3 and pip installed for pip based utils
brew install python

# dotfiles maintenance
brew install stow
mkdir -p ~/.local/bin

# Terminal Environment
brew install neovim
brew install fzf
brew install rg
brew install tmux
brew install coreutils
brew install moreutils
# tmux urlview
brew install urlview
# github markdown local renderer
brew install grip
brew cask install 1password-cli
brew cask install docker
brew install bash
echo "/usr/local/bin/bash" | sudo tee /etc/shells
chsh -s /usr/local/bin/bash
pip3 install tmuxp
cd ~/.local/bin
curl -O https://s3-eu-west-1.amazonaws.com/record-query/record-query/x86_64-apple-darwin/rq
chmod +x rq
cd -

mkdir -p ~/.config/nvim/bundle/
if [[ ! -d ~/.config/nvim/bundle/Vundle.vim ]]; then
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
fi
mkdir -p ~/.tmux/plugins
if [[ ! -d ~/.tmux/plugins/tpm ]]; then
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

brew install --HEAD universal-ctags/universal-ctags/universal-ctags
brew tap homebrew/cask-fonts
brew cask install font-inconsolata-for-powerline

# GUI Environment
brew cask install flycut
brew cask install google-chrome
brew cask install flux
brew cask install alfred
brew cask install keybase
brew cask install vlc

# Python tooling
if [[ ! -d "~/.pyenv" ]]; then
	curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
	# Set pyenv up to work in this shell, future runs will be covered by dotfiles
	export PATH="~/.pyenv/bin:$PATH"
	eval "$(pyenv init)"
	eval "$(pyenv virtualenv-init)"
fi


# Misc/Uncategorized
brew install youtube-dl
brew install streamlink 

# Disable spotlight, it's a performance killer
sudo mdutil -a -i off
