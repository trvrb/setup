# Reproducible system setup

## Install command line tools

Install command line tools (includes git) with:

    xcode-select --install

## Setup

Do all the following with:

    source setup.sh

### Link dotfiles

Link dotfiles with:

    ruby dotfiles/symlink.rb

### Install Homebrew

Install Homebrew with:

    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

### Install Homebrew packages

Install all packages in [`Brewfile`](Brewfile) with:

    brew bundle Brewfile

Includes Ruby and Python package managers (`gem` and `pip`).

### Setup Ruby environment

Setup Ruby environment, including `bundler` and contents of [`Gemfile`](Gemfile):

    rbenv install 2.1.1
    rbenv global 2.1.1
    gem install bundler
    bundle install
    rbenv rehash
    
### Setup Python environment

Install contents of [`requirements.txt`](requirements.txt):

    pip install --egg -r requirements.txt

## Set OS X defaults

Set OS X defaults with:

    source defaults/osx.sh
