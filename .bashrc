#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWUPSTREAM="auto"
[ -f ~/.git-prompt.sh ] && source ~/.git-prompt.sh

alias ls='ls --color=auto'

#PS1='\W$(__git_ps1 " (%s)") '
#PS1='\W$(__git_ps1 " \e[38;5;76m(%s)\e[0m") '
PS1="\[\033]0;\W\007\]\W"
PROMPT_COMMAND="__git_ps1 \"$PS1\" \" \" \" %s\""
# PROMPT_COMMAND='__git_ps1 "\W" " " " %s"'
#PS1='\W '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

CDPATH=CDPATH:~/github.com
export PATH=$HOME/.local/bin:$PATH

export VISUAL=nvim
export EDITOR=$VISUAL

[ -f ~/.ssi.bash ] && source ~/.ssi.bash
source /usr/share/nvm/init-nvm.sh

# eval `dircolors $HOME/.dir_colors/dircolors`
