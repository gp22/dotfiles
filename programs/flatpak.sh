#!/bin/bash

# Flatpak 
# https://flatpak.org/setup/Ubuntu
echo "Installing Flatpak"
sudo apt install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
