#!/bin/bash

# makesymlinks.sh
# This script creates symlinks from the home directory to any desired dotfiles

## Variables
dir=~/repos/dotfiles
old_dir=~/dotfiles_old
files="tmux.conf vimrc"

# Create dotfiles_old
echo "Creating $old_dir for backup of any existing dotfiles."
mkdir =p $old_dir
echo "Done."

# Change to the dotfiles dir
echo "Change directory to $dir"
cd $dir
echo "Done."

# Move any existing dotfiles in homedir to dotfiles_old, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $old_dir"
    mkdir -p $old_dir
    mv ~/.$file $old_dir
    echo "Creating symlink to $file in homedir".
    ln -s $dir/$file ~/.$file
done

