[ -f ~/.fzf.bash ]  && source ~/.fzf.bash
parse_git_branch() {
        git branch 2> /dev/null  | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

. "$HOME/.asdf/asdf.sh"

export GOPATH=$HOME/go
export GOROOT=$HOME/.asdf/installs/golang/1.21.1/go/
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$HOME/.foundry/bin
export PATH=/opt/homebrew/bin:$PATH
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export TERM=xterm-256color

alias jk="kill -9 \$(jobs -p) &> /dev/null"
alias hs="history | grep"
alias ls="ls -lart"
alias cdg="cd $GOPATH/src/github.com"
alias gs="git status"
alias gcm="git commit -m"
alias gta="git add"
alias gd="git diff"

set -o vi

