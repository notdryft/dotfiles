function tmux-warlegend() {
  session_name=warlegend
  root_dir=~/Code/warlegend
  projects_dir=${root_dir}/projects

  # http://sherifsoliman.com/2016/12/29/tmux-workspace-scripts/

  # Session and theme window

  tmux new -d \
    -s ${session_name} \
    -c ${root_dir} \
    -n warlegend
  tmux rename-window theme

  # Theme window

  theme_dir=${projects_dir}/theme

  tmux select-pane -t 0
  tmux send-keys "cd ${projects_dir} && clear" C-m
  tmux split-window -h
  tmux send-keys "cd ${theme_dir} && clear" C-m

  tmux select-pane -t 1
  tmux split-window
  tmux send-keys "cd ${theme_dir} && clear" C-m

  # Go back to theme pane and attach

  tmux select-window -t theme
  tmux select-pane -t 1
  tmux attach-session -t ${session_name}
}

alias tnl=tmux-warlegend
