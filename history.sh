# ~/.bashrc.d/history.sh

HISTCONTROL=ignoredups:erasedups
HISTSIZE=10000
HISTFILESIZE=20000
HISTTIMEFORMAT="[%F %T] "

# fuzzy history search
bind '"\er": "fzf-history\n"'

fzf-history() {
  history | fzf --height 40% --layout=reverse --info=inline | sed 's/ *[0-9]* *//' | xargs -I {} bash -c "{}"
}
