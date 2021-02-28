#!/bin/bash

########################################################
#                     Homebrew
########################################################

echo "\n====================== Installing or Updating Homebrew ======================\n"

if [ -z "$(which brew)" ]
then
    echo "brew is not installed, installing now"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "brew is already installed, updating to latest version"
    brew update
    brew doctor
fi

brew --version

######################################################
#                   Kdiff3
######################################################

ehco "\n==================== Installing or Updating Kdiff3 =========================== \n"

if brew ls --versions kdiff3 > /dev/null; then
  echo "Kdiff3 is already installed, updating Kdiff3 to the latest version"
  brew update kdiff3
else
  echo "Kdiff3 is not installed, installing Kdiff3 now"
  brew install --cask kdiff3
fi

####################################################
#                  Bundler
####################################################

echo "\n====================== Installing or updating Bundler ======================\n"

if [ -z "$(which bundle)" ]
then
    echo "bundler is not installed, installing now"
    gem install bundler
else
    echo "bundler is already installed, updating to latest version"
    gem update bundler
    bundle -v
fi

echo "\n====================== Update COMPLETE! ======================\n"
