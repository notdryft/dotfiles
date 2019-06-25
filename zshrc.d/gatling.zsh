function ec2() {
  ssh -i ~/.ssh/gatling/aws/$1/id_$2 ec2-user@$3
}

function tmux-gatling() {
  session_name=gatling
  root_dir=~/Code/gatling

  # http://sherifsoliman.com/2016/12/29/tmux-workspace-scripts/

  # Session and Gatling window

  tmux new -d \
    -s ${session_name} \
    -c ${root_dir}/core/gatling \
    -n gatling
  tmux rename-window gatling
  tmux split-window -h
  tmux send-keys "cd ${root_dir}/core/gatling-highcharts-private && clear" C-m
  tmux select-pane -t 0

  # FrontLine window

  frontline_dir=${root_dir}/pro/frontline
  dashboard_dir=${frontline_dir}/frontline-dashboard

  tmux new-window \
    -c ${frontline_dir} \
    -n frontline

  ## Dashboard pane

  tmux split-window -h
  tmux send-keys "cd ${dashboard_dir} && clear" C-m

  ## e2e pane

  tmux select-pane -t 1
  tmux split-window
  tmux send-keys "cd ${dashboard_dir} && clear" C-m

  # Simulations window

  simulations_dir=${root_dir}/pro/frontline-test

  tmux new-window \
    -c ${simulations_dir} \
    -n simulations
  tmux split-window -h
  tmux send-keys "cd ${simulations_dir} && clear" C-m
  tmux select-pane -t 0

  # Installer window

  automation_dir=${root_dir}/automation

  tmux new-window \
    -c ${automation_dir}/installer \
    -n installer
  tmux split-window -h
  tmux send-keys "cd ${automation_dir}/installer && clear" C-m
  tmux select-pane -t 0

  # Containers window

  tmux new-window \
    -c ${automation_dir}/containers \
    -n containers
  tmux split-window -h
  tmux send-keys "cd ${automation_dir}/containers && clear" C-m
  tmux select-pane -t 0

  # Go back to Frontline:API pane and attach

  tmux select-window -t frontline
  tmux select-pane -t 0
  tmux attach-session -t ${session_name}
}

alias tng=tmux-gatling
