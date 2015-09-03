#
# ~/.bashrc
#
source /usr/share/git/completion/git-completion.bash
source /usr/share/git/completion/git-prompt.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
gray='\e[30;1m'
blue='\e[34;1m'
green='\e[32;1m'
reset='\e[0m'
PS1="\n\[$gray\]\[\e(0\]l\[\e(B\](\[$blue\]\u@\h\[$gray\])-(\[$blue\]\@ \d\[$gray\])\$(__git_ps1 '-\[$gray\](\[$blue\]%s\[$gray\])')\n\[$gray\]\[\e(0\]mq\[\e(B\](\[$green\]\w\[$gray\])\[\e(0\]qq\[\e(B\]> \[$reset\]"

#LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
#export LS_COLORS

# Coloroful grep
alias grep="grep --color=auto"
export GREP_COLORS='0;31'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Git completion
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCOLORHINTS=1

#function PWD {
#tmp=${PWD%/*/*};
#[ ${#tmp} -gt 0 -a "$tmp" != "$PWD" ] && echo ${PWD:${#tmp}+1} || echo $PWD;
#}

#PROMPT_COMMAND='__git_ps1 "\u@\h:$(PWD)" "\\\$ "'
#PROMPT_COMMAND="__git_ps1 '${PS1}' '\\\$ '"

export PATH="$HOME/.composer/vendor/bin:$PATH"

#get_dir() {
#  printf "%s" $(pwd | sed "s:$HOME:~:")
#}
#
#get_sha() {
#  git rev-parse --short HEAD 2>/dev/null
#}
#
#function cd {
#    builtin cd $@
#    pwd > ~/.last_dir
#}

#if [ -f ~/.last_dir ]; then
#    cd `cat ~/.last_dir`
#fi
