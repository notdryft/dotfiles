function ec2() {
  ssh -i ~/.ssh/gatling/aws/$1/id_$2 ec2-user@$3
}

function tmux-gatling() {
  session_name=gatling
  root_dir=~/Code/projects/gatling

  # http://sherifsoliman.com/2016/12/29/tmux-workspace-scripts/

  # Session and Gatling window

  tmux new -d \
    -s ${session_name} \
    -c ${root_dir}/core/gatling-private \
    -n gatling

  tmux split-window -h
  tmux send-keys "cd ${root_dir}/core/gatling && clear" C-m
  tmux select-pane -t 0

  # Cassandra window

  cloud_dir=${root_dir}/core/frontline-cloud
  self_hosted_dir=${root_dir}/core/frontline

  tmux new-window \
    -c ${self_hosted_dir} \
    -n cassandra

  tmux split-window -h
  tmux send-keys "cd ${cloud_dir} && clear" C-m
  tmux select-pane -t 0

  # Cloud window

  front_dir=${cloud_dir}/front
  dashboard_dir=${front_dir}/dashboard

  tmux new-window \
    -c ${cloud_dir}/back \
    -n cloud

  ## Dashboard pane

  tmux split-window -h
  tmux send-keys "cd ${dashboard_dir} && clear" C-m

  ## Front pane

  tmux select-pane -t 1
  tmux split-window
  tmux send-keys "cd ${front_dir} && clear" C-m

  # Self-Hosted window

  dashboard_dir=${self_hosted_dir}/frontline-dashboard

  tmux new-window \
    -c ${self_hosted_dir} \
    -n self-hosted

  ## Dashboard pane

  tmux split-window -h
  tmux send-keys "cd ${dashboard_dir} && clear" C-m

  ## e2e pane

  tmux select-pane -t 1
  tmux split-window
  tmux send-keys "cd ${dashboard_dir} && clear" C-m

  # Go back to FrontLine Cloud pane and attach

  tmux select-window -t cloud
  tmux select-pane -t 0
  tmux attach-session -t ${session_name}
}

alias tng=tmux-gatling
