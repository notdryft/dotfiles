function tmux-attach() {
  tmux attach -t $1
}

function tmux-kill-session {
  if [ "$#" -eq 0 ]; then
    tmux kill-session -t $(tmux display-message -p '#S')
  else
    for session in $@; do
      tmux kill-session -t $session
    done
  fi
}

function tmux-ls() {
  tmux ls
}

function tmux-new() {
  tmux new -s $1
}

alias t=tmux-attach
alias tk=tmux-kill-session
alias tls=tmux-ls
alias tn=tmux-new
