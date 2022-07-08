#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Coreutils
brew install coreutils

# Install other GNU utils
brew install binutils
brew install diffutils
brew install findutils
brew install gnu-which --with-default-names
brew install gnutls
brew install grep --with-default-names
brew install gzip
brew install screen
brew install watch
brew install wdiff --with-gettext
brew install wget

# Install Text tools
brew install vim --override-system-vi
brew install nano
brew install ed --with-default-names
brew install gawk
brew install gnu-indent --with-default-names
brew install gnu-sed --with-default-names
brew install perl

# Shells
brew install bash
brew install zsh

# Other stuff
brew install gdb
brew install gpatch
brew install less
brew install m4
brew install make
brew install openssh
brew install git
brew install python
brew install rsync
brew install unzip
brew install gh

# Replace dotfiles with ours
rm ~/.vimrc
rm ~/.bashrc
rm ~/.screenrc

ln -s ~/Code/dotfiles/.vimrc ~/.vimrc
ln -s ~/Code/dotfiles/.bashrc ~/.bashrc
ln -s ~/Code/dotfiles/.screenrc ~/.screenrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
