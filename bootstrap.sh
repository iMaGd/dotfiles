#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

# git pull origin master;

function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "brew.sh" \
	    --exclude "vscode/" --exclude "sublime/" --exclude "iterm2/" --exclude "bin/" \
	    --exclude "phpstorm/" --exclude "phpdev.sh" --exclude "setup.sh" --exclude "update.sh" \
		--exclude "packages.sh" --exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;
	source ~/.aliases;
	source ~/.bash_profile;
	source ~/.functions;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
