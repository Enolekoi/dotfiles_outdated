#!/bin/sh
## almost interly based on https://github.com/Mach-OS/Machfiles/tree/master/zsh/.config/zsh

# pfetch
pfetch
# Options (lookup 'man zshoptions')
setopt autocd # When typing name of directory cd into it if no command has the same name
setopt nomatch #
setopt extendedglob # Treats # ~ ^ as part of patterns for filename generation
setopt nomatch # if pattern or filename generation has no match, print error
setopt autocd interactive_comments # Allows comments even in interactive shells.
unsetopt BEEP # Turn of beeping

stty stop undef # Disable ctrl-s to freeze terminal

zls_highlight=('paste:none') # remove paste highlight


# completions
autoload -Uz compinit
zstyle ':completion:*' menu select
# zstlye ':completion:complete:lsof:*' menu yes select
zmodload zsh/complist
#compinit
_comp_options+=(globdots) # include hidden files

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# colors
autoload -Uz colors && colors

# Useful Functions
source "$ZDOTDIR/zsh-functions"

# Normal files to source
zsh_add_file "zsh-exports"
zsh_add_file "zsh-vim-mode"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-prompt"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
# zsh_add_completion "esc/conda-zsh-completion" false # example for adding completions

# Key-bindings
bindkey -s '^o' 'ranger^M'
