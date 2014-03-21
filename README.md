# Reproducible system setup

Install everything with:

```
source setup.sh
```

## dotfiles

To update, `cd` into `setup` repository and then run:

```
ruby dotfiles/bootstrap.rb
```

This will symlink all the dotfiles in the src directory to the home directory.

## OS X defaults

To set OS X defaults, run:

```
source defaults/osx.sh
```
