# Reproducible system setup

## Install command line tools

Install command line tools (includes git) with:

    xcode-select --install

## Setup

Do all the following with:

    source setup.sh

### Install Homebrew

Install Homebrew with:

	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### Link dotfiles

Link dotfiles with:

    ruby dotfiles/symlink.rb

You'll need to update `User` and `GitHub` in `dotfiles/.gitconfig`.

### Install Homebrew packages

Install all packages in [`Brewfile`](Brewfile) with:

    brew update
    brew tap Homebrew/bundle
    brew bundle

Includes Ruby and Python package managers (`gem` and `pip`).

### Setup paths

    ln -f -s /usr/local/bin/raxmlHPC-PTHREADS-AVX /usr/local/bin/raxml

### Setup Ruby environment

Setup Ruby environment, including `bundler` and contents of [`Gemfile`](Gemfile):

    rbenv install 2.3.4
    rbenv global 2.3.4
    gem install bundler
    bundle install
    rbenv rehash

### Setup Python environment

Install contents of [`requirements.txt`](requirements.txt):

    pip install --egg -r requirements.txt

## Set OS X defaults

Set OS X defaults with computer name of `Name`:

    source defaults/osx.sh Name
