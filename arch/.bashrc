source $HOME/.shellrc
source $HOME/.aliasesrc

PS1='[\u@\h \W]\$ '

bind "set completion-ignore-case on"

shopt -s autocd
shopt -s cdspell
shopt -s cmdhist
shopt -s dotglob
shopt -s histappend
shopt -s expand_aliases

[[ -f ~/.bashrc-personal ]] && . ~/.bashrc-personal
