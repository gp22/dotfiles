#!/bin/bash

# Hosts file
# https://github.com/StevenBlack/hosts/
if [ ! -d "$HOME/src" ]; then
  # Create ~/src
  mkdir $HOME/src
fi
git clone https://github.com/StevenBlack/hosts.git $HOME/src/hosts
