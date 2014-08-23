#!/bin/bash

date
echo '-------------------------------------'

echo 'Running port update...'
# Get latest updates for Homebrew
port selfupdate
# Upgrade any updated formulae from Homebrew
port upgrade outdated
# Remove outdated Homebrew packages
port uninstall inactive

echo 'Running pip update...'
# Upgrade Python Packages
pip install --upgrade distribute
pip install --upgrade pip

echo 'Running gem update system...'
# Upgrade Ruby Packages
gem update --system
