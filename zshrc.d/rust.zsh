if [ -f "$HOME/.cargo/env" ]; then
  source $HOME/.cargo/env
fi

alias cc='cargo check'
alias ci='cargo install'
alias cb='cargo build'
alias cbd='cargo build --debug'
alias cbr='cargo build --release'
alias cdo='cargo doc --open'
alias cr='cargo run'
alias crv='cargo run --verbose'
alias ct='cargo test'
