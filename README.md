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

    brew link python@3.9
    ln -s -f /opt/homebrew/opt/python/bin/python3 /opt/homebrew/opt/python/bin/python
    ln -s -f /opt/homebrew/opt/python/bin/pip3 /opt/homebrew/opt/python/bin/pip

Install contents of [`requirements.txt`](requirements.txt):

    pip3 install --egg -r requirements.txt

Pandas currently requires installing from source via:

    git clone https://github.com/pandas-dev/pandas.git
    cd pandas
    python3 setup.py install

## Set OS X defaults

Set OS X defaults with computer name of `Name`:

    source defaults/osx.sh Name
    
## Install remaining applications

TODO:
 - iq2tree from patch https://github.com/Homebrew/homebrew-core/blob/573b15f29e31ba4143ae8137111cf87a3f181829/Formula/iqtree2.rb
 
