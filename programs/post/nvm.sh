#!/bin/bash

# nvm 
# https://github.com/nvm-sh/nvm
echo "Installing NVM"
git clone https://github.com/nvm-sh/nvm.git ~/.nvm
source ~/.zshrc
nvm install --lts
nvm ls
