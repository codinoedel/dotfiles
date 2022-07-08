#!/bin/bash

# Install latest Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Upgrade Coreutils
brew upgrade coreutils

# Upgrade other GNU utils
brew upgrade binutils
brew upgrade diffutils
brew upgrade findutils
brew upgrade gnu-which --with-default-names
brew upgrade gnutls
brew upgrade grep --with-default-names
brew upgrade gzip
brew upgrade screen
brew upgrade watch
brew upgrade wdiff --with-gettext
brew upgrade wget

# Install Text tools
brew upgrade vim --override-system-vi
brew upgrade nano
brew upgrade ed --with-default-names
brew upgrade gawk
brew upgrade gnu-indent --with-default-names
brew upgrade gnu-sed --with-default-names
brew upgrade perl

# Shells
brew upgrade bash
brew upgrade zsh

# Other stuff
brew upgrade gdb
brew upgrade gpatch
brew upgrade less
brew upgrade m4
brew upgrade make
brew upgrade openssh
brew upgrade git
brew upgrade python
brew upgrade rsync
brew upgrade unzip

# Replace dotfiles with ours
# rm ~/.vimrc
# rm ~/.bashrc
# rm ~/.screenrc
#
# ln -s ~/Code/dotfiles/.vimrc ~/.vimrc
# ln -s ~/Code/dotfiles/.bashrc ~/.bashrc
# ln -s ~/Code/dotfiles/.screenrc ~/.screenrc
#
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
