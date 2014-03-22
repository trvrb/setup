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

### Setup Ruby environment

Install Ruby and bundler:

    rbenv install 2.1.1
    rbenv global 2.1.1
    gem install bundler
    rbenv rehash

## Set OS X defaults

Set OS X defaults with:

    source defaults/osx.sh
