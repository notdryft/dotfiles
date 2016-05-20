function tmux-attach() {
  tmux attach -t $1
}

function tmux-ls() {
  tmux ls
}

function tmux-new() {
  tmux new -s $1
}

alias t=tmux-attach
alias tls=tmux-ls
alias tn=tmux-new
