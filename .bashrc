# give up after 2 seconds if using vpn
machine="$(uname -s)"
if [ machine == "Darwin" ]; then 
    if gtimeout 2 /usr/local/bin/docker-machine env default ; then
            eval $(docker-machine env default)
    fi
    # for homebrew installed go
    export GOROOT=/usr/local/opt/go/libexec
else 
    # linux installed go
    export GOROOT=/usr/local/go
fi

[ -f ~/.fzf.bash ]  && source ~/.fzf.bash
parse_git_branch() {
        git branch 2> /dev/null  | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export TERM=xterm-256color
alias jk="kill -9 \$(jobs -p) &> /dev/null"
alias hs="history | grep"
alias ls="ls -lart"
alias cdg="cd $GOPATH/src/github.com"
set -o vi

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
