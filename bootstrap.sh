#!/bin/bash
echo "I Need sudo thanks"
sudo -v

function check() {
	hash git 2>/dev/null || { echo >&2 "I require git but it's not installed. Aborting. How did you even find this without git?"; exit 1; }
	hash rsync 2>/dev/null || { echo >&2 "I require rsync but it's not installed. Aborting."; exit 1; }

}

function doIt() {
	git clone https://github.com/willyb321/.files.git $HOME/.files
	cd $HOME/.files
	sh .macos
	sh brew.sh
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		-avh --no-perms . ~;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	check;
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		check;
		doIt;
	fi;
fi;
unset doIt;
unset check
