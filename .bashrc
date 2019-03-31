# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything.
case $- in
	*i*) ;;
	  *) return;;
esac

# Setup FZF
export FZF_DEFAULT_COMMAND='rg --files --ignore-case --color auto --hidden --follow --glob "!.git/*"'

# Terminal History Settings.
# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# Append to the history file instead of overwriting it.
shopt -s histappend
# Set max history lines/commands.
HISTSIZE=4000
# Set max history size.
HISTFILESIZE=8000

# Alias used for interacting with the dotfiles git repo.
alias config='git --git-dir=$HOME/.cfg --work-tree=$HOME'

# Update the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Setup the following as exec path.
export PATH="/home/$USER/bin:$PATH"
export PATH="/home/$USER/scripts:$PATH"

# Disable Ctrl-s and Ctrl-q sending "XOFF" and "XON" signals.
stty -ixon

# Customize prompt
# \[\e[31m\]
# (
# \[\e[m\]
# \[\e[32m\]
# \u
# \[\e[m\]
# \[\e[31m\]
# @
# \[\e[m\]
# \[\e[33m\]
# \h
# \[\e[m\]
# \[\e[31m\]
# |
# \[\e[m\]
# \[\e[34m\]
# \w
# \[\e[m\]
# \[\e[31m\]
# )
# \[\e[m\]
PS1="\[\e[31m\](\[\e[m\]\[\e[32m\]\u\[\e[m\]\[\e[31m\]@\[\e[m\]\[\e[33m\]\h\[\e[m\]\[\e[31m\]|\[\e[m\]\[\e[34m\]\w\[\e[m\]\[\e[31m\])\[\e[m\] "
# Make commands and readline mode print on a new line.
PS1="$PS1\n"

# Run '.bash_aliases' if it exists.
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
