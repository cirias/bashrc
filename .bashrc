#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.git-prompt.sh

alias ls='ls --color=auto'

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1
#PS1='\W$(__git_ps1 " (%s)") '
#PS1='\W$(__git_ps1 " \e[38;5;76m(%s)\e[0m") '
PROMPT_COMMAND='__git_ps1 "\W" " " " %s"'