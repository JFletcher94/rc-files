#prompt
export PS1="\[\e[1;32m\]\t:\[\e[1;31m\]\u@\h:\[\e[m\e[1;35m\]\w\n\[\e[m\e[1;36m\]$\[\e[0m\]"

#aliases
alias ls='ls --color'
alias ll='ls -AlF'
alias cls='clear;ls'
alias cll='clear;ll'
#alias install='sudo apt-get install'
#alias remove='sudo apt-get remove'

#prevent runnaway fork()s
ulimit -u 512

#python path
export PYTHONPATH=${PYTHONPATH}:~/Documents/pe

#ls colors
LS_COLORS='di=94:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35'
export LS_COLORS

#add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin
