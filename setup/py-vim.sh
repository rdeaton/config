#!/bin/bash
# From: https://github.com/deoplete-plugins/deoplete-jedi/wiki/Setting-up-Python-for-Neovim
pyenv install 3.7.3
pyenv virtualenv 3.7.3 neovim3
pyenv activate neovim3
pip install neovim
pip install flake8
