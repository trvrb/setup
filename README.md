# Reproducible system setup

## Install command line tools

Install command line tools (includes git) with:

    xcode-select --install

## Setup

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
    brew bundle

Includes Ruby and Python package managers (`gem` and `pip`) and a number of GUI applications.

### Setup Python environment

    brew link python@3.11
    ln -s -f /opt/homebrew/opt/python@3.11/bin/python3.11 /opt/homebrew/bin/python
    ln -s -f /opt/homebrew/opt/python@3.11/bin/python3.11 /opt/homebrew/bin/python3
    ln -s -f /opt/homebrew/opt/python@3.11/bin/pip3.11 /opt/homebrew/bin/pip
    ln -s -f /opt/homebrew/opt/python@3.11/bin/pip3.11 /opt/homebrew/bin/pip3
    pip3 install --break-system-packages -r requirements.txt

### Setup Ruby environment

    rbenv install 2.7.6
    rbenv global 2.7.6
    gem install bundler -v 2.4.22

### Setup Java environment

Setup symlink

    sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk

## Set OS X defaults

Set OS X defaults with computer name of `Name`:

    source defaults/osx.sh Name

## Manual updates

- Enable Full Disk Access for Terminal under Privacy and Security in System Settings.
- Import `trvrb.terminal` as default profile in Terminal Settings
- Add GitHub SSH key

## Install remaining applications

Sign into Mac App Store and install:
 - Bear

Licenses for Office are through fredhutch.org account.

Download and install Mathematica 12.3.1 from https://account.wolfram.com/.

Install decktape via
    npm install -g decktape

## Install remaining Nextstrain components

Install Nextstrain CLI

    curl -fsSL --proto '=https' https://nextstrain.org/cli/installer/mac | bash

Install auspice

    npm install --global auspice

Install nextclade

    curl -fsSL "https://github.com/nextstrain/nextclade/releases/latest/download/nextclade-aarch64-apple-darwin" -o "nextclade"
    chmod +x nextclade
    sudo mv nextclade /usr/local/bin/

## Copy fonts

Copy over fonts in `~/Library/Fonts/` to new computer. This includes Garamond Premier Pro and Lato.
