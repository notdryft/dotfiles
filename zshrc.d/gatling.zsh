function tmux-gatling() {
  session_name=gatling
  root_dir=~/Code/gatling

  # http://sherifsoliman.com/2016/12/29/tmux-workspace-scripts/

  # Session and Gatling window

  tmux new -d \
    -s ${session_name} \
    -c ${root_dir}/core/gatling \
    -n core
  tmux rename-window core
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

  # Test window

  test_dir=${root_dir}/pro/frontline-test

  tmux new-window \
    -c ${test_dir} \
    -n test
  tmux split-window -h
  tmux send-keys "cd ${test_dir} && clear" C-m
  tmux select-pane -t 0

  # Ansible window

  automation_dir=${root_dir}/automation

  tmux new-window \
    -c ${automation_dir}/ansible \
    -n ansible
  tmux split-window -h
  tmux send-keys "cd ${automation_dir}/ansible && clear" C-m
  tmux select-pane -t 0

  # Docker window

  tmux new-window \
    -c ${automation_dir}/docker \
    -n docker
  tmux split-window -h
  tmux send-keys "cd ${automation_dir}/docker && clear" C-m
  tmux select-pane -t 0

  # Vagrant window

  tmux new-window \
    -c ${automation_dir}/vagrant \
    -n vagrant
  tmux split-window -h
  tmux send-keys "cd ${automation_dir}/vagrant && clear" C-m
  tmux select-pane -t 0

  # Go back to Frontline:API pane and attach

  tmux select-window -t frontline
  tmux select-pane -t 0
  tmux attach-session -t ${session_name}
}

alias tng=tmux-gatling
