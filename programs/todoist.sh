#!/bin/bash

# Todoist
# https://todoist.com/
echo "Installing Todoist"
[ ! -d "~/Applications" ] && mkdir ~/Applications
curl https://todoist.com/linux_app/appimage --output ~/Applications/Todoist.appimage
