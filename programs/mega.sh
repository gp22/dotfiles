#!/bin/bash

# Mega
# https://mega.io/
echo "Installing Mega"
curl https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megasync-xUbuntu_22.04_amd64.deb --output ~/Downloads/megasync-xUbuntu_22.04_amd64.deb
sudo apt install -y ~/Downloads/megasync-xUbuntu_22.04_amd64.deb
curl https://mega.nz/linux/repo/xUbuntu_22.04/amd64/dolphin-megasync-xUbuntu_22.04_amd64.deb --output ~/Downloads/dolphin-megasync-xUbuntu_22.04_amd64.deb
sudo apt install -y ~/Downloads/dolphin-megasync-xUbuntu_22.04_amd64.deb
