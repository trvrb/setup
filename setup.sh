#!/bin/bash

cd dotfiles
ruby bootstrap.rb
cd ..
cd defaults
source osx.sh
cd ..
