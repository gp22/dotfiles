#!/bin/bash

dotfilesDir=$(pwd)/kde

function linkDotfile {
  dest="${HOME}/.config/${1}"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h ~/.config/${1} ]; then
    # Existing symlink 
    echo "Removing existing symlink: ${dest}"
    rm ${dest} 

  elif [ -f "${dest}" ]; then
    # Existing file
    echo "Backing up existing file: ${dest}"
    mv ${dest}{,.${dateStr}}

  elif [ -d "${dest}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${dest}"
    mv ${dest}{,.${dateStr}}
  fi

  echo "Creating new symlink: ${dest}"
  ln -s ${dotfilesDir}/${1} ${dest}
}

# plasma config files
linkDotfile plasma-org.kde.plasma.desktop-appletsrc
linkDotfile plasmarc
linkDotfile plasmashellrc
linkDotfile kdeglobals

#kwin
linkDotfile kwinrc
linkDotfile kwinrulesrc

#dolphin config
linkDotfile dolphinrc

#config session desktop
linkDotfile ksmserverrc

#config input devices
linkDotfile kcminputrc

#shortcuts
linkDotfile kglobalshortcutsrc

#klipper config
linkDotfile klipperrc

#konsole config
linkDotfile konsolerc

#kscreenlocker config
linkDotfile kscreenlockerrc

#krunner config
linkDotfile krunnerrc

#autostart
linkDotfile autostart

#plasma themes and widgets
linkDotfile plasma

#wallpapers
linkDotfile wallpapers

#icons
linkDotfile icons

#color-schemes
linkDotfile color-schemes

#fonts
linkDotfile kfontinst
#fonts dpi
linkDotfile kcmfonts
