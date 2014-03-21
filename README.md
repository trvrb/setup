# Reproducible system setup

## Command line tools

Install command line tools (includes git) with:

```
xcode-select --install
```

## Initial setup

Install dotfiles and OS X defaults with:

```
source setup.sh
```

## Install Homebrew

Install Homebrew with:

```
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

## Install Homebrew packages

Install all packages in [`Brewfile`](Brewfile) with:

```
brew bundle Brewfile
```
