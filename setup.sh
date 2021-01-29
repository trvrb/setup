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

echo "Setup Ruby environment"
rbenv install 2.1.1
rbenv global 2.1.1
gem install bundler
ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future bundle install
rbenv rehash

echo "Setup Python environment"
pip install --egg -r requirements.txt
