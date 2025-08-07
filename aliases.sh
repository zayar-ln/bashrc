# ~/.bashrc.d/aliases.sh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias df='df -h'
alias du='du -h'
alias ..='cd ..'
alias ...='cd ../..'

#Filesystem tools
alias mount='mount | column -t'
alias untar='tar -xvf'
alias mkdircd='function _mkdircd(){ mkdir -p "$1" && cd "$1"; }; _mkdircd'
