#!/bin/bash

echo "Symlink dotfiles"
ruby dotfiles/symlink.rb

echo "Install Homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Install Homebrew packages"
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
