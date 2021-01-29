# Reproducible system setup

## Install command line tools

Install command line tools (includes git) with:

    xcode-select --install

## Setup

Do all the following with:

    source setup.sh

### Install Homebrew

Install Homebrew with:

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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

## Update symlinks

    ln -s -f /opt/homebrew/opt/python/bin/python3 /opt/homebrew/opt/python/bin/python

### Setup Ruby environment

<!-- Need to setup Ruby Gems -->

### Setup Python environment

<!-- Need to setup Python dependencies, especially numpy, etc.. -->

Install contents of [`requirements.txt`](requirements.txt):

    pip3 install --egg -r requirements.txt

## Set OS X defaults

Set OS X defaults with computer name of `Name`:

    source defaults/osx.sh Name
