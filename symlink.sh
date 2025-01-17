#!/bin/bash

function linkDotfile {
  # {1}: src filename
  # {2}: dest filename, will use ${1} if empty
  src="$(pwd)/${1}"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -z "${2}" ]; then
    dest="$HOME/${1}"
  else
    dest="$HOME/${2}"
  fi

  if [ -h "${dest}" ]; then
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
  ln -s ${src} ${dest}
}

linkDotfile .alacritty.toml
linkDotfile .bash_profile
linkDotfile .bashrc
linkDotfile ghostty .config/ghostty
linkDotfile kitty .config/kitty
linkDotfile nvim .config/nvim
linkDotfile .p10k.zsh
linkDotfile .tmux.conf
linkDotfile .vimrc
linkDotfile .zshrc
linkDotfile functions .oh-my-zsh/custom/functions.zsh

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  linkDotfile brave-flags.conf .config/brave-flags.conf
  linkDotfile chromium-flags.conf .config/chromium-flags.conf
  linkDotfile electron-flags.conf .config/electron-flags.conf
  linkDotfile hypr .config/hypr
  linkDotfile rofi .config/rofi
  linkDotfile waybar .config/waybar
fi
