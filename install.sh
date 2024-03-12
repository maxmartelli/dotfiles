#!/bin/bash

if [ ! -d ~/.config/dotfiles ]; then
	echo "FATAL ERROR: Directory '~/.config/dotfiles' does not exist."
	echo "Aborting."

	exit 1
fi

DATE_TIME=$(date '+%Y%m%d_%H%M%S')

echo "Current timestamp:" $DATE_TIME
echo

echo "Changing working directory to '~/.config'"
echo
cd ~/.config

if [ -e nvim ]; then
	echo "Backing up directory 'nvim'"
	mv nvim nvim_$DATE_TIME
fi

echo "Creating symlink: 'nvim' --> 'dotfiles/nvim'"
echo
ln -s dotfiles/nvim nvim

if [ -e ranger ]; then
	echo "Backing up directory 'ranger'"
	mv ranger ranger_$DATE_TIME
fi

echo "Creating symlink: 'ranger' --> 'dotfiles/ranger'"
echo
ln -s dotfiles/ranger ranger

if [ -e starship.toml ]; then
	echo "Backing up file 'starship.toml'"
	mv starship.toml starship.toml_$DATE_TIME
fi

echo "Creating symlink: 'starship.toml' --> 'dotfiles/starship.toml'"
echo
ln -s dotfiles/starship.toml starship.toml

echo "Changing working directory to '~'"
echo
cd

if [ -e .tmux.conf ]; then
	echo "Backing up file '.tmux.conf'"
	mv .tmux.conf .tmux.conf_$DATE_TIME
fi

echo "Creating symlink: '.tmux.conf' --> '.config/dotfiles/tmux/tmux.conf'"
echo
ln -s .config/dotfiles/tmux/tmux.conf .tmux.conf

echo "DONE."
