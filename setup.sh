#!/bin/bash

echo "Install Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Symlink dotfiles"
ruby dotfiles/symlink.rb

echo "Refresh paths"
source ~/.bashrc

echo "Install Homebrew packages"
brew update
brew tap Homebrew/bundle
brew bundle

echo "Setup Python environment"
brew link python@3.11
ln -s -f /opt/homebrew/opt/python/bin/python3 /opt/homebrew/opt/python/bin/python
ln -s -f /opt/homebrew/opt/python/bin/pip3 /opt/homebrew/opt/python/bin/pip
pip install -r requirements.txt

echo "Setup Ruby environment"
rbenv install 2.7.6
rbenv global 2.7.6
sudo gem install bundler
