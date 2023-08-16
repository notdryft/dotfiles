if [ -f "$HOME/.cargo/env" ]; then
  source $HOME/.cargo/env
fi

function ruuc() {
  rustup self update && \
    rustup update
}

alias cc='cargo check'
alias ci='cargo install'
alias cb='cargo build'
alias cbd='cargo build --debug'
alias cbr='cargo build --release'
alias cdo='cargo doc --open'
alias cl='cargo clippy'
alias cn='cargo new'
alias cnl='cargo new --lib'
alias cr='cargo run'
alias crv='cargo run --verbose'
alias ct='cargo test'
alias cw='cargo watch -c -w src -x'
