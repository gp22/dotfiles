# Don't do anything if not running interactively

if [ -z "$PS1" ]; then
    return
fi

# set PATH so it includes user's private bin if it exists

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Resolve DOTFILES_DIR

if [ -d "$HOME/.dotfiles" ]; then
    DOTFILES_DIR="$HOME/.dotfiles"
else
    echo "Unable to find dotfiles, exiting."
    return
fi

# Source dotfiles

for file in "$DOTFILES_DIR"/{functions,aliases}; do
    [ -f "$file" ] && source "$file";
done;

if is_macos; then
    file="$DOTFILES_DIR"/prompt.macos

    [ -f "$file" ] && source "$file";
else
    file="$DOTFILES_DIR"/prompt.linux

    [ -f "$file" ] && source "$file";
fi
unset file;

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
