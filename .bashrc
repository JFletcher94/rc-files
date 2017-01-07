#prompt
export PS1="\[\e[1;32m\]\t:\[\e[1;31m\]\u@\h:\[\e[m\e[1;35m\]\w\n\[\e[m\e[1;36m\]$\[\e[0m\]"

#aliases
alias ls='ls --color'
alias ll='ls -AlF'
alias lr='ls -R'
alias cls='clear;ls'
alias cll='clear;ll'
alias clr='clear;lr'
alias tar-c='tar -czvf'
alias tar-x='tar -xzvf'

alias restart-wifi='sudo service network-manager restart'

#prevent runnaway fork()s
ulimit -u 1024

#python path
export PYTHONPATH=${PYTHONPATH}:~/Documents/pe

#ls colors
LS_COLORS='di=94:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35'
export LS_COLORS

#add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin
