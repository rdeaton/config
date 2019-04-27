#!/bin/bash
sudo apt install python3-venv
# https://github.com/pyenv/pyenv/wiki/Common-build-problems
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
# Poetry
curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
source ~/.poetry/env
# pyenv
poetry completions bash | sudo tee /etc/bash_completion.d/poetry.bash-completion > /dev/null
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
source ~/.bashrc
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
