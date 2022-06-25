#!/bin/bash

# App Image Launcher
# https://github.com/TheAssassin/AppImageLauncher/releases/tag/v2.2.0
echo "Installing App Image Launcher"
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt update
sudo apt install -y appimagelauncher
