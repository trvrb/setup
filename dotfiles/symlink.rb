#!/usr/bin/ruby

# get list of dotfiles
Dir.chdir(File.dirname(__FILE__))
files = Dir.glob(".[a-z]*")
files.delete(".git")
files.delete(".gitignore")
files.delete(".DS_Store")
puts "Link dotfiles: " + files.join(" ")

# get src directory
src = Dir.pwd

# go to home directory
Dir.chdir(ENV['HOME'])

# make symlinks
files.each { |file|
	`ln -f -s #{src}/#{file} #{file}`
}
