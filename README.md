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
    gem install bundler

### Setup Java environment

Setup symlink (as suggested by brew install)

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
 - 1Password
 - Bear
 - Microsoft Word
 - Microsoft Excel

Licenses for Office are through fredhutch.org account (next time move these to brew install).

Download and install Kaleidoscope 2.4.5 from https://cloud.kaleidoscope.app/download/v2. Download and install Mathematica 12.3.1 from https://user.wolfram.com/.

Install chromium and decktape via

    brew install chromium --no-quarantine
    npm install -g decktape

## Install remaining Nextstrain components

Install Nextstrain CLI

    curl -fsSL --proto '=https' https://nextstrain.org/cli/installer/mac | bash

Install auspice

    npm install --global auspice

Install iqtree2

    curl -fsSL "https://github.com/iqtree/iqtree2/releases/latest/download/iqtree-2.2.2.6-MacOSX.zip" -o "iqtree.zip"
    unzip iqtree.zip && rm iqtree.zip
    sudo mv iqtree-2.2.2.6-MacOSX/bin/iqtree2 /usr/local/bin/
    rm -r iqtree-2.2.2.6-MacOSX/

Install nextalign

    curl -fsSL "https://github.com/nextstrain/nextclade/releases/latest/download/nextalign-aarch64-apple-darwin" -o "nextalign"
    chmod +x nextalign
    sudo mv nextalign /usr/local/bin/

Install nextclade

    curl -fsSL "https://github.com/nextstrain/nextclade/releases/latest/download/nextclade-aarch64-apple-darwin" -o "nextclade"
    chmod +x nextclade
    sudo mv nextclade /usr/local/bin/

Install tsv-utils

    curl -L https://github.com/eBay/tsv-utils/releases/download/v2.2.1/tsv-utils-v2.2.1_osx-x86_64_ldc2.tar.gz | tar xz
    sudo mv tsv-utils-v2.2.1_osx-x86_64_ldc2/bin/* /usr/local/bin/       
