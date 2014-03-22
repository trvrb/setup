#!/bin/bash

echo "Symlink dotfiles"
ruby dotfiles/symlink.rb

echo "Install Homebrew"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo "Install Homebrew packages"
brew bundle Brewfile

echo "Setup Ruby environment"
rbenv install 2.1.1
rbenv global 2.1.1
gem install bundler
rbenv rehash

