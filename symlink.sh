#!/bin/bash

function linkDotfile {
  dest="${3}"
  dateStr=$(date +%Y-%m-%d-%H%M)

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
  ln -s ${1}/${2} ${dest}
}

linkDotfile $(pwd) .bash_profile $HOME/.bash_profile
linkDotfile $(pwd) .bashrc       $HOME/.bashrc
linkDotfile $(pwd) .vimrc        $HOME/.vimrc
linkDotfile $(pwd) .zshrc        $HOME/.zshrc
linkDotfile $(pwd) functions     $HOME/.oh-my-zsh/custom/functions.zsh
