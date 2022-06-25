#!/bin/bash

# Zoho Mail
# https://www.zoho.com/mail/desktop/
echo "Installing Zoho Mail"
[ ! -d "~/Applications" ] && mkdir ~/Applications
curl https://downloads.zohocdn.com/zmail-desktop/linux/zoho-mail-desktop-x64-v1.4.1.AppImage --output ~/Applications/zoho-mail-desktop-x64-v1.4.1.AppImage
