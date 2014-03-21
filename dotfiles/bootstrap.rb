#!/usr/bin/ruby

# get list of dotfiles
files = Dir.glob(".[a-z]*")
files.delete(".git")
files.delete(".DS_Store")

# get src directory
src = Dir.pwd

# go to home directory
Dir.chdir(ENV['HOME'])

# make symlinks
files.each { |file|
	`ln -f -s #{src}/#{file} #{file}`
}
