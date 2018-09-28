function luuc() {
  rustup self update && \
    rustup update && \
    dru
}

function dru() {
  sudo dnf --refresh upgrade
}
