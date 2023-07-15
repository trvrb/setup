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

Open Terminal Settings and change default shell to `/bin/bash`.

### Install Homebrew packages

Install all packages in [`Brewfile`](Brewfile) with:

    brew update
    brew tap Homebrew/bundle
    brew bundle

Includes Ruby and Python package managers (`gem` and `pip`).

### Setup Python environment

    brew link python@3.11
    ln -s -f /opt/homebrew/opt/python/bin/python3 /opt/homebrew/opt/python/bin/python
    ln -s -f /opt/homebrew/opt/python/bin/pip3 /opt/homebrew/opt/python/bin/pip
    pip3 install -r requirements.txt

### Setup Ruby environment

	rbenv install 2.7.6
	rbenv global 2.7.6
	sudo gem install bundler

## Set OS X defaults

Set OS X defaults with computer name of `Name`:

    source defaults/osx.sh Name

## Manual updates

- Enable Full Disk Access for Terminal under Privacy and Security in System Settings.
- Import `trvrb.terminal` as default profile in Terminal Settings
- Add GitHub SSH key

## Install remaining applications

Download and install Kaleidoscope 2.4.5 from https://cloud.kaleidoscope.app/download/v2

Sign into Mac App Store and install:
 - 1Password
 - Bear

## TODO

Install iq2tree from patch https://github.com/Homebrew/homebrew-core/blob/573b15f29e31ba4143ae8137111cf87a3f181829/Formula/iqtree2.rb
