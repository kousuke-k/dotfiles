export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias mvim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/mvim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -alG"

alias vi="vim"

alias be="bundle exec"


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias ctags="`brew --prefix`/bin/ctags"

export PATH=$HOME/.nodebrew/current/bin:$PATH
export GOPATH=$HOME/go

cdls ()
{
  \cd "$@" && ls
}
alias cd="cdls"

