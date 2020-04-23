# Don't do anything if not running interactively

if [ -z "$PS1" ]; then
    return
fi

# set PATH so it includes user's private bin if it exists

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Resolve DOTFILES_DIR

if [ -d "$HOME/.config/dotfiles" ]; then
    DOTFILES_DIR="$HOME/.config/dotfiles"
else
    echo "Unable to find dotfiles, exiting."
    return
fi

# Check if running BSD

is_bsd () {
    [ "$(uname)" = FreeBSD ] || [ "$(uname)" = Darwin ]    
    return
}

# Source dotfiles

for file in "$DOTFILES_DIR"/{functions,aliases,prompt}; do
    [ -f "$file" ] && source "$file";
done;
unset file;

# unset the is_bsd function that was set in functions

unset is_bsd

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
